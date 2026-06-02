import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'forum/forum_screen.dart';
import 'profile/profile_screen.dart';

/// The root layout widget handling bottom tab navigation switches.
class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _currentTabIndex = 0;

  // The collection stream indices matching array assignments
  final List<Widget> _appScreens = [
    const HomeScreen(),
    const ForumScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color borderColor = Color(0xFFD2D2D7);

    return Scaffold(
      body: IndexedStack(index: _currentTabIndex, children: _appScreens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: borderColor.withOpacity(0.3), width: 0.5),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentTabIndex,
          onTap: (index) {
            setState(() {
              _currentTabIndex = index;
            });
          },
          backgroundColor: Colors.white,
          selectedItemColor: primaryBlue,
          unselectedItemColor: textSecondary,
          selectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              // Using standard home icons
              icon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.home_outlined),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.home),
              ),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              // Using standard chat/forum icons
              icon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.chat_bubble_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.chat_bubble),
              ),
              label: 'Forum',
            ),
            BottomNavigationBarItem(
              // Using standard person icons
              icon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.person_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.person),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
