# Only execute this file once per shell.
set -q __fish_config_sourced; and exit
set -g __fish_config_sourced 1

setup_session_vars

fish_config theme choose "Catppuccin Mocha"
setup_vim-key-binds

status is-login; and begin

    # Login shell initialisation

end

status is-interactive; and begin

    #check if brew is installed and initialize if it is
    init_brew

    # configure eza
    setup_eza

    # configure jujutsu
    setup_jj

    # configure lazygit
    setup_lazygit

    # configure lazyjj
    setup_lazyjj

    # configure fzf
    setup_fzf

    # configure zoxide
    setup_zoxide

    # configure starship
    setup_starship

    # configure pay-respects
    setup_pay-respects

    # configure yazi
    setup_yazi

    # configure kitty shell integration
    setup_kitty

    # configure neovim
    setup_nvim

    # configure carapace
    setup_carapace

end
