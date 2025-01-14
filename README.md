# my_flutter_app

A new Flutter project for [Breakthrough](https://www.wearebreakthrough.co.uk) candidates

There is a working demo of the outcome of this course at: https://ewann.github.io/breakthrough_demo/

## Steps used to create

    flutter create public_breakthrough_flutter --project-name my_flutter_app                                                                             3:35:39 
    Developer identity "Apple Development: ewan.nisbet@outlook.com (5Y782MYFMX)" selected for iOS code signing
    Creating project public_breakthrough_flutter...
    Resolving dependencies in `public_breakthrough_flutter`... 
    Downloading packages... 
    Got dependencies in `public_breakthrough_flutter`.
    Wrote 129 files.

    All done!
    You can find general documentation for Flutter at: https://docs.flutter.dev/
    Detailed API documentation is available at: https://api.flutter.dev/
    If you prefer video documentation, consider: https://www.youtube.com/c/flutterdev

    In order to run your application, type:

    $ cd public_breakthrough_flutter
    $ flutter run

    Your application code is in public_breakthrough_flutter/lib/main.dart.

## Steps used to push to empty github repo

    git add .
    [public_breakthrough_flutter] git commit -m "first commit"
    git branch -M main
    git remote add origin https://github.com/thatdogmachine/public_breakthrough_flutter.git
    git push -u origin main


## Permissions problem for IOS on MacOs

    MY_USER=$(whoami)
    echo "I am: $MY_USER"
    sudo rm -rf /Users/$MY_USER/repos/public_breakthrough_flutter/macos/Flutter/


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


// TODO: chrome PWA download settings in site root
