function __ysu__check_git_aliases \
        --on-event fish_preexec
    set --local tokens (string split --max 2 " " "$argv")

    string match --quiet --regex "^sudo" "$argv"; and return

    if string match --quiet --regex "^git" "$argv"
        set --local found false
        git config --get-regexp "^alias\..+\$" | sort | while read key value
            set key (string split --max 2 "." "$key")[2]

            string match --quiet "$YSU__IGNORED_GIT_ALIASES" "$key"; and continue

            if string match --quiet "git $value" "$argv"
                __ysu__message "git alias" "$value" "git $key"
                set found true
            end
        end

        "$found"; and __ysu__check_hardcore
    end
end
