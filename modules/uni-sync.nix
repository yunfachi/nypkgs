{
  config,
  lib,
  ypkgs,
  ...
}:
with lib; let
  cfg = config.nypkgs.hardware.uni-sync;
in {
  meta.maintainers = with maintainers; [yunfachi];

  options.nypkgs.hardware.uni-sync = {
    enable = mkEnableOption (mdDoc "udev rules and software for Lian Li Uni Controllers");
    package = mkPackageOption ypkgs "uni-sync" {};

    devices = mkOption {
      default = [];
      description = mdDoc "List of controllers with configurations.";
      type = types.listOf (types.submodule {
        options = {
          device_id = mkOption {
            type = types.str;
            description = mdDoc "Unique device ID displayed at each startup.";
          };
          sync_rgb = mkOption {
            type = types.bool;
            default = false;
            example = true;
            description = mdDoc "Enable ARGB header sync.";
          };
          channels = mkOption {
            default = [];
            example = literalExpression ''
              [
                {
                  mode = "PWM";
                }
                {
                  mode = "Manual";
                  speed = 100;
                }
                {
                  mode = "Manual";
                  speed = 54;
                }
                {
                  mode = "Manual";
                  speed = 0;
                }
              ]
            '';
            description = mdDoc "List of channels connected to the controller.";
            type = types.listOf (types.submodule {
              options = {
                mode = mkOption {
                  type = types.enum ["Manual" "PWM"];
                  default = "Manual";
                  example = "PWM";
                  description = mdDoc "\"PWM\" to enable PWM sync. \"Manual\" to set speed.";
                };
                speed = mkOption {
                  type = types.int;
                  default = "50";
                  example = "100";
                  description = mdDoc "Fan speed as percentage (clamped between 0 and 100).";
                };
              };
            });
          };
        };
      });
    };
  };

  config = mkIf cfg.enable {
    environment.etc."uni-sync/uni-sync.json".text = mkIf (cfg.devices != []) (builtins.toJSON {configs = cfg.devices;});

    environment.systemPackages = [cfg.package];
    services.udev.packages = [cfg.package];
  };
}
