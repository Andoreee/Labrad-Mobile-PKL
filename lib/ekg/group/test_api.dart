import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

class BelajarGetData extends StatelessWidget {
  static const String routeName = "/ekg/api";
  final String apiUrl = "https://mediksoft.com/pkl/api/rad/group";

  const BelajarGetData({super.key});
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['Rad'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar GET HTTP'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _fecthDataUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return dataBody(snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
  SingleChildScrollView dataBody(List<dynamic> EkgGroup){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
          sortColumnIndex: 0,
          showCheckboxColumn: false,
          columns: const [
                      DataColumn(label: Text(
                        'Group'
                      ))
                    ], 
          rows: EkgGroup
              .map(
                (group) => DataRow(
                onSelectChanged: (b) {
                  print(group["grup"]);
                },
                cells: [
                  DataCell(
                      Text(group["grup"])
                  ),
                ]),
          )
              .toList(),
        ),
    );
  }
  }

