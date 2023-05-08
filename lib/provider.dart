import 'dart:convert';

import 'package:testpro/model.dart';
import 'package:http/http.dart' as http;

class MenuProvider {
  Future<List<Menulist>> getmenulist() async {
    var url = Uri.parse('https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Menulist.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
