import 'package:fcts_flutter_starter/mixins/alert_mixin.dart';
import 'package:fcts_flutter_starter/mixins/base_mixin.dart';
import 'package:flutter/material.dart';

abstract class StatelessPage extends StatelessWidget
    with BaseMixin, AlertMixin {
  const StatelessPage({super.key});
  
}
