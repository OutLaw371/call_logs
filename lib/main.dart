

import 'package:call_logs/recent_calls/call_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:call_logs/recent_calls/recent_calls_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await initialization(null);

  runApp(MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 3));
}


class MyApp extends StatelessWidget {
  static const title = 'Native Splash Screen';

  // MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      // прописываем маршруты до страницы
      routes: <String, WidgetBuilder>{
        // пока корневая страница -- это RecentCalls
        '/': (context) => const RecentCalls(),
        '/info': (context) => const CallInfo(),
      },
    );
  }
}