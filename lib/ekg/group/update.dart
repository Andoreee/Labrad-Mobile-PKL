import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'package:labrad_pkl2022/ekg/group/index.dart';

// ignore: must_be_immutable
class UpdateEkgGroup extends GroupEkg {
  UpdateEkgGroup({super.key});
  static InkWell widgetUpdateEkgGroup(BuildContext context, String group, int idgroup) {
  // ignore: no_leading_underscores_for_local_identifiers
  Future<dynamic> _updateEkgGroup(String grup, int id) async {
    const String apiUrl = "https://mediksoft.com/pkl/api/ekg/group";
    var response = await http.put("$apiUrl/$id?grup=$grup");
    return response.body;
  }
  TextEditingController groupUpdateController = TextEditingController(text: group);
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 150,
                  width: MediaQuery.of(context).size.width - 225,
                  color: const Color.fromARGB(255, 240, 240, 240),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.all(4.5),
                        child: const Text(
                          "Group",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Expanded(
                          child: TextFormField(
                            controller: groupUpdateController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              if(groupUpdateController.text.isNotEmpty){
                                      showDialog(context: context, 
                                      builder: (context) => FutureBuilder(
                                        future: _updateEkgGroup(groupUpdateController.text,idgroup),
                                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                                          Widget responseApi(){
                                            if(snapshot.hasData){
                                              return Text(snapshot.data);
                                            }
                                            else{
                                              return const SizedBox(height: 100,child: Center(child: CircularProgressIndicator()),);
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
                                      }
                                      else{
                                        showDialog(context: context, builder: (context) => 
                                        AlertDialog(
                                            content: const Text("Data tidak boleh kosong!"),
                                            actions: [
                                              TextButton(
                                                child: const Text('Ok'),
                                                onPressed: () => Navigator.of(context).pop(),
                                              )
                                            ],
                                          )
                                        );
                                      }
                                  },
                            child: Container(
                                margin: const EdgeInsets.only(top: 5),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Container(
                                  margin: const EdgeInsets.all(2.5),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/others/ok.png'),
                                    ),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                                Navigator.pop(context);
                            },
                            child: Container(
                                margin: const EdgeInsets.only(top: 5, left: 5),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Container(
                                  margin: const EdgeInsets.all(2.5),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/others/cancel.png'),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            )
          );
      },
      child: const Icon(
        Icons.edit,
        size: 20,
      ),
    );
  }
}