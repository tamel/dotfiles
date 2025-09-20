function setup_kitty
    if set -q KITTY_INSTALLATION_DIR
        set -gx KITTY_SHELL_INTEGRATION no-rc
        source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
    end
end
