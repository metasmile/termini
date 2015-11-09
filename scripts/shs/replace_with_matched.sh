# overwrites the file contents only matched string
# replace_with_matched.sh [file_pattern] [strings_pattern(using by sed)]
find . -type f -iname "$1" | while read FILE; do FILENAME="${FILE%.*}"; sed -r -n -e "$2" "$FILE" > "$FILE".new; cp "$FILE".new "$FILE"; rm -f "$FILE".new; done
