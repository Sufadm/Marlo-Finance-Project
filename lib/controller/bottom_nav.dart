import 'package:flutter/material.dart';
import 'package:marlo_project/view/bottomnav_pages/chat.dart';
import 'package:marlo_project/view/bottomnav_pages/contracts.dart';
import 'package:marlo_project/view/bottomnav_pages/loans.dart';
import 'package:marlo_project/view/bottomnav_pages/teams.dart';
import 'package:marlo_project/view/home_page.dart';

class BottomNavState extends ChangeNotifier {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const LoansPage(),
    const ContractsPage(),
    const TeamsPage(),
    const ChatPage(),
  ];

  int get selectedIndex => _selectedIndex;
  List<Widget> get widgetOptions => _widgetOptions;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
