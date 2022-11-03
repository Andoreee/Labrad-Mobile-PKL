import 'dart:html';

import 'package:flutter/material.dart';
import '../../nav_drawer.dart';

class GroupEkg extends StatelessWidget {
  GroupEkg({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/ekg/group";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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
                    Text(
                      "Pencarian",
                      style: TextStyle(
                          color: Color.fromARGB(255, 128, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width - 200,
                      color: Colors.white,
                      child: Expanded(
                        child: TextField(),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: (MediaQuery.of(context).size.width - 30),
                height: (MediaQuery.of(context).size.height - (91 + 15) - 60),
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}
