import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home_screen/presentation/screens/home_screen_details.dart';
import 'package:stylish/features/home_screen/presentation/screens/search_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/setting_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/wish_list_screen.dart';
import 'package:stylish/features/home_screen/presentation/widgets/floating_action_button_impl.dart';

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
      floatingActionButton: FloatingActionButtonImpl(), // created widget
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
                isActive: _selectedIndex == 2,
                onTap: () => _onNavTapped(2),
              ),
              // Setting
              _buildNavItem(
                icon: Icons.settings,
                label: 'Setting',
                isActive: _selectedIndex == 3,
                onTap: () => _onNavTapped(3),
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
            Icon(icon, color: isActive ?Constants.kMainColor : Colors.black),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Constants.kMainColor : Colors.black,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
