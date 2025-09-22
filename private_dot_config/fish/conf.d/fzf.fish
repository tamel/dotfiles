function setup_fzf
    if command -q fzf
        source $HOME/.config/fish/conf.d/fzf/session_vars.fish

        fzf --fish | source
    end
end
