function __ysu__check_git_aliases \
        --on-event fish_preexec
    string match --quiet "sudo *" "$argv"; and return

    if string match --quiet --regex "git *" "$argv"
        set --local found false
        git config --get-regexp "^alias\..+\$" | sort | while read key value
            set key (string split --max 2 "." "$key")[2]
            set --local escaped_key (string escape --no-quote --style=regex "$key")

            string match --quiet --regex "$escaped_key" "$YSU__IGNORED_GIT_ALIASES"; and continue

            set --local escaped_value (string escape --no-quote --style=regex "$value")

            if string match --quiet --regex "git $escaped_value(?=\s|\$)" "$argv"
                __ysu__message "git alias" "$value" "git $key"
                set found true
            end
        end

        "$found"; and __ysu__check_hardcore
    end
end
