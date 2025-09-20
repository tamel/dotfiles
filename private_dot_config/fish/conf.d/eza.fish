function setup_eza
    if command -q eza
        source $XDG_CONFIG_HOME/fish/conf.d/eza/alias.fish
    end
end
