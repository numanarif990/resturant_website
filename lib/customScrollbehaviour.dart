import 'package:flutter/material.dart';

class UltraFastScrollPhysics extends BouncingScrollPhysics {
  final double speedFactor;

  /// `speedFactor` determines how much faster the scroll will behave.
  const UltraFastScrollPhysics({this.speedFactor = 5.0, ScrollPhysics? parent})
      : super(parent: parent);

  @override
  UltraFastScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return UltraFastScrollPhysics(
      speedFactor: speedFactor,
      parent: buildParent(ancestor),
    );
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    // Amplify the offset to achieve faster scrolling (e.g., 5 pages per scroll)
    return super.applyPhysicsToUserOffset(position, offset * speedFactor);
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  final double speedFactor;

  CustomScrollBehavior({this.speedFactor = 5.0});

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return UltraFastScrollPhysics(speedFactor: speedFactor);
  }
}