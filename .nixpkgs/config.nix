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

  #   packageOverrides = pkgs: rec {
  #     vscode = pkgs.vscode.overrideDerivation (attrs: rec {
  #       version = "1.6.1";
  #       src = pkgs.fetchurl {
  #         url = "https://az764295.vo.msecnd.net/stable/9e4e44c19e393803e2b05fe2323cf4ed7e36880e/code-stable-code_1.6.1-1476373175_amd64.tar.gz";
  #         sha256 = "05kbi081ih64fadj4k74grkk9ca3wga6ybwgs5ld0bal4ilw1q6i";
  #       };
  #     });
  #   };
  #
  # packageOverrides = pkgs: rec {
  #   vscode = pkgs.vscode.overrideDerivation (oldAttrs: {
  #     version = "1.5.3";
  #     src = pkgs.fetchurl {
  #       url = "https://vscode-update.azurewebsites.net/1.6.1/linux-x64/stable";
  #       sha256 = "0al5m8rh7fp2j7lmwda5qm1nmsldn4nf97dag5287qnbc1hi3pf0";
  #     };
  #   });
  # };
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
