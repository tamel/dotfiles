status is-interactive; and begin
    if command -q nix-your-shell
        nix-your-shell fish | source
    end
end
