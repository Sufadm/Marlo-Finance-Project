import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';

class TransactionWidget extends StatelessWidget {
  final int index;
  final Color iconColor;

  const TransactionWidget({
    super.key,
    required this.index,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhite,
      ),
      height: 65,
      child: ListTile(
          trailing: Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              "-\$850",
              style: GoogleFonts.notoSans(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(
            'Sat .16 jul . 9.00 pm',
            style: GoogleFonts.notoSans(
                fontSize: 12, color: const Color(0xFF979797)),
          ),
          title: Text(
            'Rent',
            style:
                GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF00455B),
            ),
            height: screenheight * 0.043,
            width: screenheight * 0.043,
            child: Icon(
              Icons.arrow_back,
              color: iconColor,
            ),
          )),
    );
  }
}
