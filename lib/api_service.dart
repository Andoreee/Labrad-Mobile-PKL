import 'package:http/http.dart' show Client;
import 'package:labrad_pkl2022/model.dart';

class ApiService {

  final String baseUrl = "http://127.0.0.1:8000/";
  Client client = Client();

  Future<List<EkgGroup>?> getEkgGroups() async {
    final response = await client.get("$baseUrl/api/ekg/group");
    if (response.statusCode == 1500) {
      return EkgGroupFromJson(response.body);
    } else {
      return null;
    }
  }
}
