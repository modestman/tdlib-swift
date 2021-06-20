# How to make xcframefork from TDLib

Clone the [tdlib](https://github.com/tdlib/td) repo. Go to the `td/example/ios` directory.

Let's build it for iOS and macOS. First of all you need to compile OpenSSL, run `build-openssl.sh` script, wait for the execution to complete. Then run `build.sh` to compile TDLib. See detailed instructions in [example/ios/README.md](https://github.com/tdlib/td/blob/master/example/ios/README.md).

By default library compiles for 7 targets: macOS iOS, iOS-simulator, watchOS, watchOS-simulator, tvOS, tvOS-simulator, this takes a long time. If you don't need all platforms, edit line 8 in the `build.sh` file, for example:

```
platforms="macOS iOS"
```

After compilation is finish, go to the current repo (tdlib-swift) to the directory `td-xcframework`, run the script `copy_files_from_tdlib.sh` for copying `.a` libraries to our xcode project which creates the xcframework
```shell
$ tdlib-swift/td-xcframework/copy_files_from_tdlib.sh
```

Or you can manually copy all `*.a` files from `example/ios/build/install-iOS/lib/` to `td-xcframework/iOS/lib/`,
and `libcrypto.a` and `libssl.a` files from `third_party/openssl/iOS/lib/` to `td-xcframework/td-ios/lib/`. Repeat the same steps for the rest of the platforms.

After the files have been copied, run the script `build.sh`, wait a little more and the xcframework is ready! It located in `td-xcframework/build`.