use license
use ../nix/mk-flake
use readme

export def main [
	name,
	license,
] {
	mkdir $name
	cd $name
	mk-flake $name
	license $license
	readme $name
	"use flake" | save .envrc
	"result\n.direnv" | save .gitignore
}
