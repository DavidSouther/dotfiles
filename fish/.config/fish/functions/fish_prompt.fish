function fish_prompt
    set -l last_status $status

    set_color green
    printf '%s' (date '+%H:%M:%S')
    set_color normal
    printf ' '

    if git rev-parse --git-dir >/dev/null 2>&1
        set -l branch (git rev-parse --abbrev-ref HEAD)
        set -l repo_root (git rev-parse --show-toplevel)
        set -l repo_name (basename $repo_root)
        set -l rel_path (string replace $repo_root '' $PWD)
        set -l git_email (git config user.email)

        set_color cyan
        printf '%s' $git_email
        set_color normal
        printf ' '

        set_color yellow
        printf '.../%s' $repo_name
        set_color magenta
        printf '[%s]' $branch
        set_color yellow
        printf '%s' $rel_path
        set_color normal
    else
        set_color cyan
        printf '%s@%s' (whoami) (hostname -s)
        set_color normal
        printf ' '

        set_color yellow
        printf '%s' (prompt_pwd)
        set_color normal
    end

    printf ' '

    if test $last_status -ne 0
        set_color red
        printf '(%s)' $last_status
        set_color normal
    end

    set_color --bold
    printf '$ '
    set_color normal
end
