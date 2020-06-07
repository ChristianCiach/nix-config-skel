{ config, lib, pkgs, ... }:

{




  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  environment.systemPackages = [
	  pkgs.vlc
  ];


}


