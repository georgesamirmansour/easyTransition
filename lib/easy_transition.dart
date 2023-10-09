import 'package:flutter/material.dart';
import 'custom_transition_module.dart';

class TransitionEasy {
  final Widget child;
  final CustomTransitionModule customTransitionModule;
  final Duration duration;
  final Curve curve;

  /// Creates a custom transition module for handling page route transitions.
  ///
  /// The [child] widget represents the content that will be shown during the transition.
  ///
  /// The [customTransitionModule] specifies the type of transition animation to use.
  ///
  /// The [duration] sets the total duration of the transition animation. Default is 300 milliseconds.
  ///
  /// The [curve] defines the easing curve for the transition animation. Default is [Curves.linear].
  TransitionEasy({
    required this.child,
    required this.customTransitionModule,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.linear,
  });

  /// Returns the appropriate [PageRoute] based on the transition type.
  PageRoute buildPageRoute() {
    return customTransitionModule.buildPageRoute(child, duration, curve);
  }

  /// Returns the appropriate [DialogRoute] based on the transition type.
  DialogRoute buildDialogRoute(BuildContext context){
    return customTransitionModule.buildDialogRoute(child, duration, curve, context);
  }

  /// Returns the appropriate [Route] based on the transition type.
  Route buildRoute(BuildContext context, bool isDialog) {
    if (isDialog) {
      return customTransitionModule.buildDialogRoute(child, duration, curve, context);
    } else {
      return buildPageRoute();
    }
  }

  /// Executes a dynamic navigation with the specified transition type.
  Future<void> dynamicNavigation(BuildContext context, {bool isDialog = false}) async {
    if (isDialog) {
      await Navigator.push(
        context,
        buildRoute(context, true),
      );
    } else {
      await Navigator.push(
        context,
        buildPageRoute(),
      );
    }
  }
}
