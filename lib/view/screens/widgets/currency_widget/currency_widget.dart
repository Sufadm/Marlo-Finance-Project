import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/view/utils/colors.dart';
import 'package:marlo_project/view/utils/sizedbox.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({
    super.key,
    required this.screenheight,
    required this.screenWidth,
    required this.text,
    required this.backgroundImage,
  });

  final double screenheight;
  final double screenWidth;
  final String text;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenheight / 5.5,
      width: screenheight / 5.5,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: kWhite),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: screenWidth / 11,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(backgroundImage),
            ),
            kHeight10,
            Text(
              '15,256,486.00',
              style:
                  GoogleFonts.heebo(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            kHeight5,
            Text(
              text,
              style: GoogleFonts.notoSans(
                  fontSize: 14, color: const Color(0xff75808a)),
            )
          ],
        ),
      ),
    );
  }
}
