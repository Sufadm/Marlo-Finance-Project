import 'package:flutter/material.dart';
import 'package:marlo_project/controller/checkbox_select.dart';
import 'package:marlo_project/controller/filter_values.dart';
import 'package:marlo_project/controller/search.dart';
import 'package:marlo_project/view/bottomnav_pages/bottom_nav.dart';
import 'package:marlo_project/view/transaction_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CheckBoxProvider()),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FilterValuesProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/transaction': (context) => const TransactionPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Marlo Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNav(),
    );
  }
}
