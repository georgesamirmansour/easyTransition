import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a scale transition animation.
class EasyScaleTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return ScaleTransition(
          scale: animation.drive(CurveTween(curve: curve)),
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
        return ScaleTransition(
          scale: ModalRoute.of(context)!.animation!.drive(CurveTween(curve: curve)),
          child: child,
        );
      },
    );
  }
}
