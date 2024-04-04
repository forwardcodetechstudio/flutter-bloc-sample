import 'package:fcts_flutter_starter/app/app.dart';
import 'package:fcts_flutter_starter/bootstrap.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // await DotEnv().load(fileName: "staging.env");
  bootstrap(() => const App());
}
