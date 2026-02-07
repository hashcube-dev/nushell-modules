export def main [
	license,
	filename? = "LICENSE"
] {
	let span = (metadata $license).span;
	let url = match ($license | str downcase) {
		"mit" => "https://mit-license.org/license.txt"
		"apache-2.0" => "https://www.apache.org/licenses/LICENSE-2.0.txt"
		"apache" => "https://www.apache.org/licenses/LICENSE-2.0.txt"
		"gplv2" => "https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt"
		"gpl-2.0" => "https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt"
		"gplv3" => "https://www.gnu.org/licenses/gpl-3.0.txt"
		"gpl-3.0" => "https://www.gnu.org/licenses/gpl-3.0.txt"
		_ => ""
	}
	if ($url == "") {
    error make {
        msg: "Unknown License",
        label: {
            text: "open a pr or something ig",
            span: $span
        }
    }
	}
	http get $url | save $filename
}

def fail [] {

}
