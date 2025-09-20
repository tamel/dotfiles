function setup_yazi
    if command -q yazi
        source $XDG_CONFIG_HOME/fish/conf.d/yazi/alias.fish
    end
end
