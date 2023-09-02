import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/widgets/filter_page_widget/moneyin_and_out_button.dart';

class FilterBoxContainerStatus extends StatelessWidget {
  const FilterBoxContainerStatus({
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
              'Statuses .6',
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          kHeight10,
          const Row(
            children: [
              MoneyInAndOutButton(
                color: Color.fromARGB(255, 188, 218, 242),
                text: 'Completed',
                textcolor: kBlue,
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'Failed',
                textcolor: Color(0xFF75808A),
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'Declined',
                textcolor: Color(0xFF75808A),
              ),
            ],
          ),
          kHeight10,
          const Row(
            children: [
              MoneyInAndOutButton(
                color: kWhite,
                text: 'Pending',
                textcolor: Color(0xFF75808A),
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'Reverted',
                textcolor: Color(0xFF75808A),
              ),
              MoneyInAndOutButton(
                color: Colors.white,
                text: 'Cancelled',
                textcolor: Color(0xFF75808A),
              ),
            ],
          )
        ],
      ),
    );
  }
}
