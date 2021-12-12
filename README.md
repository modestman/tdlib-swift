# tdlib-swift

Example of usage [TDLib](https://github.com/tdlib/td) for iOS and macOS swift projects. How to use TdLib and API documentation you can find [here](https://core.telegram.org/tdlib/getting-started).

This project contains precompiled TDLib library version [1.7.10](https://github.com/tdlib/td/tree/6bd7e04875f0a323fc316d5be73358330134c9c8) wrapped into `.xcframework`, and auto-generated specification from [td_api.tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) using utility [tl2swift](https://github.com/modestman/tl2swift)

### Important Info

This repository contains large binary files of precompiled library, this files tracked with Git LFS extension. When you clone a repo or download a .zip file with source code the binaries may not be fully downloaded. Make shure you have installed the [Git LFS](https://git-lfs.github.com/) extension.

## XCFramework

You can find instructions and scripts how to build your own XCFramework from original TDLib sources in the [td-xcframework](td-xcframework) directory.