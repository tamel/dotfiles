function eza
    command eza --icons auto --git $argv
end

function ls
    eza $argv
end

function la
    eza -a $argv
end

function ll
    eza -l $argv
end

function lla
    eza -la $argv
end

function lt
    eza --tree $argv
end
