{config, pkgs, lib, ...}:
{
	boot.supportedFilesystems = [ "zfs" ];

	# -----------------NOTE---------------------
	# Remember to set `zfs set com.sun:auto-snapshot=true <poolname>`
	# Without that this service doesn't work :)
	services.zfs.autoSnapshot = {
		enable = true;
		frequent = 8; # keep the latest eight 15-minute snapshots (instead of four)
		monthly = 6;  # keep six one monthly snapshots (instead of twelve)
	};
}

