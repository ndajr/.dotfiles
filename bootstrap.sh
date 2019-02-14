#!/usr/bin/env bash

main() {
	install_brew
	install_git
	install_node
	install_node_packages
	install_vscode
	install_awscli
	install_react_native
}

function install_brew() {
	if ! [ -x "$(command -v brew)" ]; then
		bash -c '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" --no-prompt'
	fi
}

function install_git() {
	if ! [ -x "$(command -v git)" ]; then
		bash -c 'brew install git'
	fi
}

function install_node() {
	if ! [ -x "$(command -v node)" ]; then
		bash -c 'brew install node'
	fi
}

function install_node_packages() {
	if ! [ -x "$(command -v n)" ]; then
		bash -c 'npm install -g n'
	fi

	if ! [ -x "$(command -v sls)" ]; then
		bash -c 'npm install -g serverless'
	fi
}

function install_vscode() {
	if ! [ -x "$(command -v code)" ]; then
		bash -c 'brew cask install visual-studio-code'
	fi
}

function install_awscli() {
	if ! [ -x "$(command -v aws)" ]; then
		bash -c 'brew install awscli'
	fi
}

function install_react_native() {
	if ! [ -x "$(command -v react-native)" ]; then
		bash -c 'brew install watchman'
		bash -c 'npm install -g react-native-cli'
	fi
}

main
