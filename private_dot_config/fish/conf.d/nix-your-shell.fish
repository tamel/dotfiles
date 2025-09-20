function setup_nix-your-shell
    if command -q nix-your-shell
        nix-your-shell fish | source
    end
end
