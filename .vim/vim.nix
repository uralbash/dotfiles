with import <nixpkgs> {};

vim_configurable.override {
  # Specifies the vim binary name.
  # E.g. set this to "my-vim" and you need to type "my-vim" to open this vim
  # This allows to have multiple vim packages installed (e.g. with a different set of plugins)
  name = "vim";
  vimrcConfig.plug.knownPlugins = pkgs.vimPlugins;
  vimrcConfig.huyag.pluginDictionaries = [
    { name = "youcompleteme"; }
    {
      names = [
        "Syntastic"
        "Tagbar"
        "fugitive"
        "github:LnL7/vim-nix"
        "github:valloric/youcompleteme"
      ];
    }
  ];
}
