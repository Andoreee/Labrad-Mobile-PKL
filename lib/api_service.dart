import 'package:http/http.dart' show Client;
import 'package:labrad_pkl2022/model.dart';

class ApiService {

  final String baseUrl = "http://api.bengkelrobot.net:8001";
  Client client = Client();

  Future<List<Profile>?> getProfiles() async {
    final response = await client.get("$baseUrl/api/profile");
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }
  Future<bool> createProfile(Profile data) async {
  final response = await client.post(
    "$baseUrl/api/profile",
    headers: {"content-type": "application/json"},
    body: profileToJson(data),
  );
  if (response.statusCode == 201) {
    return true;
  } else {
    return false;
  }
}

}

