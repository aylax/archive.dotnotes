# programs :: fzf

{ config, pkgs, ... }:

{
  programs.fzf = {
    enable = true;
    defaultCommand = "rg --files";
    defaultOptions = [ 
      "--height 40%"
      "--layout reverse"
      "--preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -480'"
      ];
  };
}
