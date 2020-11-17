function __ysu__flush_buffer \
        --on-event fish_prompt
    if test -n "$__BUFFER"
        printf "$__BUFFER"
    end

    set __BUFFER ""
end
