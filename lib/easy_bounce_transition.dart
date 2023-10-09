import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

/// A concrete implementation of [CustomTransitionModule] for a bounce transition animation.
class EasyBounceTransition extends CustomTransitionModule {
  @override
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) =>
          _buildScaleTransition(animation, child, curve),
    );
  }

  @override
  DialogRoute buildDialogRoute(
      Widget child, Duration duration, Curve curve, BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) =>
          _buildScaleTransition(const AlwaysStoppedAnimation(1), child, curve),
      // For dialog transitions, we use the scale transition with a fixed animation value (1.0).
      // Replace AlwaysStoppedAnimation(1) with an appropriate animation if needed.
    );
  }

  ScaleTransition _buildScaleTransition(
      Animation<double> animation, Widget child, Curve curve) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.bounceOut),
      child: child,
    );
  }
}
