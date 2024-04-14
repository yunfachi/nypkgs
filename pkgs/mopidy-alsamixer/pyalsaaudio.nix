{
  lib,
  python3Packages,
  fetchPypi,
  alsaLib,
}:
python3Packages.buildPythonApplication rec {
  pname = "pyalsaaudio";
  version = "0.10.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-4hF1UAor0xCuOGfnmRY53vweKlySzxufcIMpazRnOKs=";
  };

  doCheck = false;
  buildInputs = [alsaLib];

  meta = with lib; {
    homepage = "http://larsimmisch.github.io/pyalsaaudio/";
    description = "Wrappers for accessing the ALSA API from Python";
    license = licenses.psfl;
    maintainers = with maintainers; [yunfachi];
  };
}
