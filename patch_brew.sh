#!/bin/bash
BREW_SH=/usr/local/Homebrew/Library/Homebrew/brew.sh 
touch -r $BREW_SH brew.timestamp
sed -i '' 's#"$(/usr/bin/sw_vers -productVersion)"#"10.14.1"#' $BREW_SH
touch -r brew.timestamp $BREW_SH
rm brew.timestamp
brew "$@"
