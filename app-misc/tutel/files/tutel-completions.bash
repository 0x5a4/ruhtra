#/usr/bin/env bash
_bpaf_dynamic_completion()
{
    COMPREPLY=()

    IFS=$'\n' BPAF_REPLY=($( "$1" --bpaf-complete-rev=1 "${COMP_WORDS[@]:1}" ))
    for line in ${BPAF_REPLY[@]} ; do
        IFS=$'\t' parts=( $line )
        if [[ -n ${parts[1]} ]] ; then
            COMPREPLY+=($( printf "%-19s %s" "${parts[0]}" "${parts[1]}" ))
        else
            COMPREPLY+=(${parts[0]})
        fi
    done
}
complete -F _bpaf_dynamic_completion tutel
