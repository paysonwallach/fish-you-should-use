function __ysu__set_default \
        --no-scope-shadowing \
        --argument-names var default
    if not set -q "$var"
        set --global "$var" "$default"
    end
end
