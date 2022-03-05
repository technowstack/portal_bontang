import 'package:flutter/material.dart';
import 'package:portal_bontang/models/category.dart';
import 'package:portal_bontang/widgets/category_card.dart';
import 'package:portal_bontang/widgets/modal_item.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background-home.png"))),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height * .40,
                  decoration: BoxDecoration(
                      color: Color(0xff002e66),
                      image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          image: AssetImage(
                              "assets/images/undraw_pilates_gpdb.png"))),
                ),
              ],
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/icon/LOGO-PORTAL-SISTEM-INFORMASI.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/json/portal_bontang.json'),
                        // ignore: missing_return
                        builder: (context, snapshot) {
                          final List<Category> data =
                              parseCategory(snapshot.data);
                          if (snapshot.hasData) {
                            return Container(
                              child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: .85,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    //  return Text(data[index].toString());
                                    return CategoryCard(
                                      data[index],
                                      press: () {
                                        if (data[index].id == 1) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 2) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 3) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 4) {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 700.0,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        color:
                                                            Color(0xff002e66),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                            itemCount:
                                                                data[index]
                                                                    .urlList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index2) {
                                                              return ModalItem(
                                                                name: data[
                                                                        index]
                                                                    .urlList[
                                                                        index2]
                                                                    .name
                                                                    .toString(),
                                                                url: data[index]
                                                                    .urlList[
                                                                        index2]
                                                                    .url
                                                                    .toString(),
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        } else if (data[index].id == 5) {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 700.0,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        color:
                                                            Color(0xff002e66),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                            itemCount:
                                                                data[index]
                                                                    .urlList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index2) {
                                                              return ModalItem(
                                                                name: data[
                                                                        index]
                                                                    .urlList[
                                                                        index2]
                                                                    .name
                                                                    .toString(),
                                                                url: data[index]
                                                                    .urlList[
                                                                        index2]
                                                                    .url
                                                                    .toString(),
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        } else if (data[index].id == 6) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 7) {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 700.0,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        color:
                                                            Color(0xff002e66),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                            itemCount:
                                                                data[index]
                                                                    .urlList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index2) {
                                                              return ModalItem(
                                                                name: data[
                                                                        index]
                                                                    .urlList[
                                                                        index2]
                                                                    .name
                                                                    .toString(),
                                                                url: data[index]
                                                                    .urlList[
                                                                        index2]
                                                                    .url
                                                                    .toString(),
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        } else if (data[index].id == 8) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 9) {
                                          Get.toNamed("/webview",
                                              arguments:
                                                  data[index].url.toString());
                                        } else if (data[index].id == 10) {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 700.0,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        color:
                                                            Color(0xff002e66),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                            itemCount:
                                                                data[index]
                                                                    .urlList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index2) {
                                                              return ModalItem(
                                                                name: data[
                                                                        index]
                                                                    .urlList[
                                                                        index2]
                                                                    .name
                                                                    .toString(),
                                                                url: data[index]
                                                                    .urlList[
                                                                        index2]
                                                                    .url
                                                                    .toString(),
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        }
                                      },
                                    );
                                  }),
                            );
                          } else {
                            return CircularProgressIndicator();
                          }
                        }),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
