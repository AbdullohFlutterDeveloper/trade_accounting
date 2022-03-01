import 'package:flutter/material.dart';
import 'package:trade_accounting/src/core/exported_packages.dart';
import 'package:trade_accounting/src/presentation/widgets/my_drawer/my_drawer.dart';


class MyHomePage extends StatelessWidget {
  late BottomNavBarProvider? _barProvider;
  @override
  Widget build(BuildContext context) {
   
    _barProvider = context.watch();
    return Scaffold(
      bottomNavigationBar:  MyBottomNavigationBar(),
      body: _pagelist[_barProvider!.currentIndex],
      drawer: MyDrawer(), 
    );
  }

  final List _pagelist = [
    HomePageBody(),
    SearchPageBody(),
    ProfilePageBody(),
  ];
}