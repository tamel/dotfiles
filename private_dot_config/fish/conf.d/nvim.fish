function setup_nvim
    if command -q nvim
        source $HOME/.config/fish/conf.d/nvim/session_vars.fish
    else if test -x /opt/nvim-linux-x86_64/bin/nvim
        fish_add_path /opt/nvim-linux-x86_64/bin
        source $HOME/.config/fish/conf.d/nvim/session_vars.fish
    end
end
