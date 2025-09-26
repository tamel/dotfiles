function init_brew
    if test -x /home/linuxbrew/.linuxbrew/bin/brew
        /home/linuxbrew/.linuxbrew/bin/brew shellenv | source
    end
end
