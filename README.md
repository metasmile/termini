# scripts_for_macos
Several small scripts and workflows for mac os automation.

clean_itunes
======
- v1.0
- Requirements: Yosemite(for use JXA)


Clean your broken or dead tracks perfectly.

```
$ clean_itunes
```

watchmv 
======
- v0.1
- Requirements: nodejs, and several modules from npm
- Main Philosophy 
 - very very easy to watch files(minus zero config) 
 - when detect any file/dir -> any action through pipeline

Watching file and moving to specific DIR concurrently. Simple and Useful when you forward only specific file format or mime types.

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
## TODO at v0.2
- [ ] Add preset 'compress' : auto compression(png, pdf, svg... and all supported files) and deploy files.
- ex) ``` watchmv compress --allow-extensions=pdf -> only pdf ```


## Someday
- [ ] Process as persistant worker (start, stop, restart)
- [ ] Support remote env (capistrano+git integration??)
