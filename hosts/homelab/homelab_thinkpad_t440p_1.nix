{ config, lib, pkgs, pkgs-unstable, modulesPath, ... }:
let
  specificSystemSettings = {
    hostname = "homelabthinkpadt440p1";
    bootMode = "grub";
    bootMountPath = "/boot";
    grubDevice = "/dev/sda";
  };
in
{
  imports =
    [
      (import ./homelab_default.nix { inherit config lib pkgs pkgs-unstable modulesPath specificSystemSettings; })
    ];

  networking.hostName = specificSystemSettings.hostname;

  systemd.targets.sleep.enable = false;
  systemd.targets.suspend.enable = false;
  systemd.targets.hibernate.enable = false;
  systemd.targets.hybrid-sleep.enable = false;
}
