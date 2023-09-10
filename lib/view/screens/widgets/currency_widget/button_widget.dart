import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.context,
      required this.color,
      required this.buttonname,
      required this.textcolor,
      required this.ontap});
  final Color color;
  final Color textcolor;
  final String buttonname;
  final BuildContext context;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: ontap,
      child: Container(
        height: screenheight * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                10), // Customize the border radius as needed
            color: color // Replace with your desired background color
            ),
        child: Center(
            child: Text(
          buttonname,
          style: GoogleFonts.notoSans(
              color: textcolor, fontSize: 14, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
