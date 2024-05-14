# https://github.com/NixOS/nixpkgs/pull/306615
{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.nypkgs.services.filebrowser;
in {
  options.nypkgs.services.filebrowser = {
    enable = lib.mkEnableOption "Filebrowser";
    package = lib.mkPackageOption pkgs "filebrowser" {};

    dataDir = lib.mkOption {
      type = lib.types.str;
      default = "/var/lib/filebrowser";
      description = "Directory where Filebrowser stores its data files";
    };
    user = lib.mkOption {
      type = lib.types.str;
      default = "filebrowser";
      description = "User under which Filebrowser runs";
    };
    group = lib.mkOption {
      type = lib.types.str;
      default = "filebrowser";
      description = "Group under which Filebrowser runs";
    };

    listenAddress = lib.mkOption {
      type = lib.types.str;
      default = "0.0.0.0";
      description = "Address that Filebrowser will bind to";
    };
    listenPort = lib.mkOption {
      type = lib.types.port;
      default = 5983;
      description = "Port that Filebrowser will bind to";
    };
    openFirewall = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Open ports in firewall for Filebrowser web interface";
    };
  };

  config = let
    filebrowser-service-tool = pkgs.writeShellScriptBin "filebrowser-service-tool.sh" ''
      if [ ! -f '${cfg.dataDir}/config.json' ]; then
        echo "{}" > '${cfg.dataDir}/config.json' || exit $?
      fi

      if [ ! -f '${cfg.dataDir}/database.boltdb' ]; then
        ${cfg.package}/bin/filebrowser --config='${cfg.dataDir}/config.json' --database='${cfg.dataDir}/database.boltdb' config init 2>&1 >/dev/null || exit $?
      fi

      exec ${cfg.package}/bin/filebrowser --config='${cfg.dataDir}/config.json' --database='${cfg.dataDir}/database.boltdb' "$@"
    '';
  in
    lib.mkIf cfg.enable {
      environment.systemPackages = [filebrowser-service-tool];

      systemd.tmpfiles.rules = ["d '${cfg.dataDir}' 0700 ${cfg.user} ${cfg.group} - -"];

      networking.firewall =
        lib.mkIf cfg.openFirewall {allowedTCPPorts = [cfg.listenPort];};

      systemd.services.filebrowser = {
        description = "Filebrowser";
        after = ["network.target"];
        wantedBy = ["multi-user.target"];

        serviceConfig = {
          Type = "simple";
          User = cfg.user;
          Group = cfg.group;
          ExecStart = pkgs.writeShellScript "filebrowser.sh" ''
            ${lib.getExe filebrowser-service-tool} config set --address=${cfg.listenAddress} || exit $?
            ${lib.getExe filebrowser-service-tool} config set --port=${toString cfg.listenPort} || exit $?
            ${lib.getExe filebrowser-service-tool}
          '';
          Restart = "on-failure";
        };
      };

      users.groups.filebrowser = lib.mkIf (cfg.group == "filebrowser") {};

      users.users.filebrowser = lib.mkIf (cfg.user == "filebrowser") {
        group = cfg.group;
        home = cfg.dataDir;
        isSystemUser = true;
      };
    };
}
