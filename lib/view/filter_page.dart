import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/widgets/currency_listtile_widget.dart';
import 'package:marlo_project/widgets/moneyin_and_out_button.dart';

class FilterPage {
  final BuildContext context;
  bool valuefirst = false;
  bool valuesecond = false;
  bool selected = false;
  FilterPage(this.context);
  void showModalSheet() {
    final screenheight = MediaQuery.of(context).size.height;
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return SizedBox(
            width: double.infinity,
            height: screenheight / 1.10,
            // color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kHeight25,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filter',
                          style: GoogleFonts.heebo(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Clear',
                              style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  color: kBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    FilterBoxContainer(screenheight: screenheight),
                    kHeight5,
                    FilterBoxContainerStatus(screenheight: screenheight),
                    kHeight5,
                    Container(
                      color: kWhite,
                      height: 315,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                onChanged: (value) {},
                                value: valuefirst,
                              ),
                              Text(
                                'Currencies . 167',
                                style: GoogleFonts.notoSans(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          FilterCurrencyListTileWidget(
                              valuesecond: valuesecond,
                              networkImage:
                                  'https://th.bing.com/th/id/R.6aaf59915efae54e4377909099d226eb?rik=%2fDHEp%2fFYASXjVg&riu=http%3a%2f%2fwww.ushistory.org%2fbetsy%2fmore%2fflags%2fusflag640.gif&ehk=MbNu5cduPhhiZj8cj41REZ5T71Yau9k%2bjxqCIKMlSIo%3d&risl=&pid=ImgRaw&r=0',
                              currencyNameshort: 'USD',
                              currencyname: 'United States Dollar'),
                          FilterCurrencyListTileWidget(
                              valuesecond: valuesecond,
                              networkImage:
                                  'https://th.bing.com/th/id/OIP.MrJ4f6_htAlaiyNvJSb5kgHaEH?pid=ImgDet&rs=1',
                              currencyNameshort: 'CAD',
                              currencyname: 'Canadian Dollar'),
                          FilterCurrencyListTileWidget(
                              valuesecond: valuesecond,
                              networkImage:
                                  'https://cdn.safedinar.com/media/currencies/GBP/flag.png',
                              currencyNameshort: 'GBP',
                              currencyname: 'British Pound'),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See all accounts',
                                style: GoogleFonts.notoSans(
                                    color: kBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )),
                        ],
                      ),
                    ),
                    kHeight10,
                    Container(
                      color: kWhite,
                      height: 104,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount',
                              style: GoogleFonts.notoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            kHeight10,
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE9EEF0),
                                  ),
                                  height: 51,
                                  width: 149,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Text(
                                            'Minimum',
                                            style: GoogleFonts.lato(
                                                color: const Color(0xFF787F89)),
                                          )),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: const Text('0')),
                                    ],
                                  ),
                                ),
                                kWidth10,
                                Container(
                                  height: 50,
                                  width: 149,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE9EEF0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Text(
                                          'Maximum',
                                          style: GoogleFonts.lato(
                                              color: const Color(0xFF787F89)),
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: const Text('5000')),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    kHeight10,
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Customize the border radius as needed
                        color: const Color(
                            0xFFC6EBF6), // Replace with your desired background color
                      ),
                      child: Center(
                          child: Text(
                        'Cancel',
                        style: GoogleFonts.notoSans(
                            color: kBlue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    kHeight10,
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Customize the border radius as needed
                        color: const Color(
                            0xFF0CABDF), // Replace with your desired background color
                      ),
                      child: Center(
                          child: Text(
                        'Apply',
                        style: GoogleFonts.notoSans(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
