import 'package:flutter/material.dart';
import 'package:shopywell/presentation/home/home_screen.dart';
import 'package:shopywell/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:shopywell/utils/theme.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(), // Home
    WishlistScreen(), // Wishlist
    Center(child: Text("Cart Screen")), // Cart
    Center(child: Text("Search Screen")), // Search
    Center(child: Text("Settings Screen")), // Setting
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removeViewInsets(
      removeBottom: true,
      context: context,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildNavItem(
                  icon: Icons.home_outlined,
                  label: 'Home',
                  index: 0,
                ),
                _buildNavItem(
                  icon: Icons.favorite_border,
                  label: 'Wishlist',
                  index: 1,
                ),
                const SizedBox(width: 38),
                _buildNavItem(icon: Icons.search, label: 'Search', index: 3),
                _buildNavItem(
                  icon: Icons.settings_outlined,
                  label: 'Setting',
                  index: 4,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 10),
          child: FloatingActionButton(
            backgroundColor: AppTheme.white,
            elevation: 0,
            shape: const CircleBorder(),
            onPressed: () => _onTabTapped(2),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: _currentIndex == 2 ? AppTheme.buttonColor : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () => _onTabTapped(index),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppTheme.primaryColor : AppTheme.black,
              size: 24,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isSelected ? AppTheme.primaryColor : AppTheme.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
