{
  allowUnfree = true;

  # virtualbox.enableExtensionPack = true;
  vim = {
    python = true;
    python3 = true;
    netbeans = false;
    ftNixSupport = true;
  };

  firefox = {
    enableAdobeFlash = true;
  };

  packageOverrides = pkgs: rec {
    vscode = pkgs.vscode.overrideDerivation (oldAttrs: {
      version = "1.5.3";
      src = pkgs.fetchurl {
        url = "https://az764295.vo.msecnd.net/stable/5be4091987a98e3870d89d630eb87be6d9bafd27/code-stable-code_1.5.3-1474533365_amd64.tar.gz";
        sha256 = "0al5m8rh7fp2j7lmwda5qm1nmsldn4nf97dag5287qnbc1hi3pf0";
      };
    });
  };
}
# { config, pkgs, ... }:
#   let unstablePkgs = import <nixos-unstable> { };
#   in {
#    allowUnfree = true;
#    firefox = {
#      enableAdobeFlash = true;
#    };
    # nixpkgs.config.packageOverrides = self: {
    #   teamviewer = unstablePkgs.teamviewer;
    # };
  # }
