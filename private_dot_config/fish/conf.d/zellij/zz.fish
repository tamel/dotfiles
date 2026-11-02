function zz
    # test if fzf is installed
    if not command -q fzf
        echo "fzf not found, but required"
        return 1
    end

    function checkCreateZellijSession
        while true
            read -p 'echo "No zellij session found, create [N]ew session or [Q]uit? (n/Q):"' -l confirm
            switch $confirm
                case N n
                    zellij
                    break
                case '' Q q
                    break
                case '*'
                    echo "Unexpected selection!"
            end
        end
    end

    function createOrAttachZellijSession
        while true
            read -p 'echo "Create [N]ew session, [A]ttach to existing, or [Q]uit? (n/a/Q):"' -l confirm
            switch $confirm
                case N n
                    zellij
                    break
                case A a
                    zellij attach $(zellij ls --short | fzf -1)
                    break
                case '' Q q
                    break
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
end
