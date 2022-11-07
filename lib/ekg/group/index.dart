import 'package:flutter/material.dart';
import 'package:labrad_pkl2022/ekg/ekg.dart';
import '../../nav_drawer.dart';

class GroupEkg extends StatelessWidget {
  GroupEkg({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/ekg/group";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(
            'Elektrokardiagram',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.view_headline_rounded),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          backgroundColor: const Color.fromARGB(255, 220, 53, 69),
        ),
        drawer: const DrawerWidged(),
        body: Container(
          child: Column(
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
                                  'assets/images/menu/ekg/group.png'),
                              fit: BoxFit.fitWidth),
                        )),
                    const SizedBox(
                      width: 195,
                      height: 17,
                      child: Text(
                        "Elektrokardiagram - Group",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 295,),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        color: Colors.red[800],
                        child: new Icon(
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
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      width: MediaQuery.of(context).size.width - 225,
                      color: Colors.white,
                      child: const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/others/refresh.png'),
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
                child: ListView(
                  children: [ DataTable(
                    columns: const [
                      DataColumn(label: Text(
                        'Group'
                      ))
                    ], 
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('test'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('test1'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('test1'))
                      ]),
                    ]
                  )]
                )
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 151, 185, 3),
          onPressed: () {
            showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  padding: MediaQuery.of(context).viewInsets,
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 300,
                  width: MediaQuery.of(context).size.width - 225,
                  color: Color.fromARGB(255, 240, 240, 240),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: MediaQuery.of(context).viewInsets,
                        margin: EdgeInsets.all(4.5),
                        child: Text("Group",
                          style: TextStyle(
                            fontSize: 17
                          ),  
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              )
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                            ),
                            child:
                              Container(
                                margin: EdgeInsets.all(2.5),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/others/ok.png'),
                                  ),
                                ),
                              )
                          ),
                          Container(
                            margin: EdgeInsets.only(top:5, left: 5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                            ),
                            child:
                              Container(
                                margin: EdgeInsets.all(2.5),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/others/cancel.png'),
                                  ),
                                ),
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                );
              } 
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
