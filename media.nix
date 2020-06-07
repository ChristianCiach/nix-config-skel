{ config, lib, pkgs, ... }:

{




  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  environment.systemPackages = [
	pkgs.vlc
	( pkgs.wine.override { 
		wineRelease = "unstable"; 
		openglSupport = true;
		pulseaudioSupport = true;
	} )



}


