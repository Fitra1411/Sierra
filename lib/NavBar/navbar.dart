import 'package:flutter/material.dart';
import 'package:testing_aplikasi/homepage.dart';
import 'package:testing_aplikasi/isi_saldo/isi_saldo.dart';
import 'package:testing_aplikasi/lainnya/more.dart';
import 'package:testing_aplikasi/produk.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const Homepage(),
    const IsiSaldo(),
    const RecomendationProduct(),
    const MorePembeli(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: pink_004,
            selectedItemColor: pink_002,
            unselectedItemColor: pink_006,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              _buildNavItem(
                iconPath: 'assets/images/Home Page.png',
                label: 'Home',
                index: 0,
              ),
              _buildNavItem(
                iconPath: 'assets/images/Online Payment.png',
                label: 'Isi Saldo',
                index: 1,
              ),
              _buildNavItem(
                iconPath: 'assets/images/Lip Gloss.png',
                label: 'Produk',
                index: 2,
              ),
              _buildNavItem(
                iconPath: 'assets/images/More.png',
                label: 'More',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String iconPath,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        iconPath,
        width: 35,
        height: 35,
        color: currentIndex == index ? pink_002 : pink_006,
      ),
      label: label,
    );
  }
}
