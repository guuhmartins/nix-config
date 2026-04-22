{ lib }:
{
  # Helper para criar links simbólicos de dotfiles
  mkDotfile = src: dst: {
    source = src;
    target = dst;
  };
}
