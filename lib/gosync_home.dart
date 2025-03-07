import 'package:flutter/material.dart';
import './gosync_navdrawer.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';

class GoSyncHomePage extends StatelessWidget {
  const GoSyncHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();
    debugPrint("gosync_home & tabs loaded");
    return const Scaffold(
      drawer: GoSyncNavDrawer(),
      body: TabBarView(
        children: <Widget>[
          GoSyncScrollbar0(),
          GoSyncScrollbar1(),
          GoSyncScrollbar2(),
        ],
      ),
    );
  }
}
