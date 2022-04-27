import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/models/TopCouponModel.dart';

class AllTopCouponService {
  Future<List<TopCouponModel>> getAllTopCoupon() async {
    http.Response response = await http.get(
        Uri.parse('http://192.168.1.21/coupoun/public/api/getlatestcopouns'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<TopCouponModel> topCouponList = [];
      for (int i = 0; i < data.length; i++) {
        topCouponList.add(
          TopCouponModel.fromJson(data[i]),
        );
      }
      return topCouponList;
    } else {
      throw Exception(
          'there is a proplem with status code ${response.statusCode}');
    }
  }
}
