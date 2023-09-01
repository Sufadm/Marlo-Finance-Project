import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';

class MoneyInAndOutButton extends StatelessWidget {
  final String text;
  const MoneyInAndOutButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: InkWell(
        child: Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 188, 218, 242),
          ),
          width: 80,
          height: 25,
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.notoSans(fontSize: 14, color: kBlue),
          )),
        ),
      ),
    );
  }
}

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
                text: 'Money in',
              ),
              MoneyInAndOutButton(
                text: 'Money out',
              ),
            ],
          )
        ],
      ),
    );
  }
}

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
                text: 'Completed',
              ),
              MoneyInAndOutButton(
                text: 'Pending',
              ),
              MoneyInAndOutButton(
                text: 'Cancelled',
              ),
            ],
          )
        ],
      ),
    );
  }
}
