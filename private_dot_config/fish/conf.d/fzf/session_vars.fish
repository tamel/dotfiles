if not set -q __FZF_VARS_SOURCED
    set -xg __FZF_VARS_SOURCED

    set -gx FZF_ALT_C_COMMAND 'fd --type=d --hidden --strip-cwd-prefix --exclude .git'
    set -gx FZF_ALT_C_OPTS '--preview \'eza --tree --color=always {} | head -200\''
    set -gx FZF_CTRL_T_COMMAND 'fd --hidden --strip-cwd-prefix --exclude .git'
    set -gx FZF_CTRL_T_OPTS '--preview \'bat -n --color=always --line-range :500 {}\''
    set -gx FZF_DEFAULT_COMMAND 'fd --hidden --strip-cwd-prefix --exclude .git'
    set -gx FZF_DEFAULT_OPTS '--color bg:#1e1e2e,bg+:#313244,fg:#cdd6f4,fg+:#cdd6f4,header:#cba6f7,hl:#cba6f7,hl+:#cba6f7,info:#cba6f7,marker:#cba6f7,pointer:#cba6f7,prompt:#cba6f7,spinner:#f5e0dc'
end
