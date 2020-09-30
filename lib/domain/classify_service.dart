import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:renal_classifier_web/model/api_response.dart';
import 'package:renal_classifier_web/model/classify.dart';
import 'package:renal_classifier_web/utils/constants.dart';

class ClassifyService {

  Future<ApiResponse> post(Classify classify) async {

    Map<String, String> headers = {
      "Content-Type": "application/json"
    };

    final url = PATH;

    String json = classify.toJson();


    final response = await http.post(url, headers: headers, body: json);
    print(response.body);

    if (response.statusCode == 200) {
      Map mapResponse = convert.json.decode(response.body);



      return ApiResponse.ok(msg: 'Resultado é : ${mapResponse['prediction']}');
    }

    return ApiResponse.error();
  }
}