import 'package:easy_transition/custom_transition_module.dart';
import 'package:flutter/material.dart';

/// A concrete implementation of [CustomTransitionModule] for a fade-in transition animation.
class EasyFadeInTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0)
              .animate(CurvedAnimation(parent: animation, curve: curve)),
          child: child,
        ),
    );
  }

  @override
  DialogRoute buildDialogRoute(Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) => FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0)
              .animate(CurvedAnimation(parent: ModalRoute.of(context)!.animation!, curve: curve)),
          child: child,
        ),
    );
  }
}
