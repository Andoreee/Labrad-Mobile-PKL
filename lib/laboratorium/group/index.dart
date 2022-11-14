import 'package:flutter/material.dart';
import '../../nav_drawer.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

class GroupLaboratorium extends StatelessWidget {
  GroupLaboratorium({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String apiUrl = "https://mediksoft.com/pkl/api/lab/group";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['Lab'];
  }
  Future<String> _CreateDataUsers() async {
    var response = await http.post("$apiUrl?grup=");
    return response.body;
  }
  static const String routeName = "/laboratorium/group";

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    SingleChildScrollView dataBody(List<dynamic> LabGroup){
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
            sortColumnIndex: 0,
            showCheckboxColumn: false,
            columns: const [
                        DataColumn(label: Text(
                          'Group',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        DataColumn(label: Text(
                          'Option',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ],
            rows: LabGroup
                .map(
                  (group) => DataRow(
                  cells: [
                    DataCell(
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 225,
                          child: Text(group["grup"]), 
                        )
                    ),
                    DataCell(
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            InkWell(
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
                                                    initialValue: group["grup"],
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
                                                  Container(
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
                                                  Container(
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
                            ),
                            InkWell(
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
                                        child: Text('Yes'),
                                        onPressed: () => Navigator.of(context).pop(),
                                      ),
                                      TextButton(
                                        child: Text('No'),
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
                            ),
                          ],
                        )
                    ),
                  ]),
            )
                .toList(),
          ),
      );
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Laboratoruim',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.view_headline_rounded),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 53, 69),
      ),
      drawer: const DrawerWidged(),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: const Color.fromARGB(255, 151, 185, 3),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 7, left: 15),
                    width: 28,
                    height: 23,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/menu/lab/group.png'),
                          fit: BoxFit.fitWidth),
                    )),
                const SizedBox(
                  width: 195,
                  height: 17,
                  child: Text(
                    "Laboratoruim - Group",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 295,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    color: Colors.red[800],
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Pencarian",
                  style: TextStyle(
                      color: Color.fromARGB(255, 128, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  width: MediaQuery.of(context).size.width - 225,
                  color: Colors.white,
                  child: const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/others/refresh.png'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 2),
                      const SizedBox(
                        child: Text(
                          "Refresh",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: (MediaQuery.of(context).size.width - 30),
              height: (MediaQuery.of(context).size.height - (91 + 15) - 89),
              color: Colors.white,
              child: FutureBuilder<List<dynamic>>(
                  future: _fecthDataUsers(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return dataBody(snapshot.data);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 151, 185, 3),
        onPressed: () {
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
                          child: const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              )),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
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
                            Container(
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
                          ],
                        )
                      ],
                    ),
                  ),
              )
              );
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
