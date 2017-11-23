# Dictionary Lookup CLI Example

## Usage

DictionaryKit\ Lookup <dict_name> <term> [html]

Prints the entries found in the given dictionary. If `html` is given as the third argument, the entry's HTML is printed instead of plain text. I've found that the built-in Chinese dictionaries return text for English input, but for Chinese or pinyin input will only output a series of `(null)` entries; html is still available in those cases, though.

If no arguments are given, prints the usage message and the list of all available dictionaries.
