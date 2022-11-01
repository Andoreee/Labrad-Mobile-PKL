import 'package:flutter/material.dart';
import '../../nav_drawer.dart';

class GroupEkg extends StatelessWidget {
  GroupEkg({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/ekg/group";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 185, 3),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Elektrokardiagram',),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.view_headline_rounded),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        backgroundColor: const Color.fromARGB(255, 220, 53, 69),
      ),
      drawer: const DrawerWidged(),
      body: Container(
    width: 375,
    height: 47,
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 375,
                height: 47,
                color: Color(0xff97b903),
                padding: const EdgeInsets.only(left: 11, right: 134, ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 28,
                            height: 23,
                            decoration: const BoxDecoration(
                                    image : DecorationImage(
                                      image: AssetImage('assets/images/menu/ekg/group.png'),
                                      fit: BoxFit.fitWidth
                                    ),
                                  )
                        ),
                        SizedBox(width: 7),
                        SizedBox(
                            width: 195,
                            height: 17,
                            child: Text(
                                "Elektrokardiagram - Group",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
)
    );
  }
}