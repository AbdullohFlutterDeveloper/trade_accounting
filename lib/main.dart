import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:trade_accounting/src/provider/hive_provider.dart';
import 'package:trade_accounting/src/services/hive_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveInitialize.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HiveProvider()),
      ],
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    Hive.close();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
