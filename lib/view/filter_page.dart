import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filter',
                style: GoogleFonts.heebo(
                    fontSize: 34, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Clear',
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: kBlue,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
