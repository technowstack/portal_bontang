import 'package:flutter/material.dart';
import 'package:portal_bontang/theme.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ModalItem extends StatelessWidget {
  // const Modal({ Key? key }) : super(key: key);
  String name;
  String url;

  ModalItem({this.name, this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Icon(
          Icons.circle_outlined,
          color: Colors.green,
          size: 30.0,
        ),
        title: Text(
          name,
          style: blackTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(url, style: greyTextStyle.copyWith(fontSize: 15)),
        onTap: () {
          Get.back();
          Get.toNamed("/webview", arguments: url.toString());
        },
      ),
    );
  }
}
