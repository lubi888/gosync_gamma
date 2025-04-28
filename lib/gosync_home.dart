import 'package:flutter/material.dart';
// import './main.dart';
import './gosync_navdrawer.dart';
import './gosync_appbar.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';

class GoSyncHomePage extends StatefulWidget {
  const GoSyncHomePage({super.key, required this.title});

  final String title;

  @override
  State<GoSyncHomePage> createState() => _GoSyncHomePageState();
}

class _GoSyncHomePageState extends State<GoSyncHomePage> {
  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();
    debugPrint("gosync_home & tabs loaded");
    return Scaffold(
      appBar: GoSyncAppBar(),
      drawer: GoSyncNavDrawer(),
      body: TabBarView(
        children: <Widget>[
          GoSyncScrollbar0(),
          GoSyncScrollbar1(),
          GoSyncScrollbar2(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: _incrementCounter,
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// import 'package:flutter/material.dart';
// import './gosync_navdrawer.dart';
// import './gosync_appbar.dart';
// import './gosync_scrollbar0.dart';
// import './gosync_scrollbar1.dart';
// import './gosync_scrollbar2.dart';

// class GoSyncHomePage extends StatelessWidget {
//   const GoSyncHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     () => Scaffold.of(context).openDrawer();
//     debugPrint("gosync_home & tabs loaded");
//     return const Scaffold(
//       appBar: GoSyncAppBar(),
//       drawer: GoSyncNavDrawer(),
//       body: TabBarView(
//         children: <Widget>[
//           GoSyncScrollbar0(),
//           GoSyncScrollbar1(),
//           GoSyncScrollbar2(),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         // onPressed: _incrementCounter,
//         onPressed: null,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
