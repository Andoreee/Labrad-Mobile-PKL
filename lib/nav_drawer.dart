import 'package:flutter/material.dart';
import 'package:labrad_pkl2022/ekg/ekg.dart';
import 'akses/akses.dart';

class DrawerWidged extends StatelessWidget {
  const DrawerWidged({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 220, 53, 69),
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.clear_rounded,
                color: Color.fromARGB(255, 255, 255, 255),),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            text: "Akses Pengguna",
            icon: "assets/images/main/akses.png",
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Akses()
                    ),
                  );
                },
          ),
          _drawerItem(
            text: "Setup Data",
            icon: "assets/images/main/data master.png"
          ),
          _drawerItem(
            text: "Laboratorium",
            icon: "assets/images/main/lab.png"
          ),
          _drawerItem(
            text: "Radiologi",
            icon: "assets/images/main/radiologi.png"
          ),
          _drawerItem(
            text: "Elektrokardigram",
            icon: "assets/images/main/lab.png",
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ekg()
                    ),
                  );
                },
          ),
          _drawerItem(
            text: "Panduan",
            icon: "assets/images/main/panduan.png"
          ),
        ],
      ),
    );
  }
  Widget _drawerItem({required String icon, required String text, GestureTapCallback? onTap}){
    return ListTile(
      title: Row(
        children: <Widget>[
          Image.asset(icon,
          height: 30,
          width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),)
        ],
      ),
      onTap: onTap,
    );
  }
}