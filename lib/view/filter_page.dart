import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/controller/checkbox_select.dart';
import 'package:marlo_project/controller/filter_values.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/view/custom_time_range_page.dart';
import 'package:marlo_project/widgets/currency_widget/button_widget.dart';
import 'package:marlo_project/widgets/currency_widget/currency_listtile_widget.dart';
import 'package:marlo_project/widgets/filter_page_widget/filter_box_container.dart';
import 'package:marlo_project/widgets/filter_page_widget/filter_box_container_status.dart';
import 'package:marlo_project/widgets/filter_page_widget/timerange_container.dart';
import 'package:provider/provider.dart';

class FilterPage {
  final BuildContext context;
  bool valuefirst = false;
  bool selected = false;

  FilterPage(this.context);
  void showModalSheet() {
    final TextEditingController minimumController = TextEditingController();
    final TextEditingController maximumController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.height;

    //? bottom sheet------------------------------------------------------------
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return SizedBox(
            width: double.infinity,
            height: screenheight / 1.10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF7F7F7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Consumer<CheckBoxProvider>(
                    builder: (context, selectvalue, child) {
                      return Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kHeight10,
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFC6EBF6),
                                ),
                                width: 50,
                                height: 7,
                              ),
                            ),
                            kHeight25,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Filter',
                                  style: GoogleFonts.heebo(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                ),
                                Consumer<FilterValuesProvider>(
                                  builder: (context, filterOptions, child) {
                                    return TextButton(
                                        onPressed: () {
                                          filterOptions.showAccountContainer =
                                              false;
                                          filterOptions.showMoneyInContainer =
                                              false;
                                          filterOptions.showCompletedContainer =
                                              false;
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Clear',
                                          style: GoogleFonts.notoSans(
                                              fontSize: 16,
                                              color: kBlue,
                                              fontWeight: FontWeight.bold),
                                        ));
                                  },
                                ),
                              ],
                            ),
                            FilterBoxContainer(screenheight: screenheight),
                            kHeight10,
                            FilterBoxContainerStatus(
                                screenheight: screenheight),
                            kHeight10,
                            TimeRangeContainer(screenheight: screenheight),
                            kHeight10,
                            //? currencies selecting checkbox----------------
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kWhite,
                              ),
                              height: screenheight * 0.355,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        onChanged: (value) {
                                          selectvalue
                                              .setValuesUSD(value ?? false);
                                          selectvalue
                                              .setValueCAD(value ?? false);
                                          selectvalue
                                              .setValueGBP(value ?? false);
                                          selectvalue.setValue(value ?? false);
                                        },
                                        value: selectvalue.value,
                                      ),
                                      Text(
                                        'Currencies . 167',
                                        style: GoogleFonts.notoSans(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  FilterCurrencyListTileWidget(
                                      onChanged: (value) {
                                        selectvalue
                                            .setValuesUSD(value ?? false);
                                        if (value == false) {
                                          selectvalue.setValue(value ?? true);
                                        }
                                      },
                                      valuesecond: selectvalue.valueUSD,
                                      networkImage:
                                          'https://th.bing.com/th/id/R.6aaf59915efae54e4377909099d226eb?rik=%2fDHEp%2fFYASXjVg&riu=http%3a%2f%2fwww.ushistory.org%2fbetsy%2fmore%2fflags%2fusflag640.gif&ehk=MbNu5cduPhhiZj8cj41REZ5T71Yau9k%2bjxqCIKMlSIo%3d&risl=&pid=ImgRaw&r=0',
                                      currencyNameshort: 'USD',
                                      currencyname: 'United States Dollar'),
                                  FilterCurrencyListTileWidget(
                                      onChanged: (value) {
                                        if (value == false) {
                                          selectvalue.setValue(value ?? true);
                                        }
                                        selectvalue.setValueCAD(value ?? false);
                                      },
                                      valuesecond: selectvalue.valueCAD,
                                      networkImage:
                                          'https://th.bing.com/th/id/OIP.MrJ4f6_htAlaiyNvJSb5kgHaEH?pid=ImgDet&rs=1',
                                      currencyNameshort: 'CAD',
                                      currencyname: 'Canadian Dollar'),
                                  FilterCurrencyListTileWidget(
                                      onChanged: (value) {
                                        if (value == false) {
                                          selectvalue.setValue(value ?? true);
                                        }
                                        selectvalue.setValueGBP(value ?? false);
                                      },
                                      valuesecond: selectvalue.valuesGBP,
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
                            //? Amount typing-------------------
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kWhite,
                              ),
                              height: screenheight * 0.12,
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
                                        //? minimum--
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFFE9EEF0),
                                          ),
                                          height: screenheight * 0.055,
                                          width: screenwidth * 0.16,
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
                                                        color: const Color(
                                                            0xFF787F89)),
                                                  )),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 10,
                                                  ),
                                                  child: SizedBox(
                                                      height: 15,
                                                      width: 60,
                                                      child: TextFormField(
                                                        initialValue: '0',
                                                        style: const TextStyle(
                                                            fontSize: 10),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                      ))),
                                            ],
                                          ),
                                        ),
                                        kWidth10,
                                        //? maximum--
                                        Container(
                                          height: screenheight * 0.055,
                                          width: screenwidth * 0.16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                      color: const Color(
                                                          0xFF787F89)),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 10,
                                                  ),
                                                  child: SizedBox(
                                                      height: 15,
                                                      width: 60,
                                                      child: TextFormField(
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                        initialValue: '5000',
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                      ))),
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
                            //?Cancel button
                            ButtonWidget(
                                ontap: () {
                                  Navigator.pop(context);
                                },
                                textcolor: kBlue,
                                context: context,
                                color: const Color(0xFFC6EBF6),
                                buttonname: 'Cancel'),
                            kHeight10,
                            //?Apply Button
                            ButtonWidget(
                              ontap: () {
                                CustomTimeRange(
                                  icon: const Icon(
                                    Icons.filter_alt,
                                    color: kBlue,
                                  ),
                                  context: context,
                                  currencies: selectvalue.value.toString(),
                                  minimumamount: minimumController.text,
                                  maximumamount: maximumController.text,
                                ).bottomsheetTime();
                              },
                              textcolor: kWhite,
                              context: context,
                              color: const Color(0xFF0CABDF),
                              buttonname: 'Apply',
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        });
  }
}
