import 'dart:convert';

import 'package:http/http.dart';
import 'package:task_manager/data/model/api_responce.dart';

class ApiCaller {
  static Future<ApiResponce> getRequest({required String URL}) async {
    Uri uri = Uri.parse(URL);

    Response response = await get(uri, headers: {});

    if (response.statusCode == 200) {
      return ApiResponce(
        responseCode: response.statusCode,
        responseDate: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponce(
        responseCode: response.statusCode,
        responseDate: jsonDecode(response.body),
        isSuccess: false,
      );
    }
  }

   // ignore: non_constant_identifier_names
   static Future<ApiResponce> postRequest({required String URL, Map<String, dynamic>?body})async {
    Uri uri = Uri.parse(URL);

    Response response = await get(uri, headers: {});

    if (response.statusCode == 200) {
      return ApiResponce(
        responseCode: response.statusCode,
        responseDate: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponce(
        responseCode: response.statusCode,
        responseDate: jsonDecode(response.body),
        isSuccess: false,
      );
    }
  }
}
