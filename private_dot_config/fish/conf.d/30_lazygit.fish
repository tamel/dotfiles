status is-interactive; and begin
    if command -q lazygit
        source $HOME/.config/fish/conf.d/lazygit/alias.fish
        source $HOME/.config/fish/conf.d/lazygit/session_vars.fish
    end
end
