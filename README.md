# iTerm2 Git Status Bar Script

This repository contains a custom script that provides a more reliable and full-featured Git status bar component for iTerm2. The original "git state" menu bar component would sometimes not work or not show at all. To address this issue, as well as expand upon the original, this custom script was made. This custom script displays various Git information in the iTerm2 status bar, giving users a quick overview of their repository's state.

The script includes information like:

- Git user name and email
- Current branch
- Number of commits ahead and behind the remote branch
- Number of staged commits
- Number of staged commits on the remote repo
- Number of files that differ between the local and remote branch
- Presence of uncommitted changes
- Presence of and Number of untracked files

Additionally, the script allows you to toggle the display of individual features.

## Example
![Example of Git status bar in iTerm2](/example.png?raw=true)

## Installation

1. Copy the contents of the `bashrc_snippet.sh` file from this repository.

2. Open your `~/.bashrc` file using your preferred text editor (e.g., `nano ~/.bashrc`).

3. Paste the copied contents at the end of your `~/.bashrc` file and save the changes.

4. Restart your terminal or run `source ~/.bashrc` to reload the configuration.

## Display Git Information in iTerm2 Status Bar

1. Open iTerm2 and go to Preferences (Cmd + ,).

2. Navigate to the "Profiles" tab.

3. Select the profile you are using (usually "Default").

4. Click on the "Session" subtab.

5. Check the "Status bar enabled" checkbox.

6. Click on the "Configure Status Bar" button.

7. Click on the "+" button to add a new component.

8. Choose "Interpolated String" from the list.

9. In the "String Value" field of the newly added component, enter the following text:
```bash
\(user.gitInfo)
```

10. Close the Preferences window.

The Git information should now be displayed in the iTerm2 status bar.

## Customization

You can toggle the display of individual features by setting the corresponding configuration variable to `true` or `false` in the `~/.bashrc` file. For example, to disable the display of the Git user name and email, set the `GIT_SHOW_USER_INFO` variable to `false`:
```bash
GIT_SHOW_USER_INFO=false
```

Save the `~/.bashrc` file and restart your shell or run `source ~/.bashrc` to reload the changes. The updated Git information will be displayed in the iTerm2 status bar.

## FAQ
### Q: The Git information is not showing up in the iTerm2 status bar. What should I do?
A: Make sure you have followed the installation and setup instructions correctly. If the issue persists, try restarting iTerm2.

### Q: Can I use this script with other shells (e.g., Zsh, Fish)?
A: The current script is written for Bash. You may need to modify the script for compatibility with other shells.

### Q: How can I contribute to this project?
A: Feel free to open an issue or submit a pull request if you have any suggestions, improvements, or fixes for this script.

## License
This project is licensed under the MIT License. See the [LICENSE](/LICENSE) file for details.
