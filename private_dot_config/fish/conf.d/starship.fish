function setup_starship
    if command -q starship
        if test "$TERM" != dumb
            source $HOME/.config/fish/conf.d/starship/session_vars.fish
            starship init fish | source
        end
    end
end
