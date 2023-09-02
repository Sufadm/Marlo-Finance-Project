import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/widgets/filter_page_widget/moneyin_and_out_button.dart';

class FilterBoxContainer extends StatelessWidget {
  const FilterBoxContainer({
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
      height: screenheight * 0.09,
      width: screenheight * 0.50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Money in and out. 2',
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          kHeight10,
          const Row(
            children: [
              MoneyInAndOutButton(
                color: Color.fromARGB(255, 188, 218, 242),
                text: 'Money in',
                textcolor: Colors.blue,
              ),
              MoneyInAndOutButton(
                color: Color.fromRGBO(255, 255, 255, 1),
                text: 'Money out',
                textcolor: Color(0xFF75808A),
              ),
            ],
          )
        ],
      ),
    );
  }
}
