import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:marlo_project/model/transaction_model.dart';
import 'package:marlo_project/controller/login_service.dart.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Data>> fetchData() async {
  final url = Uri.parse(
      'https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/v2/airwallex/995b1e2e-c5ac-417b-afe5-1de5e92f4cf3/transfers');
  final shared = await SharedPreferences.getInstance();
  String? accessToken = shared.getString('access');

  if (accessToken == null) {
    postUser();
  }
  final response = await http.get(url, headers: {
    'Authorization': 'Bearer $accessToken',
    'authtoken': accessToken!
  });

  if (response.statusCode == 200) {
    TransactionModel transactionModel =
        TransactionModel.fromJson(jsonDecode(response.body));

    return transactionModel.data!;
  } else {
    if (response.statusCode == 401) {
      postUser();
    }
    throw Exception('Failed to load data');
  }
}
