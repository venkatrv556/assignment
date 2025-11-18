import 'package:flutter/material.dart';
import 'package:price_bargain_customer/screens/homescreen.dart';

class Bottombarsc extends StatefulWidget {
  const Bottombarsc({super.key});

  @override
  State<Bottombarsc> createState() => _BottombarscState();
}

class _BottombarscState extends State<Bottombarsc> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Homesc()
      // Enquiriesmainsc(),
      // EnquiryListScreen(),
      // Myprofilesc(),
      // Logoutscreen()
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.description), label: 'Enquiries'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}
