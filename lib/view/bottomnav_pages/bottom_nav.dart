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
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/home.png',
                    height: 24,
                    width: 24,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/doller.png',
                    height: 24,
                    width: 24,
                  ),
                  label: 'Loans',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/file.png',
                    height: 24,
                    width: 24,
                  ),
                  label: 'Contracts',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/users.png',
                    height: 24,
                    width: 24,
                  ),
                  label: 'Teams',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/chat.png',
                    height: 24,
                    width: 24,
                  ),
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
