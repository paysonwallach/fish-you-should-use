function __ysu__check_aliases \
        --on-event fish_preexec
    set --local found false
    set --local tokens
    set --local key
    set --local value

    string match --quiet --regex "^sudo" "$argv"; and return

    alias | sort | while read entry
        set entry (string replace "=" "" "$entry")
        set tokens (string split --max 2 " " "$entry")
        set key "$tokens[2]"
        set value (string replace --regex '(?:[\"|\']([^,]*)[\"|\'])' '$1' "$tokens[3]")

        string match --quiet "$YSU__IGNORED_GLOBAL_ALIASES" "$key"; and continue

        if string match --quiet "$value" "$argv"
            __ysu__message "global alias" "$value" "$key"
            set found true
        end
    end

    "$found"; and __ysu__check_hardcore
end
