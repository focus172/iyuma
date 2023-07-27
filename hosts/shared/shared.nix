{ config, pkgs, ... }:
let
    homeDirectory = "/home/${config.users.users.focus.name}";
in {

  # boot.plymouth.enable = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  time.timeZone = "America/Tijuana";

  # Enable networking
  networking.networkmanager.enable = true;

  programs.dconf.enable = true;
  programs.hyprland.enable = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    useXkbConfig = false;
  };

  services.syncthing.enable = true;
  services.syncthing.user = "focus";
  services.syncthing.dataDir = "/home/focus/";

  # Enable CUPS to print documents.
  # services.printing.enable = true;


  # Enable sound.
  sound.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    # alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  # programs.neovim = {
  #   enable = false;
  #   defaultEditor = true;
  #   withRuby = false;
  #   withNodeJs = false;
  #   withPython3 = false;
  # };


  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [
      (nerdfonts.override {fonts = ["Hack" "Mononoki"];})
      # fira-code
      # fira-code-symbols
    ];

    fontconfig = {
      defaultFonts = {
        # serif = [ "Vazirmatn" "Ubuntu" ];
        # sansSerif = [ "Vazirmatn" "Ubuntu" ];
        # monospace = [ "Ubuntu" ];
      };
    };
  };


  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.focus = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "focus";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" ];
    packages = with pkgs; [
      rofi-wayland rofi-calc # rofi-pass
      ncmpcpp playerctl # clerk 
      foot alacritty
      pass 
      bat
      imv
      ripgrep
      exa
      starship
      go
      pfetch
      gitui
      alejandra
      bottom
      handlr-regex
      ripgrep
      fzf
      gitoxide
      jql
      yt-dlp
      bacon
      imagemagick
      # neo-cowsay
      # glow
      # gum
      # slides
      # charm
      # skate
      # vhs
      lf
      rustup
      zig
      mpc-cli
      swww
      # blender
      zellij tmux
      # acpi
      # wl-gammactl
      # wlsunset
      # hyprpicker
      pavucontrol
      brightnessctl
      alsa-utils
      grim
      libreoffice-fresh
      mako
      slurp
      wl-clipboard
      brave
      discord
      # swaylock-effects
      # swayidle
      nginx
      killall
      cava
      tty-clock
      # ani-cli
      mpv
      clang
      btar
      fd
      file
      obsidian
      obs-studio
      gnumake just
      unzip

      # Neovim deps
      stylua lua-language-server
      neovim
    ];
  };

  services.mpd = {
    enable = true;
    user = "focus";
    # musicDirectory = "${homeDirectory}/aud";
    # playlistDirectory = "${homeDirectory}/.config/mpd/playlists";
    extraConfig = ''
      audio_output {
        type "alsa"
        name "alsa"
        device "hw:0,0"
        mixer_type "software"
      }
    '';
  };

  security.polkit.enable = true;
  security.sudo.enable = true;

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      trusted-users = [ "root" "@wheel" ];
      auto-optimise-store = true;
      warn-dirty = false;
    };
    gc = {
      automatic = true;
      options = "--delete-older-than 5d";
    };
    optimise.automatic = true;
  };


  # virtualisation.virtualbox.guest.enable = true;

  xdg.portal.enable = true;
  # xdg.portal.wlr.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  nixpkgs.config.allowUnfree = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  environment.systemPackages = with pkgs; [
    git

    ## Only choose 1:
    # busybox
    coreutils
  ];
}
