import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';

class MoneyInAndOutButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  const MoneyInAndOutButton({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
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
              borderRadius: BorderRadius.circular(15), color: color),
          //width: 90,
          height: 25,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(3.4),
            child: Text(
              text,
              style: GoogleFonts.notoSans(fontSize: 14, color: textcolor),
            ),
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
          const Row(
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
