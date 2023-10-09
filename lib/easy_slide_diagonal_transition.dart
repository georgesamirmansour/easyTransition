import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a slide diagonal transition animation.
class EasySlideDiagonalTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
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
      context: context,
      builder: (_) {
        double x = ModalRoute.of(context)!.animation!.value * 200.0;
        double y = ModalRoute.of(context)!.animation!.value * 100.0;
        return Transform.translate(
          offset: Offset(x, y),
          child: child,
        );
      },
    );
  }
}
