import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:marlo_project/controller/filter_values.dart';
import 'package:marlo_project/controller/search.dart';
import 'package:marlo_project/model/transaction_model.dart';
import 'package:marlo_project/utils/colors.dart';
import 'package:marlo_project/utils/sizedbox.dart';
import 'package:marlo_project/view/filter_page.dart';
import 'package:marlo_project/widgets/transaction_widget/transaction_filter_options.dart';
import 'package:provider/provider.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            //? Back button & Downloads------------------------
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
            // transaction text widget--------------
            Container(
              margin: const EdgeInsets.only(left: 6),
              child: Text(
                'Transaction',
                style: GoogleFonts.heebo(
                    fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            kHeight10,
            // Search List & Filter-----
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) {
                      value = value.toLowerCase();
                      searchProvider.updateSearchText(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search vessel',
                      hintStyle: GoogleFonts.notoSans(),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 20,
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

            // filter options----------------------
            Consumer<FilterValuesProvider>(
              builder: (context, filterOptions, _) {
                return Row(
                  children: [
                    if (filterOptions.showAccountContainer)
                      TransactionFilterOptions(
                        ontap: () {
                          filterOptions.showAccountContainer = false;
                        },
                        accountName: 'Account . 2    x',
                      ),
                    kWidth10,
                    if (filterOptions.showMoneyInContainer)
                      TransactionFilterOptions(
                        ontap: () {
                          filterOptions.showMoneyInContainer = false;
                        },
                        accountName: 'Money in   x',
                      ),
                    kWidth10,
                    if (filterOptions.showCompletedContainer)
                      TransactionFilterOptions(
                        ontap: () {
                          filterOptions.showCompletedContainer = false;
                        },
                        accountName: 'Completed   x',
                      ),
                  ],
                );
              },
            ),
            kHeight10,
            // All transaction List----------------------------
            Consumer<SearchProvider>(
              builder: (context, value, _) {
                List<Data> data = SearchProvider.allTransaction;
                List<Data> temp = [];
                for (var element in data) {
                  if (element.description!
                      .toLowerCase()
                      .contains(value.searchText)) {
                    temp.add(element);
                  }
                  // else {
                  //   return Column(
                  //     children: [
                  //       Lottie.network(
                  //         'https://lottie.host/dc6da250-4b70-4eae-ac06-9a639212ab17/gwDgbycfXt.json',
                  //         height: 300,
                  //         fit: BoxFit.cover,
                  //       ),
                  //       const Center(
                  //           child: Text(
                  //         'No result Found',
                  //         style: TextStyle(
                  //             color: Color(0xFF75808A),
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.bold),
                  //       ))
                  //     ],
                  //   );
                  // }
                }
                data = temp;
                return Expanded(
                  child: ListView.separated(
                    itemCount: data.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 5,
                      );
                    },
                    itemBuilder: (context, index) {
                      final DateTime createdAt =
                          DateTime.parse(data[index].createdAt!);
                      final formattedDate =
                          DateFormat('EEE .d MMM . h:mm a').format(createdAt);
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
                                '${data[index].amount!.startsWith('-') ? '-\$' : '\$'}${data[index].amount!.replaceAll('-', '')}',
                                style: GoogleFonts.notoSans(
                                  fontSize: 14,
                                  color: data[index].amount!.startsWith('-')
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              formattedDate,
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
                              child: const Icon(
                                Icons.arrow_back,
                                color: kWhite,
                              ),
                            )),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
