{ ... }: {
  # This is required information for home-manager to do its job
  home = {
    stateVersion = "23.11";
    username = "<username>";
    homeDirectory = "/Users/<username>";
    packages = [

    ];
  };

  # This is to ensure programs are using ~/.config rather than
  # /Users/<username/Library/whatever
  xdg.enable = true;

  # Enable home-manager
  programs.home-manager.enable = true;

  # I use fish, but bash and zsh work just as well here. This will setup
  # the shell to use home-manager properly on startup, neat!
  programs.fish.enable = true;
}
