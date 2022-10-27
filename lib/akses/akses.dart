import 'package:flutter/material.dart';
import '../nav_drawer.dart';

class Akses extends StatelessWidget {
  Akses({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 185, 3),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Akses Pengguna',),
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
                    image: AssetImage('assets/images/menu/akses/Login.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 54,
                  child: Text('Login', textAlign: TextAlign.left, style: TextStyle(
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
                    image: AssetImage('assets/images/menu/akses/Logout.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 43,
                  child: Text('Logout', textAlign: TextAlign.left, style: TextStyle(
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
                  child: Text('Login User', textAlign: TextAlign.left, style: TextStyle(
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
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 363,
                height: 336,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                  top: 1,
                  left: 0,
                  child: Container(
                  width: 363,
                  height: 335,
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
                    image: AssetImage('assets/images/menu/akses/Level Pengguna.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 6,
                  child: Text('Level Pengguna', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 22,
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
                    image: AssetImage('assets/images/menu/akses/Pengguna.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 35,
                  child: Text('Pengguna', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 22,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
                ),)
                ),
                  ]
                )
              )
                ),Positioned(
                  top: 179,
                  left: 102,
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
                    image: AssetImage('assets/images/menu/akses/Ganti Password.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 10,
                  child: Text('Ganti Password', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'IM FELL English',
                  fontSize: 22,
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
                  child: Text('Data Pengguna', textAlign: TextAlign.left, style: TextStyle(
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
              Container(
                margin: const EdgeInsets.only(top: 10),
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
                    image: AssetImage('assets/images/menu/akses/Program.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 44,
                  child: Text('Program', textAlign: TextAlign.left, style: TextStyle(
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
                    image: AssetImage('assets/images/menu/akses/Database.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 42,
                  child: Text('Database', textAlign: TextAlign.left, style: TextStyle(
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
                  child: Text('Pengaturan', textAlign: TextAlign.left, style: TextStyle(
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
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
                  left: 102,
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
                    image: AssetImage('assets/images/menu/akses/Keluar.png'),
                    fit: BoxFit.fitWidth
                ),
            )
                )
                ),const Positioned(
                  top: 107,
                  left: 52,
                  child: Text('Keluar', textAlign: TextAlign.left, style: TextStyle(
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
                  child: Text('Keluar', textAlign: TextAlign.left, style: TextStyle(
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
              )
            ],
          ),
        )],
      ),
    );
  }
}