{ config, lib, pkgs, ... }:

{








	environment.systemPackages = [
		(
			pkgs.versioned.unstable.python38.withPackages( 
				ps: 
				[ 
					ps.py3status 
					ps.speedtest-cli
					ps.numpy
					ps.pip
				] 
			) 
		)
	] ;
}

