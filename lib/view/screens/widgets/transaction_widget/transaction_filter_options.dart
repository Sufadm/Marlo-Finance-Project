import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionFilterOptions extends StatelessWidget {
  const TransactionFilterOptions({
    super.key,
    required this.accountName,
    required this.ontap,
  });
  final String accountName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 188, 218, 242),
        ),
        height: 30,
        width: 120,
        child: Center(
          child: Text(
            accountName,
            style: GoogleFonts.notoSans(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
