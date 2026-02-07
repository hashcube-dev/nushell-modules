Yea idk lmao

# convert

Use ffmpeg to convert stuffs. Uses Nix Run, so make sure you have that enabled

```nu
convert <input> <target format>
```

# nix

A bunch of commands related to Nix stuff

## pfurl (PreFetchURL)

Gives a URI Hash from a URL

```nu
pfurl <url> (hash)
```

## pfgh (PreFetchGitHub)

Gives you the hash of a GitHub repo. Extremely useful when using `fetchFromGitHub`

```nu
pfgh <owner> <repo> (branch) (hash)
```

## mk-flake

Makes a really basic Nix Flake so you can skip most of the boilerplate.

```nu
mk-flake <name>
```

# fix-ct-ost (Fix Clustertruck OST)

The OST for Clustertruck on Steam plays out of order.
This script fixes it by renaming the files to the correct order (yes this is all that's needed).
Make sure you are in `~/.steam/steam/steamapps/music/Clustertruck OST/OST` when running this script.

# fix-ahit-bside (Fix A Hat in Time B-Side)

A Hat in Time's B-Side OST tracks 1-99 are padded to 2 digits when they should be padded to 3 digits.
This script fixes it by adding a leading zero to tracks that need it.
Make sure you are in `~/.steam/steam/steamapps/music/A Hat in Time - B-Side Soundtrack` when running this script.

# mk-project

Initializes a project with a `flake.nix`, License File, a `README.md`, a `.envrc`, and a `.gitignore`

```nu
mk-project <name> <license>
```

## license

Downloads a license file. PR if you wanna add a new license to this.

```nu
license <license> (filename)
```

## readme

Makes a `README.md` file just like how GitHub would.

```nu
readme <name> (description)
```
