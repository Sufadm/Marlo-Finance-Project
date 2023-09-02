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
