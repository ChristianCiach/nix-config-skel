{ config, lib, pkgs, ... }:

{

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

	imports =
	[
		# Choose 1j
		# ./desktop/gnome.nix
		# ./desktop/kde.nix
	]


}

