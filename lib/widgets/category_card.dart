import 'package:flutter/material.dart';
import 'package:portal_bontang/models/category.dart';
import 'package:portal_bontang/theme.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  //const categorycard({ Key? key }) : su//per(key: key);
  Function press;
  final Category category;

  CategoryCard(this.category, {this.press});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: kShadowColor,
          )
        ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    category.imgUrl.toString(),
                    fit: BoxFit.fill,
                  ),
                  Text(
                    category.title.toString(),
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w800, fontSize: 13),
                       
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
