termini 
======
![termini] (https://www.evernote.com/l/AEHmUXk_0EpHWrmggwLV8K5ro1H61IcT_VYB/image.png "termini")

A smart, fast and easy file hub (or watcher). When you define several actions after watching via specific format or mime types, very useful.

- v0.3
- Requirements
 - nodejs **(v0.12.0 or higher recommended)** 
 - npm install [svgo](https://github.com/svg/svgo), and several modules via error messages! when you run
- Main Philosophy 
 - very very easy to watch files(minus zero config) 
 - when detect any file/dir -> any action through pipeline
- Restrict by mimetypes or extenstion.
- Supported actions
 - itunes : detect itunes supported types
 - svgmin : detect and compress(avg. 40%~60%) svg files.
 - xcode-resource : auto-import resource file to xcode project bundle.
- Supported concurrent file operation.

```
Usage: termini [options]... [action] [PATH SRC] [PATH DEST]

[Actions]
itunes : detect itunes supported types
svgmin : detect and compress(avg. 40%~60%) svg files.
xcode-resource : auto-import resource file to xcode project bundle.


[Examples]
Auto-import music files:
 $ termini itunes [PATH SRC] [PATH to itunes music library]
Restrict by mimetypes or extenstions:
 $ termini --allow-mime-types=audio/mpeg,video/mp4 --allow-extensions=mp3,jpg,gif,mp4 [PATH SRC] [PATH DEST]
 ```
Forward music files to itunes.
```
$ termini itunes ~/Downloads/ ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ iTunes.localized
```
Auto compress downloaded (from browser) svg files and **overwrite**
```
$ termini svgmin ~/Downloads/ ~/Downloads/
```
Auto import detected image files to xcode project bundle.
```
$ termini xcode-resource ~/Designworking_temp/ ~/Documents/myxcodeproj/Resources/images/
```

## TODO
- [ ] Support install dependency, packaging and deploy npm and homebrew etc..
- [ ] Process as persistant worker (start, stop, restart)
- [ ] Support remote env (capistrano+git integration??)
- [ ] Integrate with alfred workflow
- [ ] Add action 'compress' : auto compression(png, pdf, svg... and all supported files) and deploy files.
- ex) ``` termini compress --allow-extensions=pdf -> only pdf ```
