import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/screen/home/provider/home_provider.dart';
import 'package:media_booster/screen/music/view/music_screen.dart';
import 'package:media_booster/screen/video/view/video_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: providerW!.selectedIndex,
          iconSize: 25,
          showElevation: true,
          items: [
            FlashyTabBarItem(
                icon: Icon(Icons.music_note), title: Text("Music")),
            FlashyTabBarItem(
                icon: Icon(Icons.video_camera_back), title: Text("Video")),
          ],
          onItemSelected: (value) {
            providerR!.changeIndex(value);
          },
        ),
        body: IndexedStack(
          index: providerR!.selectedIndex,
          children: [
            MusicScreen(),
            VideoScreen()
          ],
        ),
      ),
    );
  }
}
