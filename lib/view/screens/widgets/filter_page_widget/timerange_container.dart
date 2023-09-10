import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/view/screens/widgets/filter_page_widget/moneyin_and_out_button.dart';
import 'package:marlo_project/view/utils/colors.dart';
import 'package:marlo_project/view/utils/sizedbox.dart';

class TimeRangeContainer extends StatelessWidget {
  const TimeRangeContainer({
    super.key,
    required this.screenheight,
  });

  final double screenheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhite,
      ),
      height: screenheight * 0.13,
      width: screenheight * 0.50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Time Range',
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          kHeight10,
          Row(
            children: [
              MoneyInAndOutButton(
                color: Color.fromARGB(255, 188, 218, 242),
                text: '18 Jan - 2 Feb',
                textcolor: kBlue,
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'Today',
                textcolor: Color(0xFF75808A),
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'This week',
                textcolor: Color(0xFF75808A),
              ),
            ],
          ),
          kHeight10,
          const Row(
            children: [
              MoneyInAndOutButton(
                color: kWhite,
                text: 'This month',
                textcolor: Color(0xFF75808A),
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'This quarter',
                textcolor: Color(0xFF75808A),
              ),
            ],
          )
        ],
      ),
    );
  }
}
