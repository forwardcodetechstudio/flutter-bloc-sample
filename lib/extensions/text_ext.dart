import 'package:flutter/material.dart';

extension TextModifier on Text {
  Text color(Color color) {
    return Text(
      data ?? '',
      style: style?.copyWith(color: color),
    );
  }

  Text fontSize(double fontSize) {
    return Text(
      data ?? '',
      style: style?.copyWith(fontSize: fontSize),
    );
  }
}
