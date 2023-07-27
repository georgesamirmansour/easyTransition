import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [EasyTransition] for a slide left transition animation.
class EasySlideLeftTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
              .chain(CurveTween(curve: curve))
              .animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  DialogRoute buildDialogRoute( Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
              .chain(CurveTween(curve: curve))
              .animate(ModalRoute.of(context)!.animation!),
          child: child,
        );
      },
    );
  }
}