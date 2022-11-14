import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:labrad_pkl2022/ekg/group/index.dart';
import 'package:flutter/material.dart';

class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}

class SearchEkgGroup extends GroupEkg {
  static Widget searchInputEkgGroup(BuildContext context) {
    List ulist = [];
    List userLists = [];
    const String apiUrl = "https://mediksoft.com/pkl/api/ekg/group";

    TextEditingController _controllerSearch = TextEditingController();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: MediaQuery.of(context).size.width - 225,
      color: Colors.white,
      // ignore: prefer_const_constructors
      child: Expanded(
        child: TextField(
          onTap: () => print('asd'),
          controller: _controllerSearch,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          )),
        ),
      ),
    );
  }
}
