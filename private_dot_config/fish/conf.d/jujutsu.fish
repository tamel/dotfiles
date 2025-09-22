function setup_jj
    if command -q jj
        source $XDG_CONFIG_HOME/fish/conf.d/jujutsu/alias.fish
    end
end
