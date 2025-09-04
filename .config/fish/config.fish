if status is-interactive
    abbr -a !! --position anywhere --function last_history_item
    abbr -a g git
    abbr -a gsw git switch
    abbr -a ga git add
    abbr -a ga. git add .
    abbr -a gs git status
    abbr -a gc git commit
    abbr -a v nvim
    abbr -a c cargo
    abbr -a ct cargo test
    abbr -a cb cargo build
    abbr -a cbr cargo build --release
end

eval "$(/opt/homebrew/bin/brew shellenv)"
