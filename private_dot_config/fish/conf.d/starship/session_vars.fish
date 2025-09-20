if not set -q __STARSHIP_VARS_SOURCED
    set -xg __STARSHIP_VARS_SOURCED 1

    set -gx STARSHIP_CONFIG '/home/tamel/.config/starship.toml'
end
