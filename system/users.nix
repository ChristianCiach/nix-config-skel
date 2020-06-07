{ config, pkgs, ... }:
{







COMMENT THIS WHEN YOUVE EDITED THIS FILE

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jane = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
}
