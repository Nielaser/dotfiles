{
  pkgs,
  config,
  ...
}: {
  programs.sway = {
    enable = true;
    packages = pkgs.swayfx;
  };
}
