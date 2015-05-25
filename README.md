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

termini 
======
![termini] (https://www.evernote.com/l/AEHmUXk_0EpHWrmggwLV8K5ro1H61IcT_VYB/image.png "termini")

A smart, fast and easy file hub (or watcher). When you define several actions after watching via specific format or mime types, very useful.

- v0.1
- Requirements: nodejs, and several modules from npm
- Main Philosophy 
 - very very easy to watch files(minus zero config) 
 - when detect any file/dir -> any action through pipeline
- Restrict by mimetypes or extenstion.
- Supported preset : itunes supported types.
- Supported concurrent file operation.

```
Usage: termini [options]... [preset] [PATH SRC] [PATH DEST]

# Auto-import music files:
 > termini itunes [PATH SRC] [PATH to itunes music library]
# Restrict by mimetypes or extenstions:
 > termini --allow-mime-types=audio/mpeg,video/mp4 --allow-extensions=mp3,jpg,gif,mp4 [PATH SRC] [PATH DEST]
 ```
Example for forward music files to itunes.
```
$ termini itunes ~/Downloads/ ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ iTunes.localized
```
## TODO at v0.2
- [ ] Add preset 'compress' : auto compression(png, pdf, svg... and all supported files) and deploy files.
- ex) ``` termini compress --allow-extensions=pdf -> only pdf ```


## Someday
- [ ] Process as persistant worker (start, stop, restart)
- [ ] Support remote env (capistrano+git integration??)
