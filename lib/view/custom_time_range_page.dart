import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/controller/filter_values.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/view/transaction_page.dart';
import 'package:marlo_project/widgets/currency_widget/button_widget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomTimeRange {
  final BuildContext context;
  final String minimumamount;
  final String maximumamount;
  final Icon icon;
  final String currencies;
  CustomTimeRange(
      {required this.minimumamount,
      required this.icon,
      required this.currencies,
      required this.context,
      required this.maximumamount});
  void bottomsheetTime() {
    final screenheight = MediaQuery.of(context).size.height;
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            color: Colors.white,
          ),
          height: screenheight / 1.10,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
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
                kHeight30,
                Text(
                  'Custom time range',
                  style: GoogleFonts.notoSans(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0A0A0A),
                  ),
                ),
                Text(
                  '18 Jan ’23 - 2 Feb ‘23',
                  style: GoogleFonts.notoSans(
                      color: const Color(0xFF75808A), fontSize: 14),
                ),
                kHeight20,
                // date range picker-------------------------------
                SfDateRangePicker(
                  selectionMode: DateRangePickerSelectionMode.range,
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs args) {
                    if (args.value is PickerDateRange) {
                      DateTime startDate = args.value.startDate!;
                      DateTime endDate = args.value.endDate!;
                    }
                  },
                ),
                const Expanded(child: SizedBox()),
                //Cancel button
                ButtonWidget(
                    ontap: () {
                      Navigator.pop(context);
                    },
                    textcolor: kBlue,
                    context: context,
                    color: const Color(0xFFC6EBF6),
                    buttonname: 'Cancel'),
                kHeight10,
                //Apply Button
                ButtonWidget(
                  ontap: () {
                    Provider.of<FilterValuesProvider>(context, listen: false)
                        .updateData(
                            currencies, minimumamount, maximumamount, icon);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const TransactionPage();
                      }),
                    );
                  },
                  textcolor: kWhite,
                  context: context,
                  color: const Color(0xFF0CABDF),
                  buttonname: 'Apply',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
