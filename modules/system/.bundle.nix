{ ... }:
{
  imports =
    [
      ./adb.nix
      ./docker.nix
      ./flatpak.nix
      ./garbage-collect.nix
      ./kernel.nix
      ./nfs.nix
      ./nix-ld.nix
      ./nvidia.nix
      ./pipewire.nix
      ./pulseaudio.nix
      ./pkgs-core.nix
      ./proxy.nix
      ./samba.nix
      ./ssh.nix
      ./systemd.nix
      ./time.nix
      ./xdg.nix
    ];
}
