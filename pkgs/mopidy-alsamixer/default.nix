{
  lib,
  python3Packages,
  fetchPypi,
  mopidy,
  callPackage,
  pyalsaaudio ? callPackage ./pyalsaaudio.nix {},
}:
python3Packages.buildPythonApplication rec {
  pname = "Mopidy-ALSAMixer";
  version = "2.0.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-5XDpQHXDwHoxmqQUq6pzCKTBpJJ4NJwIOIgDu/D7cNw=";
  };

  propagatedBuildInputs = [
    mopidy
    pyalsaaudio
    python3Packages.pykka
  ];
  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/mopidy/mopidy-alsamixer";
    description = "Mopidy extension for ALSA volume control";
    license = licenses.asl20;
    maintainers = with maintainers; [yunfachi];
  };
}
