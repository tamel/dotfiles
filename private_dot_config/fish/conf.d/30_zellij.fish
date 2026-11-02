status is-interactive; and begin
    if command -q zellij
        source $HOME/.config/fish/conf.d/zellij/zz.fish
    end
end
