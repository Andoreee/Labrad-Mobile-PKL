import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'package:labrad_pkl2022/ekg/group/index.dart';

// ignore: must_be_immutable
class DeleteEkgGroup extends GroupEkg {
  DeleteEkgGroup({super.key});
  static InkWell widgetDeleteEkgGroup(BuildContext context, int idgroup) {
  // ignore: no_leading_underscores_for_local_identifiers
  Future<dynamic> _deleteEkgGroup(int id) async {
    const String apiUrl = "https://mediksoft.com/pkl/api/ekg/group";
    var response = await http.delete("$apiUrl/$id");
    return response.body;
  }
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color.fromARGB(255, 240, 240, 240),
            title: const Text("Confirm"),
            content: Container(
              color: const Color.fromARGB(255, 240, 240, 240),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/main/panduan.png'),
                          fit: BoxFit.fitWidth),
                    )
                  ),
                  const SizedBox(width: 15,),
                  const Text("Yakin ingin menghapus data?")
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Yes'),
                onPressed: () {
                  showDialog(context: context, 
                  builder: (context) => FutureBuilder(
                    future: _deleteEkgGroup(idgroup),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      Widget responseApi(){
                        if(snapshot.hasData){
                          return Text(snapshot.data);
                        }
                        else{
                          return Container(child: Center(child: CircularProgressIndicator()), height: 100,);
                        }
                      }
                      return AlertDialog(
                        content: Container(
                          child: responseApi(),
                          ),
                        actions: [
                          TextButton(
                            child: const Text('Ok'),
                            onPressed: () => {
                              Navigator.of(context).pop(),
                              Navigator.of(context).pop(),
                              Navigator.popAndPushNamed(
                                context, GroupEkg.routeName)
                            }
                          )
                        ],
                      );
                    }
                    )
                  );
                },
              ),
              TextButton(
                child: const Text('No'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          )
        );
      },
      child: const Icon(
        Icons.delete,
        size: 20,
      ),
    );
  }
}