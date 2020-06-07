{ config, lib, pkgs, ... }:

{







	imports =
	[
		./system/hardware-configuration.nix
		./system/bootloader.nix
		./system/networking.nix
		./system/communication.nix
		./system/misc.nix
		./system/users.nix
		# Enable zfs with sane  defaults
		# ./system/zfs.nix
	];

}

