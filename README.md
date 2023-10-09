# TransitionEasy

TransitionEasy is a Flutter library that simplifies the implementation of custom transition animations for page routes and dialog routes. It provides an easy-to-use API for creating various transition animations, making it convenient to add engaging and visually appealing transitions to your Flutter app.

## Features

- Easily create custom transition animations for page routes and dialog routes.
- Support for various transition types such as slide, fade-in, rotate, scale, bounce, and more.
- Flexible and reusable API for implementing transitions with custom durations and easing curves.
- Seamlessly integrate transition animations into your Flutter app.

## Getting Started

### Installation

To use TransitionEasy in your Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  transition_easy: ^1.0.8
```

Then, run `flutter pub get` in your terminal to fetch the package.

### Usage

1. Import the necessary packages:

```dart
import 'package:flutter/material.dart';
import 'package:transition_easy/easy_transition.dart';
```

2. Wrap your root widget with the `MaterialApp` or `CupertinoApp` widget, and use the `TransitionEasy` class to handle navigation with custom transitions. For example:

```dart
import 'package:transition_easy/easy_fade_in_transition.dart';
import 'package:transition_easy/easy_transition.dart';
import 'package:flutter/material.dart';
import 'package:transition_easy/easy_fade_in_transition.dart';
import 'package:transition_easy/easy_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TransitionEasy Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            TransitionEasy(
              child: const NextPage(),
              customTransitionModule: EasyFadeInTransition(),
            ).dynamicNavigation(context);
          },
          child: const Text('Next Page'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            TransitionEasy(
              child: const DialogScreen(),
              customTransitionModule: EasyFadeInTransition(),
            ).dynamicNavigation(context, isDialog: true);
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Text('This is a custom dialog.'),
      ),
    );
  }
}
```

In this example, we've used the `EasyFadeInTransition` custom transition module to add a fade-in animation when navigating between pages and when showing a dialog. You can easily switch to other custom transition modules provided by TransitionEasy to try different animations.

## CustomTransitionModule Reference

### `PageRoute buildPageRoute(Widget child, Duration duration, Curve curve)`

- `child`: The content that will be shown during the transition.
- `duration`: The total duration of the transition animation.
- `curve`: The easing curve for the transition animation.

Override this method to define your custom transition animation for page routes.

### `Route buildDialogRoute(Widget child, Duration duration, Curve curve, BuildContext context)`

- `context`: The current build context.
- `child`: The content that will be shown during the transition.
- `duration`: The total duration of the transition animation.
- `curve`: The easing curve for the transition animation.

Override this method to define your custom transition animation for dialog routes.

## Supported Transition Modules

- `EasyFadeInTransition`: A fade-in animation for page and dialog routes.
- `EasySlideLeftTransition`: A slide-left animation for page routes.
- `EasySlideRightTransition`: A slide-right animation for page routes.
- `EasySlideTopTransition`: A slide-top animation for page routes.
- `EasySlideBottomTransition`: A slide-bottom animation for page routes.
- `EasySlideDiagonalTransition`: A slide-diagonal animation for page routes.
- `EasyRotateTransition`: A rotate animation

for page routes.
- `EasyRotateScaleTransition`: A rotate-scale animation for page routes.
- `EasyBounceTransition`: A bounce animation for page routes.
- `EasyZigZagTransition`: A zigzag animation for page routes.
- `EasyCustomPathTransition`: A custom path animation for page routes.

## Feedback and Contributions

We welcome feedback, bug reports, and contributions from the community! If you encounter any issues or have suggestions to improve TransitionEasy, please feel free to open an issue or submit a pull request on our GitHub repository.

## License

TransitionEasy is released under the MIT License. See the [LICENSE](https://github.com/georgesamirmansour/easyTransition/blob/master/LICENSE) file for more details.