function check_dependencies
    for file in $HOME/.config/fish/conf.d/*/check_dependencies.fish
        echo checking (basename (dirname $file))\:
        fish $file
    end
end
