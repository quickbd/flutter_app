import 'package:my_app/const/all_color.dart';
import 'package:my_app/const/all_icon.dart';
import 'package:flutter/material.dart';

import 'package:my_app/pages/about_page.dart';
import 'package:my_app/pages/cart_page.dart';
import 'package:my_app/pages/category_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/wishlist_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int index = 0;
  List<Widget> pages=[HomePage(), CategoryPage(), CartPage(), WishList(), AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            index = value;
          });
          index= value;
        },
        currentIndex: index,
        selectedItemColor: AllColors.blueColor,
        unselectedItemColor: AllColors.lightGray,
        items: [
        BottomNavigationBarItem(icon: AllIcons.homeIcon, label: 'Home'),
        BottomNavigationBarItem(icon: AllIcons.categoriesIcon, label: 'Categories'),
        BottomNavigationBarItem(icon: AllIcons.cartIcon, label: 'Cart'),
        BottomNavigationBarItem(icon: AllIcons.wishlistIcon, label: 'Wishlist'),
        BottomNavigationBarItem(icon: AllIcons.accountIcon, label: 'Account'),
      ],
        
      ),
      body: pages[index],
      
    );
  }
}
