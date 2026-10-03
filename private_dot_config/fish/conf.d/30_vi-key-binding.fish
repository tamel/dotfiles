function insert_jj
    commandline -i jj
end

status is-interactive; and begin
    fish_vi_key_bindings
    bind -M insert -m default jk backward-char force-repaint

    # to insert 'jj' when jj is pressed, instead of just inserting a single 'j' and waiting for the next key press
    bind -M insert jj insert_jj
end
