import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';

class FilterPage {
  final BuildContext context;

  FilterPage(this.context);

  void showModalSheet() {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return SizedBox(
            width: double.infinity,
            height: 790.0,
            // color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          )),
                    ],
                  ),
                  Container(
                    color: kWhite,
                    height: 100,
                    width: 500,
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
