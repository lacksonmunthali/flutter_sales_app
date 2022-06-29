import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sales/home.dart';

void main() {
  runApp(Sales());
}

class Sales extends StatefulWidget {
  Sales({Key? key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  int _selectedIndex = 0;

  List myPages = [
    Home(),
    Center(
      child: Text(
        'Wallet',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
        ),
      ),
    ),
    Text(
      'Statistics',
      style: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
    ),
    Text(
      'Profile',
      style: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
    ),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2A2A2A),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.menu5,
                      color: Color(0xFFF9F9F9),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFF9F9F9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(
                        image: AssetImage('assets/picture.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: myPages.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: "Home",
              backgroundColor: Color(0xFF2A2A2A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet),
              label: "Waller",
              backgroundColor: Color(0xFF2A2A2A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart_sharp),
              label: "Statistics",
              backgroundColor: Color(0xFF2A2A2A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: "Profile",
              backgroundColor: Color(0xFF2A2A2A),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTaped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          selectedItemColor: Color(0xFFF9F9F9),
          unselectedItemColor: Color(0xFF777777),
        ),
      ),
    );
  }
}
