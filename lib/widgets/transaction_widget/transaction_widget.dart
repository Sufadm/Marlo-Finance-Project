import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/controller/transaction_details.dart';
import 'package:marlo_project/model/transaction_model.dart';
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
    return FutureBuilder<List<Data>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Data> data = snapshot.data!;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
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
                    data[index].amount!,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: data[index].amount!.startsWith('-')
                          ? Colors.black
                          : Colors.green,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Sat .16 jul . 9.00 pm',
                  style: GoogleFonts.notoSans(
                      fontSize: 12, color: const Color(0xFF979797)),
                ),
                title: Text(data[index].description!),
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
        return const SizedBox.shrink();
      },
    );
  }
}
