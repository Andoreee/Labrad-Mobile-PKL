import 'dart:convert';

class EkgGroup {
  int id;
  String grup;

  EkgGroup({this.id = 0, required this.grup});

  factory EkgGroup.fromJson(Map<String, dynamic> map) {
    return EkgGroup(
        id: map["id"], grup: map["grup"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "grup": grup};
  }

  @override
  String toString() {
    return 'EkgGroup{id: $id, grup: $grup}';
  }

}

List<EkgGroup> EkgGroupFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<EkgGroup>.from(data.map((item) => EkgGroup.fromJson(item)));
}

String EkgGroupToJson(EkgGroup data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
