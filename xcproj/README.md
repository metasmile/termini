## About

**xcproj** is a command line tool for manipulating Xcode project files. It doesn’t do much yet. It also serves as a testbed for [XCDUndocumentedChecker](https://github.com/0xced/xcproj/blob/develop/Sources/XCDUndocumentedChecker.m).

## Requirements

xcproj works with Xcode 5 and 6. Xcode 4 support has been discontinued.

## Installation

### Homebrew

```
brew install xcproj
```

### Manually

To install the `xcproj` tool in `/usr/local/bin` run the following command, with `sudo` if required:

```
xcodebuild -target xcproj install DSTROOT=/
```

If you want to install `xcproj` in a custom location, e.g. `~/bin`, run the following command:

```
xcodebuild -target xcproj install DSTROOT=/ INSTALL_PATH=~/bin
```

## Usage

```
xcproj [options] <action> [arguments]

Options:
 -h, --help        Show this help text and exit
 -V, --version     Show program version and exit
 -p, --project     Path to an Xcode project (*.xcodeproj file). If not specified, the project in the current working directory is used 
 -t, --target      Name of the target. If not specified, the first target is used

Actions:
 * list-targets
     List all the targets in the project

 * list-headers [All|Public|Project|Private] (default=Public)
     List headers from the `Copy Headers` build phase

 * read-build-setting <build_setting>
     Evaluate a build setting and print its value. If the build setting does not exist, nothing is printed

 * write-build-setting <build_setting> <value>
     Assign a value to a build setting. If the build setting does not exist, it is added to the target

 * add-xcconfig <xcconfig_path>
     Add an xcconfig file to the project and base all configurations on it

 * add-resources-bundle <bundle_path>
     Add a bundle to the project and in the `Copy Bundle Resources` build phase

 * put-resource-bundle <source_absolute_path_to_read> [<dest_dir_path> (default=Resources, relative or absolute)>]
     Copy or rewrite a file, and then Add a bundle to target path in the project and in the `Copy Bundle Resources` build phase

 * touch
     Rewrite the project file
```

## Limitations

* **xcproj** relies on the DevToolsCore private framework. Although great care has been taken, it might stop working when you upgrade Xcode.

## Contact

Cédric Luthi

- http://github.com/0xced
- http://twitter.com/0xced
- cedric.luthi@gmail.com
