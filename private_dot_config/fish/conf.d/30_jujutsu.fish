status is-interactive; and begin
    if command -q jj
        source $HOME/.config/fish/conf.d/jujutsu/alias.fish
    end
end
