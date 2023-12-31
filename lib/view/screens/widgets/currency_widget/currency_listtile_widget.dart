import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/view/utils/fontstyle.dart';

class FilterCurrencyListTileWidget extends StatelessWidget {
  const FilterCurrencyListTileWidget({
    super.key,
    required this.valuesecond,
    required this.networkImage,
    required this.currencyNameshort,
    required this.currencyname,
    required this.onChanged,
  });

  final bool valuesecond;
  final String networkImage;
  final String currencyNameshort;
  final String currencyname;
  final ValueChanged<bool?>? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: onChanged,
          value: valuesecond,
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(networkImage),
            ),
            title: Text(
              currencyNameshort,
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              currencyname,
              style: notoSans,
            ),
          ),
        )
      ],
    );
  }
}
