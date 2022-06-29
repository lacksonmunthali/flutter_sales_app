import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeItem extends StatelessWidget {
  HomeItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Card(
          color: Color(0xFFC0DEDD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.percentage_circle,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '230k',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Sales')
            ],
          ),
        ),
        Card(
          color: Color(0xFFE6DFF1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pie_chart_outline,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$9745',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Revenue'),
            ],
          ),
        ),
        Card(
          color: Color(0xFFF1EEE9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.personalcard,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '8.549k',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Customers')
            ],
          ),
        ),
        Card(
          color: Color(0xFFF1DFDD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.chart_14,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1.423k',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Products')
            ],
          ),
        ),
        Card(
          color: Color(0xFFC0DEDD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.user,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '20',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Marketers'),
            ],
          ),
        ),
        Card(
          color: Color(0xFFF1EEE9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pie_chart_outline_sharp,
                size: 27,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '140',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Orders')
            ],
          ),
        ),
      ],
    );
  }
}
