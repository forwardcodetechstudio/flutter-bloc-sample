import 'package:fcts_flutter_starter/extensions/context_ext.dart';
import 'package:fcts_flutter_starter/mixins/base_mixin.dart';
import 'package:flutter/material.dart';

mixin AlertMixin implements BaseMixin {
  void showSnackBar(BuildContext context, String message,
      {Duration? duration}) {
    context.showSnackBar(message, duration: duration);
  }
}
