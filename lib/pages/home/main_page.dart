import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:kavacare/pages/home/activity_page.dart';
import 'package:kavacare/pages/home/careplane_page.dart';
import 'package:kavacare/pages/home/home_page.dart';
import 'package:kavacare/pages/home/notification_page.dart';
import 'package:kavacare/pages/home/profile_page.dart';
import 'package:kavacare/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const CareplanPage();
        case 2:
          return const ActivityPage();
        case 3:
          return const NotificationPage();
        case 4:
          return const ProfilePage();

        default:
          return const HomePage();
      }
    }

    Widget bottomNavBar() {
      return BottomNavigationBar(
        currentIndex: currentIndex,
        selectedLabelStyle: regularS,
        unselectedLabelStyle: regularS,
        selectedItemColor: primaryMainColor,
        unselectedItemColor: netral70,
        showUnselectedLabels: true,
        onTap: (value) {
          // print(value);
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.home,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.clipboardList,
            ),
            label: 'Careplan',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.clock,
            ),
            label: 'Aktifitas',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.bell,
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(
              HeroIcons.user,
            ),
            label: 'Profil',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: netral20,
      body: body(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
