function check_dependencies
    for file in $XDG_CONFIG_HOME/fish/conf.d/*/check_dependencies.fish
        echo checking (basename (dirname $file))\:
        fish $file
    end
end
