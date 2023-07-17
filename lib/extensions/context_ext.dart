import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextExt on BuildContext {
  void showSnackBar(String message, {Duration? duration}) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
