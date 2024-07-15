import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:route_task_event/core/utils/blocObserver.dart';
import 'package:route_task_event/core/utils/dependancy_injection.dart' as di;
import 'package:route_task_event/myApp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
