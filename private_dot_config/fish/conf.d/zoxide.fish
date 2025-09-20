function setup_zoxide
    if command -q zoxide
        zoxide init fish --cmd cd | source
    end
end
