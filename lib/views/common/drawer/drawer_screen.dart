import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/controllers/zoom_provider.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  final ValueSetter? indexSetter;
  const DrawerScreen({super.key, this.indexSetter});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZoomNotifier>(
      builder: (context, zoomNotifier, child) {
        return GestureDetector(
          onDoubleTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: Scaffold(
            backgroundColor: Color(kLightBlue.value),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value),
                        ),
                        child: Text(
                          'JobHub',
                          style: TextStyle(
                            color: Color(kDarkBlue.value),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Color(kDarkBlue.value),
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(kDarkBlue.value),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          widget.indexSetter!(0);
                          ZoomDrawer.of(context)!.toggle();
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Color(kDarkBlue.value),
                        ),
                        title: Text(
                          'Profile',
                          style: TextStyle(
                            color: Color(kDarkBlue.value),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          widget.indexSetter!(1);
                          ZoomDrawer.of(context)!.toggle();
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Color(kDarkBlue.value),
                        ),
                        title: Text(
                          'Settings',
                          style: TextStyle(
                            color: Color(kDarkBlue.value),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          widget.indexSetter!(2);
                          ZoomDrawer.of(context)!.toggle();
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Color(kDarkBlue.value),
                        ),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            color: Color(kDarkBlue.value),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          widget.indexSetter!(3);
                          ZoomDrawer.of(context)!.toggle();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
