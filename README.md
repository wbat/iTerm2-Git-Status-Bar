# iTerm2 Git Status Bar Script

[![bash_ci](https://github.com/wbat/iTerm2-Git-Status-Bar/workflows/bash_ci/badge.svg
)](https://github.com/wbat/iTerm2-Git-Status-Bar/actions/workflows/bash_ci.yml)
[![made-with-bash](https://img.shields.io/badge/-Made%20with%20Bash-1f425f.svg?style=plastic&logo=image%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw%2FeHBhY2tldCBiZWdpbj0i77u%2FIiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8%2BIDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE3MDg2QTAyQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE3MDg2QTAzQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTcwODZBMDBBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTcwODZBMDFBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciLz4gPC9yZGY6RGVzY3JpcHRpb24%2BIDwvcmRmOlJERj4gPC94OnhtcG1ldGE%2BIDw%2FeHBhY2tldCBlbmQ9InIiPz6lm45hAAADkklEQVR42qyVa0yTVxzGn7d9Wy03MS2ii8s%2BeokYNQSVhCzOjXZOFNF4jx%2BMRmPUMEUEqVG36jo2thizLSQSMd4N8ZoQ8RKjJtooaCpK6ZoCtRXKpRempbTv5ey83bhkAUphz8fznvP8znn%2B%2F3NeEEJgNBoRRSmz0ub%2FfuxEacBg%2FDmYtiCjgo5NG2mBXq%2BH5I1ogMRk9Zbd%2BQU2e1ML6VPLOyf5tvBQ8yT1lG10imxsABm7SLs898GTpyYynEzP60hO3trHDKvMigUwdeaceacqzp7nOI4n0SSIIjl36ao4Z356OV07fSQAk6xJ3XGg%2BLCr1d1OYlVHp4eUHPnerU79ZA%2F1kuv1JQMAg%2BE4O2P23EumF3VkvHprsZKMzKwbRUXFEyTvSIEmTVbrysp%2BWr8wfQHGK6WChVa3bKUmdWou%2BjpArdGkzZ41c1zG%2Fu5uGH4swzd561F%2BuhIT4%2BLnSuPsv9%2BJKIpjNr9dXYOyk7%2FBZrcjIT4eCnoKgedJP4BEqhG77E3NKP31FO7cfQA5K0dSYuLgz2TwCWJSOBzG6crzKK%2BohNfni%2Bx6OMUMMNe%2Fgf7ocbw0v0acKg6J8Ql0q%2BT%2FAXR5PNi5dz9c71upuQqCKFAD%2BYhrZLEAmpodaHO3Qy6TI3NhBpbrshGtOWKOSMYwYGQM8nJzoFJNxP2HjyIQho4PewK6hBktoDcUwtIln4PjOWzflQ%2Be5yl0yCCYgYikTclGlxadio%2BBQCSiW1UXoVGrKYwH4RgMrjU1HAB4vR6LzWYfFUCKxfS8Ftk5qxHoCUQAUkRJaSEokkV6Y%2F%2BJUOC4hn6A39NVXVBYeNP8piH6HeA4fPbpdBQV5KOx0QaL1YppX3Jgk0TwH2Vg6S3u%2BdB91%2B%2FpuNYPYFl5uP5V7ZqvsrX7jxqMXR6ff3gCQSTzFI0a1TX3wIs8ul%2Bq4HuWAAiM39vhOuR1O1fQ2gT%2F26Z8Z5vrl2OHi9OXZn995nLV9aFfS6UC9JeJPfuK0NBohWpCHMSAAsFe74WWP%2BvT25wtP9Bpob6uGqqyDnOtaeumjRu%2ByFu36VntK%2FPA5umTJeUtPWZSU9BCgud661odVp3DZtkc7AnYR33RRC708PrVi1larW7XwZIjLnd7R6SgSqWSNjU1B3F72pz5TZbXmX5vV81Yb7Lg7XT%2FUXriu8XLVqw6c6XqWnBKiiYU%2BMt3wWF7u7i91XlSEITwSAZ%2FCzAAHsJVbwXYFFEAAAAASUVORK5CYII%3D)](https://www.gnu.org/software/bash/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/wbat/iTerm2-Git-Status-Bar/graphs/commit-activity)
[![Maintainer](https://img.shields.io/badge/maintainer-@WBAT-blue)](https://github.com/wbat/)
[![GitHub license](https://badgen.net/github/license/wbat/iTerm2-Git-Status-Bar)](https://github.com/wbat/iTerm2-Git-Status-Bar/blob/master/LICENSE)
[![GitHub branches](https://badgen.net/github/branches/wbat/iTerm2-Git-Status-Bar)](https://github.com/wbat/iTerm2-Git-Status-Bar/)

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
