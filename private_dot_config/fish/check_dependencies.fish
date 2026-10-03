function check -a name cmd
    if not set -q argv[2]
        set -f cmd $name
    end
    echo checking $name
    if command -q $cmd
        echo "   $cmd was found "
        return 0
    else
        echo "!  $cmd is not installed " >&2
        return 1
    end
end

check carapace
check eza
check fzf
check git
check jujutsu jj
check lazygit
check lazyjj
check neovim nvim
check nix-your-shell
check pay-respects
check serie
check starship
check yazi
check zellij
check zoxide
