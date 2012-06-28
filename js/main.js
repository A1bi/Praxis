function deobfuscate(text) {
	return text.replace(/z|q|w|u/g, "");
}