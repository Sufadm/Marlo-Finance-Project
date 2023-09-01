import 'package:flutter/material.dart';
import 'package:marlo_project/controller/bottom_nav.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavState>(
      create: (_) => BottomNavState(),
      child: Consumer<BottomNavState>(
        builder: (context, bottomNavState, _) {
          return Scaffold(
            body: Center(
              child: bottomNavState.widgetOptions
                  .elementAt(bottomNavState.selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.values.first,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.money),
                  label: 'Loans',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.text_snippet),
                  label: 'Contracts',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.groups),
                  label: 'Teams',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                ),
              ],
              currentIndex: bottomNavState.selectedIndex,
              onTap: (index) {
                bottomNavState.onItemTapped(index);
              },
            ),
          );
        },
      ),
    );
  }
}
