status is-interactive; and begin
    if command -q zoxide
        zoxide init fish --cmd cd | source
    end
end
