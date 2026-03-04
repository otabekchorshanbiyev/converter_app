import 'package:convertera_app/screens/currency_converter_screen.dart';
import 'package:convertera_app/screens/home_screen/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // home_screen.dart da:
  int _selectedTab = 0;
  final List<Widget> _tabContents = const [
    CurrencyConverterScreen(),
    Center(child: Text('Grafik')),
    Center(child: Text('Sevimli')),
    Center(child: Text('Sozlama')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      body: _tabContents[_selectedTab], // tab ga qarab kontent
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedTab,
        onTabChanged: (index) {
          setState(() => _selectedTab = index);
        },
      ),
    );
  }
}
