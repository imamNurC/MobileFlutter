import 'package:flutter/material.dart';
import 'package:uassmt6/home_screen.dart';
import 'package:uassmt6/movie_screen.dart';
import 'package:uassmt6/profile_detail_screen.dart';
import 'package:uassmt6/profile_screen.dart';

void main() => runApp(WidgetSaya());

class WidgetSaya extends StatelessWidget {
  WidgetSaya({super.key});
  // This widget is the root of your application.
  //
  var screens = [HomeScreen(), Profile()];
  var screenIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter rest api",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgColor,
        useMaterial3: true,
      ),
      home: Obx(() => Scaffold(
            body: Center(
              child: screens[screenIndex.value],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
              selectedItemColor: Colours.ratingColor, // Set dynamic color
              unselectedItemColor: Colors.white, // Set unselected color
              currentIndex: screenIndex.value, // Tambahkan baris ini
              onTap: (value) {
                screenIndex.value = value;
              },
            ),
          )),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;
//   const MyHomePage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
