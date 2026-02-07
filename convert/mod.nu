export def main [
  start,
  target
] {
  let targetFilepath = $start | split row "." | drop 1 | append $target | str join "."

  nix run nixpkgs#ffmpeg -- -i $start $targetFilepath
}
