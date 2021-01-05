function __ysu__check_aliases \
        --on-event fish_preexec
    string match --quiet "sudo *" "$argv"; and return

    set --local found false
    alias | sort | while read entry
        set entry (string replace "=" "" "$entry")
        set --local tokens (string split --max 2 " " "$entry")
        set --local key "$tokens[2]"
        set --local escaped_key (string escape --no-quote --style=regex "$key")

        string match --quiet --regex "$escaped_key" "$YSU__IGNORED_GLOBAL_ALIASES"; and continue

        set --local value (string replace --regex '(?:[\"|\']([^,]*)[\"|\'])' '$1' "$tokens[3]")
        set --local escaped_value (string escape --no-quote --style=regex "$value")

        if string match --quiet --regex "(?<=^|\s)$escaped_value(?=\s|\$)" "$argv"
            __ysu__message "alias" "$value" "$key"
            set found true
        end
    end

    "$found"; and __ysu__check_hardcore
end
