#!/bin/bash

# Configuration variables
GIT_SHOW_USER_INFO=true
GIT_SHOW_BRANCH=true
GIT_SHOW_COMMITS=true
GIT_SHOW_STAGED_COMMITS=true
GIT_SHOW_FILES_DIFF_COUNT=true
GIT_SHOW_UNCOMMITTED_CHANGES=true
GIT_SHOW_UNTRACKED_FILES=true

is_git_repository() {
	git rev-parse --is-inside-work-tree >/dev/null 2>&1 || [ -d .git ]
}

get_git_info() {
	local output=""

	if is_git_repository; then
		local current_branch
		current_branch=$(git symbolic-ref --short HEAD 2>/dev/null)

		if [ "$GIT_SHOW_USER_INFO" = true ]; then
			local user_name
			user_name=$(git config user.name)
			local user_email
			user_email=$(git config user.email)
			output+="($user_name <$user_email>) "
		fi

		if [ "$GIT_SHOW_BRANCH" = true ]; then
			output+="$current_branch "
		fi

		if [ "$GIT_SHOW_COMMITS" = true ]; then
			local commits_ahead
			commits_ahead=$(git rev-list --count --left-only HEAD...@'{u}' 2>/dev/null)
			if [ "$commits_ahead" != "0" ]; then
				output+="↑$commits_ahead "
			fi
		fi

		if [ "$GIT_SHOW_STAGED_COMMITS" = true ]; then
			local commits_behind
			commits_behind=$(git rev-list --count --right-only HEAD...@'{u}' 2>/dev/null)
			if [ "$commits_behind" != "0" ]; then
				output+="↓$commits_behind "
			fi
		fi

		if [ "$GIT_SHOW_FILES_DIFF_COUNT" = true ]; then
			local files_diff_count
			files_diff_count=$(git diff --name-only "$current_branch" "origin/$current_branch" 2>/dev/null | wc -l | tr -d '[:space:]')
			if [ "$files_diff_count" != "0" ]; then
				output+="Δ$files_diff_count "
			fi
		fi

		if [ "$GIT_SHOW_UNCOMMITTED_CHANGES" = true ]; then
			git diff --quiet 2>/dev/null || output+="+ "
		fi

		if [ "$GIT_SHOW_UNTRACKED_FILES" = true ]; then
			local untracked_files
			untracked_files=$(git status -u 2>/dev/null | awk '/^  \(use "git add/,/^nothing added/{if (!/^  \(use "git add/ && !/^nothing added/ && !/^$/) print}' | sed '/^$/d' | wc -l | tr -d '[:space:]')
			if [ "$untracked_files" != "0" ]; then
				output+="✚$untracked_files "
			fi
		fi

	else
		output="Not a Git repository"
	fi

	iterm2_set_user_var gitInfo "$output"
}

# Call get_git_info when the shell prompt is displayed
PROMPT_COMMAND="get_git_info; $PROMPT_COMMAND"
