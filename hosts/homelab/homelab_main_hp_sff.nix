{ config, lib, pkgs, pkgs-unstable, modulesPath, ... }:
let
  specificSystemSettings = {
    hostname = "homelabmainhpsff";
    bootMode = "uefi";
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
}
