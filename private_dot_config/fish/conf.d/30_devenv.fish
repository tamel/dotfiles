status is-interactive; and begin
    if command -q devenv
        devenv hook fish | source
    end
end
