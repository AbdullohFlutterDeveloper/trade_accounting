import 'package:flutter/material.dart';
import 'package:trade_accounting/src/core/exported_packages.dart';


class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    late BottomNavBarProvider provider = context.watch();
    return SizedBox(
      height: getProportionateScreenHeight(88.0),
      child: BottomNavigationBar(
        backgroundColor: ConstColors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: provider.currentIndex,
        onTap: provider.onTap,
        items: _bottomNavigationBarItems(provider),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems(
      BottomNavBarProvider provider) {
    return <BottomNavigationBarItem>[
      _setBottomNavigationBarItem(
        'Home',
        provider.currentIndex == 0
            ? AssetIcons.homeActive
            : AssetIcons.homeInactive,
      ),
      _setBottomNavigationBarItem(
        'Search',
        provider.currentIndex == 1
            ? AssetIcons.searchActive
            : AssetIcons.searchInactive,
      ),
      _setBottomNavigationBarItem(
        'Profile',
        provider.currentIndex == 2
            ? AssetIcons.userActive
            : AssetIcons.userInactive,
      ),
    ];
  }

  BottomNavigationBarItem _setBottomNavigationBarItem(
    String label,
    String assetIcon,
  ) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(assetIcon),
        label: label,
        tooltip: label,
      );
}
