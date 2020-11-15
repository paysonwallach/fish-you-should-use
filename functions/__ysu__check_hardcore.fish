function __ysu__check_hardcore
    if "$YSU__HARDCORE_MODE"
        __ysu__write_buffer \
            "$BOLD$RED​You Should Use hardcore mode enabled. Use your aliases!"
    end
end
