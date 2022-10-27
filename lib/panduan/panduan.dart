import 'package:flutter/material.dart';
import '../nav_drawer.dart';

class Panduan extends StatelessWidget {
  Panduan({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Panduan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 185, 3),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Panduan',),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.view_headline_rounded),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        backgroundColor: const Color.fromARGB(255, 220, 53, 69),
      ),
      drawer: const DrawerWidged(),
      body: ListView(
        children: [Center(
          child: Column(
            children: [
              SizedBox(
                width: 363,
                height: 191,
                
                child: Stack(
                  children: <Widget>[
                    Positioned(
                  top: 1,
                  left: 0,
                  child: Container(
                  width: 363,
                  height: 190,
                  decoration: const BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                boxShadow : [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0,5),
                    blurRadius: 5
                )],
                color : Color.fromRGBO(225, 236, 247, 1),
            )
                )
                ),Positioned(
                  top: 34,
                  left: 16,
                  child: SizedBox(
                width: 160,
                height: 135,
                
                child: Stack(
                  children: <Widget>[
                    Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                  width: 160,
                  height: 135,
                  decoration: const BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                color : Color.fromRGBO(225, 236, 247, 1),
            )
                )
                ),Positioned(
                  top: 17,
                  left: 35,
                  child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    image : DecorationImage(
                    image: AssetImage('assets/images/menu/ekg/pemeriksaan pasien.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 5,
                  child: Text('Pemerisaan Pasien', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 20,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
                ),)
                ),
                  ]
                )
              )
                ),Positioned(
                  top: 34,
                  left: 188,
                  child: SizedBox(
                width: 160,
                height: 135,
                
                child: Stack(
                  children: <Widget>[
                    Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                  width: 160,
                  height: 135,
                  decoration: const BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                color : Color.fromRGBO(225, 236, 247, 1),
            )
                )
                ),Positioned(
                  top: 17,
                  left: 35,
                  child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    image : DecorationImage(
                    image: AssetImage('assets/images/menu/ekg/data pemeriksaan.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 6,
                  child: Text('Data Pemeriksaan', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 20,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
                ),)
                ),
                  ]
                )
              )
                ),Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                  width: 363,
                  height: 23,
                  decoration: const BoxDecoration(
                    boxShadow : [BoxShadow(
                    color: Color.fromRGBO(13, 110, 253, 1),
                    offset: Offset(0,1),
                    blurRadius: 0
                )],
                color : Color.fromRGBO(225, 236, 247, 1),
            )
                )
                ),const Positioned(
                  top: 1,
                  left: 6,
                  child: Text('Pemeriksaan Elektrokardiogram', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
                ),)
                ),
                  ]
                )
              ),
            ],
          ),
        )],
      ),
    );
  }
}