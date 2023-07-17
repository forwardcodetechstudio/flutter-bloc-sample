import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  // padding
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(
      padding: edgeInsets,
      child: this,
    );
  }

  // margin

  Widget margin(EdgeInsets edgeInsets) {
    return Container(
      margin: edgeInsets,
      child: this,
    );
  }
}
