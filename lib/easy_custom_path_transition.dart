import 'package:flutter/material.dart';

import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a custom path transition animation.
class EasyCustomPathTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        // Replace this with your own custom path animation logic.
        // This is just a placeholder to show how you can define a custom path animation.
        double x = animation.value * 200.0;
        double y = animation.value * 100.0;
        return Transform.translate(
          offset: Offset(x, y),
          child: child,
        );
      },
    );
  }

  @override
  DialogRoute buildDialogRoute(Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context, // Replace null with your context.
      builder: (_) {
        // Replace this with your own custom path animation logic for dialogs.
        // This is just a placeholder to show how you can define a custom path animation for dialogs.
        double x = 100.0;
        double y = 50.0;
        return Transform.translate(
          offset: Offset(x, y),
          child: child,
        );
      },
    );
  }
}