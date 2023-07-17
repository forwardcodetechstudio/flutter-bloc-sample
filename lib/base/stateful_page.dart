import 'package:fcts_flutter_starter/mixins/alert_mixin.dart';
import 'package:fcts_flutter_starter/mixins/base_mixin.dart';
import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// abstract class StatefulPage<B extends BaseBloc> extends StatefulWidget {
//   const StatefulPage({super.key});

//   @override
//   StatefulPageState<B> createState();
// }

// abstract class StatefulPageState<B extends BaseBloc> extends State<StatefulPage>
//     with BaseMixin, AlertMixin {
//   StatefulPageState(this.screenBloc);
//   final B screenBloc;
// }

abstract class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  StatefulPageState createState();
}

abstract class StatefulPageState extends State<StatefulPage>
    with BaseMixin, AlertMixin {
  final loggerUtils = GetIt.instance<LoggerUtils>();
}
