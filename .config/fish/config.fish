if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/.asdf/asdf.fish

    abbr -a ls 'exa'
    abbr -a ll 'exa -l'
    abbr -a la 'exa -la'

    abbr -a v 'nvim'
end
