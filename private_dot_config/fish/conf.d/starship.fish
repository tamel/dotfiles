function setup_starship
    if command -q starship
        if test "$TERM" != dumb
            source $XDG_CONFIG_HOME/fish/conf.d/starship/session_vars.fish
            starship init fish | source
        end
    end
end
