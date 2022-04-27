import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/models/AllMarchent.dart';

class AllMarchentService {
  Future<List<MarchentModel>> getAllMarchent() async {
    http.Response response =
        await http.get(Uri.parse('http://192.168.1.21/coupoun/public/api/allvendorsforuser'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<MarchentModel> marchentList = [];
      for (int i = 0; i < data.length; i++) {
        marchentList.add(
          MarchentModel.fromJson(data[i]),
        );
      }
      return marchentList;
    } else {
      throw Exception(
          'there is a proplem with status code ${response.statusCode}');
    }
  }
}
