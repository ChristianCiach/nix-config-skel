{ config, pkgs, ... }:

{
	programs.ssh.enable=true;



	environment.systemPackagse = [ 
		pkgs.aerc 
		pkgs.firefox
	];
}
