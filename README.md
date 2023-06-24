# Oh My Zsh Plugin - Opera GX Profiles

This plugin for Oh My Zsh makes it easier to manage your Opera GX profiles. With this plugin, you can start Opera GX with a specific user profile by using the `opgx` command followed by the profile's name. The plugin also implements autocompletion for the profile names so you won't have to type the entire profile name manually.

## Installation

There are two ways to install this plugin:

### 1. Automatic installation:

Add this snippet to your `.zshrc` file:

```zsh
# Check for the opera-gx-profiles plugin and install if it doesn't exist
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles" ]; then
    git clone --depth=1 https://github.com/troykelly/oh-my-zsh-opera-gx ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles
fi
```

Then, source your `.zshrc`:

```zsh
source ~/.zshrc
```

### 2. Manual installation:

First, clone this repository into `$ZSH_CUSTOM/plugins` (by default this is `~/.oh-my-zsh/custom/plugins`):

```zsh
git clone --depth=1 https://github.com/troykelly/oh-my-zsh-opera-gx ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles
```

### 3. Enable plugin:

Next, add the `operagxprofiles` plugin to your `.zshrc` file plugins list. Here's an example:

```zsh
plugins=(… operagxprofiles)
```

Finally, source your `.zshrc` to apply the changes:

```zsh
source ~/.zshrc
```

## Usage

To start Opera GX with a specific profile, simply type `opgx` followed by the profile's name:

```zsh
opgx profile-name
```

As soon as you start typing the `opgx` command and then press the space and Tab keys, Oh My Zsh will suggest available profile names. Continue typing the intended profile name, and the shell will continue to suggest matching profiles.

## Updating

To manually update the plugin, go to its directory (`~/.oh-my-zsh/custom/plugins/operagxprofiles` by default), and run `git pull`.

To set up automatic updates whenever you start a new shell session, add these lines to your `.zshrc`:

```zsh
# Update custom plugins
custom_plugins_path="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins"
cd "$custom_plugins_path"

for plugin in $(ls "$custom_plugins_path"); do
    if [ -d "$plugin/.git" ]; then
        echo "Updating $plugin"
        cd "$plugin" && git pull
        cd "$custom_plugins_path"
    fi
done

cd - > /dev/null
```

After saving these changes to `.zshrc`, the plugin will automatically make sure it's updated to the latest version whenever you open a new shell session.