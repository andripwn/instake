# Instake
> Instagram Auto Downloader - photos, videos, profile picture.

![GitHub top language](https://img.shields.io/github/languages/top/wayangcode/instake.svg)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/wayangcode/instake.svg)
![GPLv3.0](https://img.shields.io/github/license/wayangcode/instake.svg)

[![asciicast](https://asciinema.org/a/de1WTCUv6NyHbXUZk6Oao2Lcm.svg)](https://asciinema.org/a/de1WTCUv6NyHbXUZk6Oao2Lcm)

## How to Run

Linux:

```sh
$ git clone https://github.com/wayangcode/instake.git
$ cd instake
$ bash index.bash
```

## Configuration

You can configure the output directory in `index.bash` :

```sh
##### CONFIG #####
useragent=[USER AGENT STRING]
output_dir=[OUTPUT DIRECTORY] # default "." (current directory)
##################
```

## Release History

* 0.1.5
    * RENAME: `update.bsh` to `update.bash` (typo)
    * FIX: fix `Photos()` which is failed to get content
    * FIX: fix `update()`
* 0.1.0
    * The first proper release
* 0.0.1
    * Work in progress

## License

Distributed under the GPL-3.0 license. See ``LICENSE`` for more information.
