{ config, lib, pkgs, ... }:







# How to use- where you would say pkgs.vscode, you now say pkgs.versioned.unstable.vscode
{



	let 
		nixpkgsTarball = rec {
			# Use howoldis.herokuapp.com for git revisions
			# status.nixos.org
			# https://channels.nix.gsc.io/nixos-19.09/history

			unstable = fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz;
			
			#Github master. Untested and self-build.
			master   = fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz;
		}

	in
		nixpkgs.config = basePackageConfig // {
			packageOverrides = pkgs: rec {
				versioned = builtins.listToAttrs
					( 
						lib.attrsets.mapAttrsToList
							(
								name: value: 
								{
									name = name;
									value = import value{
										config = config.nixpkgs.config;
									};
								}
							)
							nixpkgsTarball
					);
			};
		};

}

