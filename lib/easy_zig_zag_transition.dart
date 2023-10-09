import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a zigzag transition animation.
class EasyZigZagTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        double offset = animation.value * 100.0;
        if (animation.value < 0.5) {
          return Transform.translate(
            offset: Offset(offset, 0),
            child: child,
          );
        } else {
          return Transform.translate(
            offset: Offset(100.0 - offset, 0),
            child: child,
          );
        }
      },
    );
  }

  @override
  DialogRoute buildDialogRoute( Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) {
        double offset = ModalRoute.of(context)!.animation!.value * 100.0;
        if (ModalRoute.of(context)!.animation!.value < 0.5) {
          return Transform.translate(
            offset: Offset(offset, 0),
            child: child,
          );
        } else {
          return Transform.translate(
            offset: Offset(100.0 - offset, 0),
            child: child,
          );
        }
      },
    );
  }
}
