status is-interactive; and begin
    if command -q zellij
        if set -q ZELLIJ
        else
            zellij
            kill $fish_pid
        end
    end
end
