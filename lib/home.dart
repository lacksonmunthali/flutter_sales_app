import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sales/widgets/home_items.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Lackson',
                    style: TextStyle(
                        color: Color(0xFFF9F9F9),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF777777)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.filter_list,
                  color: Color(0xFFF9F9F9),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF353233),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Iconsax.search_favorite,
                  color: Color(0xFF777777),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Color(0xFF777777)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          HomeItem(),
        ],
      ),
    );
  }
}
