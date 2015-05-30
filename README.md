termini 
======
![termini] (https://www.evernote.com/l/AEHmUXk_0EpHWrmggwLV8K5ro1H61IcT_VYB/image.png "termini")

A easy, smart utility to watch files/directories and perform an various, useful action when they change. And you can define specific format or mime types.

For your real life.

### Requirements
 - nodejs **(v0.12.0 or higher recommended)** 
 - npm install [svgo](https://github.com/svg/svgo), and several modules via error messages! when you run

### Github has plenty numbers of file watcher, but why I made
- I wanted a easiest file watcher **based on only pre-defined actions for my real code-writer life**. It should make anti-versatile usability.
- I wanted to transfer various frequently used file that are downloaded from the browser to the path that I have set.
- Get out pattern character and glob. I just wanted to use mimetypes or extenstion only.
- And I wanted a **fast copier** that is support concurrent file operation.

### Usage
```
$ termini [options]... [action] [SRC FILE PATH] [DEST DIR PATH]

Actions:
  itunes           detect itunes supported files
  svgmin           detect and compress(avg. 40%~60%) svg files.
  xcode-resource   Automatically import resource file to xcode project bundle.
... to be continued.

Options:
  --allow-mime-types(=image/jpeg,image/png[...])   filtering by mime-type
  --allow-extensions(=mp3,jpg[...])                filtering by extensition  
 ```
Forward music files to itunes libray.
```
$ termini itunes ~/Downloads/ ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ iTunes.localized
```
Compress downloaded (from browser) svg files and **overwrite** them.
```
$ termini svgmin ~/Downloads/ ~/Downloads/
```
Import detected resouce files to xcode project bundle.
```
$ termini xcode-resource --allow-extensions=png,mp3,jpg,svg ~/Designworking_temp/ ~/Documents/myxcodeproj/Resources/images/
``` 

## I will do
- Support install dependency, packaging and deploy npm and homebrew etc..
- Support built-in persistant process manager(start, stop, restart)
- Support remote env (capistrano+git integration??)
- Integrate with alfred workflow
- Add action 'compress' : Automatically compress(png, pdf, svg... and all supported files) and deploy all supported files.
- ex) ``` termini compress --allow-extensions=pdf -> only pdf ```
- ... ITFA, someday I'll write to support ```$ termini install ACTION```
