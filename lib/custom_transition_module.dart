import 'package:flutter/material.dart';

/// An abstract class representing a custom transition animation.
abstract class CustomTransitionModule {
  PageRoute buildPageRoute(Widget child, Duration duration, Curve curve);
  DialogRoute buildDialogRoute(Widget child, Duration duration, Curve curve, BuildContext context);

}