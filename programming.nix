{ config, lib, pkgs, ... }:

{







	imports =
	[
		./editors.nix
		./programming/python.nix
		./programming/scala.nix
		./programming/rust.nix
		./programming/android.nix
	];

}

