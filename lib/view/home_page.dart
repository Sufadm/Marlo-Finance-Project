import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/view/transaction_page.dart';
import 'package:marlo_project/widgets/currency_widget.dart';
import 'package:marlo_project/widgets/todo_widget.dart';
import 'package:marlo_project/widgets/transaction_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffdb8500)),
                      borderRadius: BorderRadius.circular(10),
                      color: kOrangeAccent),
                  height: screenheight * 0.048,
                  width: screenWidth * 0.11,
                  child: const Center(
                      child: Text(
                    'JB',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
                ),
                const Icon(
                  Icons.notifications,
                  size: 32,
                  color: kBlue,
                ),
              ],
            ),
            kHeight20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CurrencyWidget(
                      backgroundImage:
                          'https://cdn.safedinar.com/media/currencies/GBP/flag.png',
                      text: 'British Pound',
                      screenheight: screenheight,
                      screenWidth: screenWidth),
                  kWidth10,
                  CurrencyWidget(
                      backgroundImage:
                          'https://th.bing.com/th/id/R.6aaf59915efae54e4377909099d226eb?rik=%2fDHEp%2fFYASXjVg&riu=http%3a%2f%2fwww.ushistory.org%2fbetsy%2fmore%2fflags%2fusflag640.gif&ehk=MbNu5cduPhhiZj8cj41REZ5T71Yau9k%2bjxqCIKMlSIo%3d&risl=&pid=ImgRaw&r=0',
                      text: ' Us dollar',
                      screenheight: screenheight,
                      screenWidth: screenWidth),
                  kWidth10,
                  CurrencyWidget(
                      backgroundImage:
                          'https://th.bing.com/th/id/OIP.MrJ4f6_htAlaiyNvJSb5kgHaEH?pid=ImgDet&rs=1',
                      text: 'Canadian dollar',
                      screenheight: screenheight,
                      screenWidth: screenWidth),
                  kWidth10,
                ],
              ),
            ),
            kHeight35,
            Text('To do . 4',
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    color: const Color(0xFF768089),
                    fontWeight: FontWeight.bold)),
            kHeight10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ToDoWidget(
                    color: const Color(0x00543290),
                    secondcolor: const Color.fromARGB(19, 0, 38, 144),
                    icon: const Icon(Icons.document_scanner),
                    screenheight: screenheight,
                    text: 'Verify your buisness\n         buisness',
                  ),
                  kWidth10,
                  ToDoWidget(
                    color: const Color(0x00ff9f0a),
                    secondcolor: const Color.fromARGB(29, 174, 23, 12),
                    icon: const Icon(Icons.phone_android),
                    screenheight: screenheight,
                    text: 'Verify your identity',
                  ),
                  kWidth10,
                  ToDoWidget(
                    color: const Color.fromRGBO(0, 179, 215, 0),
                    secondcolor: const Color.fromRGBO(0, 179, 215, 0.16),
                    icon: const Icon(Icons.account_box_outlined),
                    screenheight: screenheight,
                    text: 'Verify your buisness\n         buisness',
                  ),
                  kWidth10,
                ],
              ),
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All transaction',
                  style: GoogleFonts.notoSans(
                      color: const Color(0xFF768089),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text(
                    'See all',
                    style: GoogleFonts.notoSans(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TransactionPage();
                    }));
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 5,
                  ); // Add a separator between items
                },
                itemBuilder: (context, index) {
                  return TransactionWidget(
                    iconColor: kWhite,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}