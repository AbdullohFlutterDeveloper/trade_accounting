import 'package:flutter/material.dart';
import 'package:trade_accounting/src/core/exported_packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveInitialize.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HiveProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RouteGenerator route = RouteGenerator();
  @override
  void dispose() {
    Hive.close();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: route.routeGenerate,
    );
  }
}
