function zz
    # test if fzf is installed
    if not command -q fzf
        echo "fzf not found, but required"
        return 1
    end

    function createNamedZellijSession
        read -p 'echo "Enter session name: "' -l name
        or return 130
        if test -z "$name"
            zellij
        else
            zellij -s $name
        end
        return $status
    end

    function checkCreateZellijSession
        while true
            read -p 'echo "No zellij session found, create [N]ew session or [Q]uit? (n/Q):"' -l -n 1 selection
            or return 130
            switch $selection
                case N n
                    createNamedZellijSession
                    return $status
                case '' Q q
                    return 0
                case '*'
                    echo "Unexpected selection!"
            end
        end
    end

    function createOrAttachZellijSession
        while true
            read -p 'echo "Create [N]ew session, [A]ttach to existing, or [Q]uit? (n/a/Q):"' -l -n 1 selection
            or return 130
            switch $selection
                case N n
                    createNamedZellijSession
                    return $status
                case A a
                    set -l target (zellij ls --short | fzf -1)
                    or return $status
                    zellij attach $target
                    return $status
                case '' Q q
                    return 0
                case '*'
                    echo "Unexpected selection!"
            end
        end
    end

    zellij ls 2>/dev/null
    if test $status -ne 0
        checkCreateZellijSession
    else
        echo
        createOrAttachZellijSession
    end
    return $status
end
