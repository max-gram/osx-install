include utils/colors.sh

INAME="[I]"

.PHONY: iterm
iterm:
	@echo "${GREEN}${INAME}: -> iTerm & Zsh${NC}"
	./iterm/compile.sh

.PHONY: install
install:
	@echo "${ORANGE}:::::::::::::::::::::::|${NC} ${RED}OS X Quick Install START${NC} ${ORANGE}|:::::::::::::::::::::::${NC}"
	@echo "${BLUE}${INAME}: System settings${NC}"
	### WORK DIR
	# mkdir ~/Work

	### HIDDEN FILES
	# @echo "${CYAN}AppleShowAllFiles: YES${NC}"
	# defaults write com.apple.finder AppleShowAllFiles YES
	# @echo "${CYAN}Finder restart${NC}"
	# sudo killall Finder

	### SSH
	# @echo "${CYAN}Generrating SSH keys{NC}"
	# ssh-keygen -t rsa -b 4096 -C "local@autogen" -N "" #|[BREAKS HERE]
	# eval "$(ssh-agent -s)"
	# ssh-add -K ~/.ssh/id_rsa

	### GIT CONFIG
	# git config --global user.email "you@example.com"
	# git config --global user.name "Your Name"

	### KEYBOARD RESPONSIVENESS
	# @echo "${CYAN}Adjusting keyboard settings{NC}"
	# defaults write com.apple.universalaccess slowKey -int 0 # Disable Slow Keys.
	# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool FALSE # Disable Press-And-Hold for keys.
	# defaults write NSGlobalDomain InitialKeyRepeat -int 10 # Set key repeat triggering delay to even shorter.
	# defaults write NSGlobalDomain KeyRepeat -int 3 # Set key repeat rate to even faster.


	@echo "${BLUE}${INAME}: Software Installation${NC}"
	@echo "${GREEN}-> Homebrew${NC}"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew update

	### BROWSERS
	@echo "${GREEN}-> Opera${NC}"
	brew cask install opera

	@echo "${GREEN}-> Firefox${NC}"
	brew cask install firefox

	@echo "${GREEN}-> Google Chrome${NC}"
	brew cask install google-chrome

	@echo "${GREEN}-> Chromium${NC}"
	brew tap domt4/chromium
	brew cask install mac-chromium
	brew tap buo/cask-upgrade

	### DEV
	@echo "${GREEN}-> Filezilla${NC}"
	brew cask install filezilla

	@echo "${GREEN}-> Sublime-Text${NC}"
	brew cask install sublime-text

	@echo "${GREEN}-> GIT${NC}"
	brew install git

	@echo "${GREEN}-> Python3${NC}"
	brew install python

	@echo "${GREEN}-> NVM${NC}"
	brew install nvm

	@echo "${GREEN}-> VirtualBox${NC}"
	brew cask install virtualbox #|[BREAKS HERE]

	@echo "${GREEN}-> Docker${NC}"
	brew install docker docker-compose

	### MISC
	@echo "${GREEN}-> AppCleaner${NC}"
	brew cask install appcleaner

	@echo "${GREEN}-> Spotify${NC}"
	brew cask install spotify

	@echo "${GREEN}-> Adobe-Reader${NC}"
	brew cask install adobe-reader

	### FINAL STEP
	@echo "${BLUE}${INAME}: Brew Cleanup${NC}"
	brew cleanup

	@echo "${GREEN}${INAME}: -> iTerm & Zsh${NC}"
	# brew cask install iterm2
	./iterm/compile.sh

	@echo "${GREEN}${INAME}: ALL DONE!${NC}"
	cat ~/.ssh/id_rsa.pub

	@echo "${ORANGE}:::::::::::::::::::::::|${NC} ${RED}OS X Quick Install END${NC} ${ORANGE}|:::::::::::::::::::::::${NC}"

.PHONY: postinstall
postinstall:
	@echo "${CYAN}Override postinstall scripsts${NC}"


