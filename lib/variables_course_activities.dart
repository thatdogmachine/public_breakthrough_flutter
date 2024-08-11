List<String> assetsCourseActivities = [
  // TODO: this list could be refactored into
  // mapCourseActivities
  'assets/markdown/courseActivity0.md',
  'assets/markdown/courseActivity1.md',
  'assets/markdown/courseActivity2.md',
  'assets/markdown/courseActivity3.md',
  'assets/markdown/courseActivity4.md',
  'assets/markdown/courseActivity5.md',
  'assets/markdown/courseActivity6.md',
];
// TODO: If we define this list here, it changes the behaviour
// and on second pass we get a RangeError
// List<String> textOfCourseActivities = List.empty(growable: true);

Map<String, Map<String, List<String>>> mapCourseActivities = {
  'Welcome to the course': {
    'buttonCopyContent': ['echo "hello from the terminal"'],
    'buttonCopyText': [
      'Click to copy `echo "hello from the terminal"` to Clipboard'
    ],
  },
  'Install & Sign up to all the things': {
    'buttonCopyContent': ['NIXPKGS_ALLOW_UNFREE=1 nix-shell'],
    'buttonCopyText': [
      'Click to copy `NIXPKGS_ALLOW_UNFREE=1 nix-shell` to Clipboard'
    ],
  },
  'Check: all the things': {
    'buttonCopyContent': [],
    'buttonCopyText': [],
  },
  'Check: is Flutter installed and working?': {
    'buttonCopyContent': [
      'pwd',
      'flutter doctor',
      'flutter create my_first_flutter_app',
      'cd my_first_flutter_app',
      'flutter run -d chrome'
    ],
    'buttonCopyText': [
      'Click to copy `pwd` to Clipboard',
      'Click to copy `flutter doctor` to Clipboard',
      'Click to copy `flutter create my_first_flutter_app` to Clipboard',
      'Click to copy `cd my_first_flutter_app` to Clipboard',
      'Click to copy `flutter run -d chrome` to Clipboard',
    ],
  },
  'Check: are git & GitHub installed, configured and working?': {
    'buttonCopyContent': [],
    'buttonCopyText': [],
  },
  'Check: is VSCode installed and working?': {
    'buttonCopyContent': [],
    'buttonCopyText': [],
  },
  'Exploration: VSCode plugins': {
    'buttonCopyContent': [],
    'buttonCopyText': [],
  },
};
