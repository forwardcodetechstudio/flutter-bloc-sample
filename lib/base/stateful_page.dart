import 'package:fcts_flutter_starter/mixins/alert_mixin.dart';
import 'package:fcts_flutter_starter/mixins/base_mixin.dart';
import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// Extend with this class only when you have to inject a Bloc into the view.

abstract class StatefulPage<B extends Bloc<dynamic, dynamic>>
    extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  StatefulPageState<B> createState();
}

abstract class StatefulPageState<B extends Bloc<dynamic, dynamic>>
    extends State<StatefulPage<B>> with BaseMixin, AlertMixin {
  StatefulPageState() : bloc = GetIt.instance<B>();
  final loggerUtils = GetIt.instance<LoggerUtils>();
  final B bloc;
}
