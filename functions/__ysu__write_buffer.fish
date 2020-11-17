function __ysu__write_buffer \
        --argument-names contents
    set --global __BUFFER "$contents$__BUFFER\n"

    set --local position "before"
    if set -q YSU__MESSAGE_POSITION
        set position "$YSU__MESSAGE_POSITION"
    end

    if [ "$position" = "before" ]
        __ysu__flush_buffer
    else if [ "$position" != "after" ]
        echo "\
$RED$BOLD​Unknown value for MESSAGE_POSITION $YSU__MESSAGE_POSITION
Expected value 'before' or 'after'"
        __ysu__flush_buffer
    end
end
