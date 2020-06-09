{ config, ... }:

{
  fileSystems."/mnt/The_Vault" = {
    device = "//192.168.0.101/TheVault";
    fsType = "cifs";
    options = let
    automount_opts = "rw,nosetuids,cifsacl,uid=1000,gid=100,x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
  };


  fileSystems."/mnt/Secondary_Storage" = {
    device = "//192.168.0.101/SecondaryStorage/";
    fsType = "cifs";
    options = let
    automount_opts = "rw,nosetuids,cifsacl,uid=1000,gid=100,x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];

  };
}
