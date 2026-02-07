export def main [
	name,
	description? = "<!-- TODO: Write a description -->",
] {
	$"# ($name)\n\n($description)\n" | save README.md
}
