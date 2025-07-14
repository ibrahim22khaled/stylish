import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home_screen/presentation/screens/cart_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/home_screen_details.dart';
import 'package:stylish/features/home_screen/presentation/screens/search_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/setting_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/wish_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreenDetails(),
    WishListScreen(),
    CartScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        shadowColor: Color(0xffF9F9F9),
        surfaceTintColor: Color(0xffF9F9F9),
        title: CustomAppBar(),
      ),
      body: _screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () => _onNavTapped(2), // Cart tab index
          backgroundColor: _selectedIndex == 2 ? kMainColor: Colors.white,
          elevation: 8,
          child: Icon(
            Icons.shopping_cart,
            color: _selectedIndex == 2? Colors.white : Colors.black,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.white,
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home
              _buildNavItem(
                icon: Icons.home_outlined,
                label: 'Home',
                isActive: _selectedIndex == 0,
                onTap: () => _onNavTapped(0),
              ),
              // Wishlist
              _buildNavItem(
                icon: Icons.favorite_border,
                label: 'Wishlist',
                isActive: _selectedIndex == 1,
                onTap: () => _onNavTapped(1),
              ),
              // Spacer for FAB
              const Gap(60),
              // Search
              _buildNavItem(
                icon: Icons.search,
                label: 'Search',
                isActive: _selectedIndex == 3,
                onTap: () => _onNavTapped(3),
              ),
              // Setting
              _buildNavItem(
                icon: Icons.settings,
                label: 'Setting',
                isActive: _selectedIndex == 4,
                onTap: () => _onNavTapped(4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: isActive ? kMainColor : Colors.black),
            Text(
              label,
              style: TextStyle(
                color: isActive ? kMainColor : Colors.black,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
