# scripts_for_macos
Several small scripts and workflows for mac os automation.

clean_itunes
======
- v1.0
- Requirements: Yosemite


Clean your broken or dead tracks perfectly.

```
$ clean_itunes
```

watchmv 
======
- v0.1
- Requirements: nodejs, and several modules from npm

Watching file and moving to specific DIR concurrently. Simple and Useful when you forward only specific handle file format or mime types.

- Restrict by mimetypes or extenstion.
- Supported preset : itunes supported types.
- Supported concurrent file operation.

```
Usage: watchmv [options]... [preset] [PATH SRC] [PATH DEST]

# Auto-import music files:
 > watchmv itunes [PATH SRC] [PATH to itunes music library]
# Restrict by mimetypes or extenstions:
 > watchmv --allow-mime-types=audio/mpeg,video/mp4 --allow-extensions=mp3,jpg,gif,mp4 [PATH SRC] [PATH DEST]
 ```
Example for forward music files to itunes.
```
$ watchmv itunes ~/Downloads/ ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ iTunes.localized
```
