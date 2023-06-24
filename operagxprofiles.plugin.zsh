# Opera GX Profiles Plugin

# Starts Opera GX with the given profile
opgx() {
    # The name of the profile is the first argument
    local profile_name="$1"

    # Check if a profile name was provided
    if [[ -z "$profile_name" ]]; then
        echo "Profile name not provided. Usage: opgx <profile>"
        return 1
    fi

    # Define the directory for the specified profile
    local profile_dir=~/Opera/${profile_name}

    # Create the directory if it doesn't exist
    [[ ! -d "$profile_dir" ]] && mkdir -p "$profile_dir"

    # Start Opera GX with the new user profile
    open -na "Opera GX" --args "--user-data-dir=$profile_dir"
}

# Autocomplete function for Opera GX Profiles
_opgx() {
    # Retrieve list of existing profiles
    local -a profiles
    profiles=("${(@f)$(basename -a ~/Opera/*(/))}")

    # Provide list of profiles for autocompletion
    _describe 'opera profiles' profiles
}

# Attach the autocomplete function to the profile function
compdef _opgx opgx
