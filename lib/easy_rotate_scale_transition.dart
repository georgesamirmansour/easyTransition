import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a rotate-scale transition animation.
class EasyRotateScaleTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return Transform.rotate(
          angle: animation.value * 2 * 3.1415926535897932,
          child: Transform.scale(
            scale: animation.value,
            child: child,
          ),
        );
      },
    );
  }

  @override
  DialogRoute buildDialogRoute(Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) {
        return Transform.rotate(
          angle: ModalRoute.of(context)!.animation!.value * 2 * 3.1415926535897932,
          child: Transform.scale(
            scale: ModalRoute.of(context)!.animation!.value,
            child: child,
          ),
        );
      },
    );
  }
}
