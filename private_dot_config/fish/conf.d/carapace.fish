function setup_carapace
    if command -q carapace
        carapace _carapace fish | source
    end
end
