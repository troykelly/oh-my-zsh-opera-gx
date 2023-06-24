# Oh My Zsh Plugin: Opera GX Profiles

This plugin for Oh My Zsh makes it easier to manage your Opera GX profiles. With this plugin, you can start Opera GX with a specific user profile by using the `opgx` command followed by the profile's name. The plugin also implements autocompletion for the profile names so you won't have to type the entire profile name manually.

## Installation

1. Automatic installation:

   Add this snippet to your `.zshrc` file:

   ```bash
   # check for opera-gx-profiles plugin and install if needed
   if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles" ]; then
      git clone https://github.com/troykelly/oh-my-zsh-opera-gx ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles
   fi
   ```

   Then source your `.zshrc`:

   ```bash
   source ~/.zshrc
   ```

2. Manual installation:

   Clone this repository into `$ZSH_CUSTOM/plugins` (by default this is `~/.oh-my-zsh/custom/plugins`)

   ```bash
   git clone https://github.com/troykelly/oh-my-zsh-opera-gx ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/operagxprofiles
   ```

3. Enable plugin:

   Now add the `operagxprofiles` plugin to your plugin list - edit your `.zshrc` file and change `plugins=(...)` to include `operagxprofiles`. The result might look like this:

   ```bash
   plugins=(git operagxprofiles)
   ```

   Source `.zshrc` to take the changes into account:

   ```bash
   source ~/.zshrc
   ```

## Usage

- To start Opera GX with a specific profile, simply type `opgx` followed by the profile's name:

  ```bash
  opgx profile-name
  ```

- As soon as you start typing the `opgx` command and then press the space and Tab keys, Oh My Zsh will suggest available profile names. Continue typing the intended profile name, and the shell will continue to suggest matching profiles.

## Updating

For manual updates, navigate to the `operagxprofiles` plugin's directory (by default this is `~/.oh-my-zsh/custom/plugins/operagxprofiles`), and perform a `git pull` to fetch the latest updates.

For automatic updates each time a new shell session starts, add these lines to your `~/.zshrc` file:

```bash
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