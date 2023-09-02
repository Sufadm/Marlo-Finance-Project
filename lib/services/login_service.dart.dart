import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> postUser() async {
  final shared = await SharedPreferences.getInstance();
  final url = Uri.parse(
      'https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key=AIzaSyBFiEDfEaaK6lBtIdxLXspmxGux1TGsCmg');

  final Map<String, dynamic> requestBody = {
    'email': 'geethumahi38+2@gmail.com',
    'password': 'Marlo@123',
    'returnSecureToken': true
  };
  final response = await http.post(
    url,
    body: jsonEncode(requestBody),
  );
  if (response.statusCode == 200) {
    String access = jsonDecode(response.body)['idToken'];
    String refresh = jsonDecode(response.body)['refreshToken'];
    shared.setString('access', access);
    shared.setString('refresh', refresh);
  }
}
