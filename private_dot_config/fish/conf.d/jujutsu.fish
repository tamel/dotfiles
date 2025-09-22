function setup_jj
    if command -q jj
        source $HOME/.config/fish/conf.d/jujutsu/alias.fish
    end
end
