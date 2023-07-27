import 'package:easy_transition/easy_fade_in_transition.dart';
import 'package:easy_transition/easy_transition.dart';
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
      appBar: AppBar(title: const Text('EasyTransition Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            EasyTransition(
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
            EasyTransition(
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