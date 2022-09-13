import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({Key key}) : super(key: key);

  @override
  State<FoodMenu> createState() => _MenuState();
}

class _MenuState extends State<FoodMenu> {
  List<List<dynamic>> foodlists = [
    [
      "https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg",
      "ต้มยำกุ้ง",
      100
    ],
    ["https://img.kapook.com/u/2015/surauch/cook2/PT1.jpg", "ผัดไทย", 50],
    [
      "https://asset-apac.unileversolutions.com/content/dam/unilever/knorr_world/thailand/digital_and_online/banner_subcat_cuisinethai_%E0%B9%81%E0%B8%81%E0%B8%87%E0%B8%A1%E0%B8%B1%E0%B8%AA%E0%B8%A1%E0%B8%B1%E0%B9%88%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88-34933161-jpg.jpg.ulenscale.838x450.jpg",
      "แกงมัสมั่นไก่",
      80
    ],
    [
      "https://bunchostel.com/wp-content/uploads/2021/08/5-%E0%B8%AD%E0%B8%B1%E0%B8%99%E0%B8%94%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%97%E0%B8%B0%E0%B9%80%E0%B8%A5%E0%B9%84%E0%B8%97%E0%B8%A2%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%94%E0%B8%B1%E0%B8%87%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%99%E0%B9%88%E0%B8%B2%E0%B8%94%E0%B8%B6%E0%B8%87%E0%B8%94%E0%B8%B9%E0%B8%94%E0%B8%AA%E0%B8%B8%E0%B8%94%E0%B9%86-scaled.jpg",
      "เซ็ทอาหารทะเล",
      500
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foodlists.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 218, 216, 216),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            elevation: 10,
            child: Container(
              height: 140,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodlists[index][0],
                        fit: BoxFit.cover,
                        width: 250,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodlists[index][1]}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${foodlists[index][2]} ฿",
                              style: TextStyle(
                                color: Color.fromARGB(255, 31, 115, 34),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      backgroundColor: Colors.green,
                      label: Text(
                        "Order Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Icon(
                            Icons.motorcycle,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            "Free",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        });
  }
}
