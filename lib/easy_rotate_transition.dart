import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a rotate transition animation.
class EasyRotateTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return RotationTransition(
          turns: animation.drive(Tween<double>(begin: 0.0, end: 1.0)),
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
        return RotationTransition(
          turns: ModalRoute.of(context)!.animation!.drive(Tween<double>(begin: 0.0, end: 1.0)),
          child: child,
        );
      },
    );
  }
}
