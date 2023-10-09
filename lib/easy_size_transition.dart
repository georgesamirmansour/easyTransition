import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a size transition animation.
class EasySizeTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return Align(
          alignment: Alignment.center,
          child: SizeTransition(
            sizeFactor: animation.drive(CurveTween(curve: curve)),
            child: child,
          ),
        );
      },
    );
  }

  @override
  DialogRoute buildDialogRoute(Widget child, Duration duration, Curve curve,BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) {
        return Align(
          alignment: Alignment.center,
          child: SizeTransition(
            sizeFactor: ModalRoute.of(context)!.animation!.drive(CurveTween(curve: curve)),
            child: child,
          ),
        );
      },
    );
  }
}
