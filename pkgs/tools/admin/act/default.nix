{lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "act";
  version = "0.1.3";

  src = fetchFromGitHub {
    owner = "nektos";
    repo = "act";
    rev = "v0.1.3";
    sha256 = "1y1bvk93dzsxwjakmgpb5qyy3lqng7cdabi64b555c1z6b42mf58";
  };

  modSha256 = "1c8bx9jb14f70aihnjbzk1js110s9r4nkdfps27kphn65bw2pxn0";

  subPackages = [ "." ];

  buildFlags = [ "-tags netgo" "-tags release" ];

  meta = with lib; {
    description = "Run your GitHub Actions locally!";
    homepage = "https://github.com/nektos/act";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
