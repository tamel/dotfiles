function check_command
    if command -q $argv
        echo "   $argv was found "
        return 0
    else
        echo "!  $argv is not installed " >&2
        return 1
    end
end
