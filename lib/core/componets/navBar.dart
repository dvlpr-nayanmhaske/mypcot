import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;

  final List icons = [
    Icons.home_outlined,
    Icons.group_outlined,
    Icons.book_outlined,
    Icons.receipt_long_outlined,
  ];

  final List labels = ["Home", "Customers", "Khata", "Orders"];

  onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Text(
          "${labels[_selectedIndex]}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navBar(0),
              navBar(1),
              SizedBox(width: 5),
              navBar(2),
              navBar(3),
            ],
          ),
        ),
      ),

      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  navBar(int index) {
    final isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icons[index],
            color: isSelected ? Color.fromARGB(255, 18, 53, 102) : Colors.grey,
          ),
          SizedBox(height: 2),
          Text(
            labels[index],
            style: TextStyle(
              fontSize: 11,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Color(0xFF0C2445) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
