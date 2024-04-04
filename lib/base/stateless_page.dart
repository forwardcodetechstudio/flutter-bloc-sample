import 'package:fcts_flutter_starter/mixins/alert_mixin.dart';
import 'package:fcts_flutter_starter/mixins/base_mixin.dart';
import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// Extend with this class only when you have to inject a Bloc into the view.
/// 
abstract class StatelessPage<B extends Bloc<dynamic, dynamic>>
    extends StatelessWidget with BaseMixin, AlertMixin {
  StatelessPage({super.key})
      : bloc = GetIt.instance<B>(),
        loggerUtils = GetIt.instance<LoggerUtils>();

  final B bloc;
  final LoggerUtils loggerUtils;
}
