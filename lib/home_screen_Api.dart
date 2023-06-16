import 'package:api_demo/model/photos_model.dart';
import 'package:api_demo/services/http_api_service.dart';
import 'package:api_demo/utils/endpoint_res.dart';
import 'package:http/http.dart' as http;

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpServices.getApi(url: Endpoints.photoosendpint);
      if (response != null && response.statusCode == 200) {
        return productFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  static addData(Map<String, dynamic> body) async {
    try {} catch (e) {
      print(e);
    }
  }
}
