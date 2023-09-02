import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/view/filter_page.dart';
import 'package:marlo_project/widgets/transaction_widget/transaction_widget.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            //? Back button & Downloads-----------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.chevron_left,
                    color: kBlack,
                    size: 40,
                  ),
                ),
                const Icon(
                  Icons.download,
                  size: 35,
                )
              ],
            ),
            kHeight10,
            //? transaction text widget------------
            Container(
              margin: const EdgeInsets.only(left: 6),
              child: Text(
                'Transaction',
                style: GoogleFonts.heebo(
                    fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            kHeight10,
            //? Search List & Filter-----
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search vessel',
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 20, // Set the size of the search icon
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                kWidth10,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFE9EEF0),
                  ),
                  height: screenheight * 0.053,
                  width: screenheight * 0.053,
                  child: IconButton(
                      onPressed: () {
                        FilterPage(context).showModalSheet();
                      },
                      icon: const Icon(Icons.filter_alt)),
                ),
              ],
            ),
            kHeight15,
            //? All transaction List--------------------------------------------
            Expanded(
              child: ListView.separated(
                itemCount: 9,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 5,
                  ); // Add a separator between items
                },
                itemBuilder: (context, index) {
                  return TransactionWidget(
                    iconColor: kWhite,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
