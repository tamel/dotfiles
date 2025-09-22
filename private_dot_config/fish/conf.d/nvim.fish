function setup_nvim
    if command -q nvim
        source $HOME/.config/fish/conf.d/nvim/session_vars.fish
    end
end
