// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:google_fonts/google_fonts.dart';
// // for root bundle
// // import 'package:json_theme/json_theme.dart';
// // import 'dart:convert'; // json decode
// // import './gosync_about.dart';
// import './gosync_appbar.dart';
// import './gosync_navdrawer.dart';
// import './gosync_home.dart';
// import './gosync_text.dart';
// import './gosync_scrollbar0.dart';
// import './gosync_scrollbar1.dart';
// import './gosync_scrollbar2.dart';
// // import './gosync_windows_install.dart';
// // import './gosync_apple_install.dart';
// // import './gosync_linux_install.dart';
// // import './gosync_uninstall.dart';
//
// void main() {
//   runApp(const GoSync());
// }
//
// class GoSync extends StatelessWidget {
//   const GoSync({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //webpage tab title
//       title: goSyncTitle2,
//       // theme: ThemeData(
//       //   // This is the theme of your application.
//       //   //
//       //   // TRY THIS: Try running your application with "flutter run". You'll see
//       //   // the application has a purple toolbar. Then, without quitting the app,
//       //   // try changing the seedColor in the colorScheme below to Colors.green
//       //   // and then invoke "hot reload" (save your changes or press the "hot
//       //   // reload" button in a Flutter-supported IDE, or press "r" if you used
//       //   // the command line to start the app).
//       //   //
//       //   // Notice that the counter didn't reset back to zero; the application
//       //   // state is not lost during the reload. To reset the state, use hot
//       //   // restart instead.
//       //   //
//       //   // This works for code too, not just values: Most code changes can be
//       //   // tested with just a hot reload.
//       //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       // ),
//       // home: const GoSyncHomePage(title: 'gosync 20250301'),
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.orange,
//           brightness: Brightness.light,
//           // colorSchemeSeed: const Color.fromRGBO(86, 80, 14, 171),
//         ),
//         textTheme: TextTheme(
//           displayLarge: const TextStyle(
//             fontSize: 72,
//             fontWeight: FontWeight.bold,
//           ),
//           titleLarge: GoogleFonts.oswald(
//             fontSize: 30,
//             fontStyle: FontStyle.italic,
//           ),
//           bodyMedium: GoogleFonts.merriweather(),
//           displaySmall: GoogleFonts.pacifico(),
//         ),
//       ),
//       darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
//       // themeMode: ThemeMode.light,
//       // themeMode: ThemeMode.dark,
//       themeMode: ThemeMode.system,
//       initialRoute: '/',
//       routes: {
//         '/home': (BuildContext context) => const GoSyncHome(title: goSyncTitle),
//         '/appbar': (BuildContext context) => const GoSyncAppBar(),
//         // '/about': (BuildContext context) => const GoSyncAbout(),
//         '/scrollbar0': (BuildContext context) => const GoSyncScrollbar0(),
//         '/scrollbar1': (BuildContext context) => const GoSyncScrollbar1(),
//         '/scrollbar2': (BuildContext context) => const GoSyncScrollbar2(),
//         '/navdrawer': (BuildContext context) => const GoSyncNavDrawer(),
//         // '/windowsInstall':
//         //     (BuildContext context) => const GoSyncWindowsInstall(),
//         // '/appleInstall': (BuildContext context) => const GoSyncAppleInstall(),
//         // '/linuxInstall': (BuildContext context) => const GoSyncLinuxInstall(),
//         // '/uninstall': (BuildContext context) => const GoSyncUninstall(),
//       },
//       // localizationsDelegates: [
//       //   // AppLocalizations.delegate,
//       //   GlobalMaterialLocalizations.delegate,
//       //   GlobalWidgetsLocalizations.delegate,
//       //   GlobalCupertinoLocalizations.delegate,
//       // ],
//       // supportedLocales: [
//       //   Locale('en'), // English
//       //   Locale('fr'), // Francais
//       //   Locale('de'), // Deutsch
//       //   // Locale('ga'), // Gaeilge
//       // ],
//       // localizationsDelegates: AppLocalizations.localizationsDelegates,
//       // supportedLocales: AppLocalizations.supportedLocales,
//       // home: const GoSyncHomePage(title: goSyncTitle),
//       home: DefaultTabController(
//         length: 3,
//         child: GoSyncHomePage(title: goSyncTitle),
//       ),
//       //  GoSyncHomePage(title: goSyncTitle),
//     );
//   }
// }
//
// class GoSyncHomePage extends StatefulWidget {
//   const GoSyncHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<GoSyncHomePage> createState() => _GoSyncHomePageState();
// }
//
// class _GoSyncHomePageState extends State<GoSyncHomePage> {
//   // int _counter = 0;
//
//   // void _incrementCounter() {
//   //   setState(() {
//   //     // This call to setState tells the Flutter framework that something has
//   //     // changed in this State, which causes it to rerun the build method below
//   //     // so that the display can reflect the updated values. If we changed
//   //     // _counter without calling setState(), then the build method would not be
//   //     // called again, and so nothing would appear to happen.
//   //     _counter++;
//   //   });
//   // }
//
//   // ThemeMode _themeMode = ThemeMode.light;
//
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       // title: 'Material App',
//       // themeMode: _themeMode,
//       // theme: ThemeData(),
//       // darkTheme: ThemeData.dark(),
//       // home: Home(),
//
//       appBar: GoSyncAppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the GoSyncHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         // title: Text(widget.title),
//         // title: goSyncTitle
//       ),
//       drawer: GoSyncNavDrawer(),
//       body: GoSyncHome(title: goSyncTitle),
//       // appBar: AppBar(
//       //   // TRY THIS: Try changing the color here to a specific color (to
//       //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//       //   // change color while the other colors stay the same.
//       //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       //   // Here we take the value from the GoSyncHomePage object that was created by
//       //   // the App.build method, and use it to set our appbar title.
//       //   title: Text(widget.title),
//       // ),
//       // body: Center(
//       //   // Center is a layout widget. It takes a single child and positions it
//       //   // in the middle of the parent.
//       //   child: Column(
//       //     // Column is also a layout widget. It takes a list of children and
//       //     // arranges them vertically. By default, it sizes itself to fit its
//       //     // children horizontally, and tries to be as tall as its parent.
//       //     //
//       //     // Column has various properties to control how it sizes itself and
//       //     // how it positions its children. Here we use mainAxisAlignment to
//       //     // center the children vertically; the main axis here is the vertical
//       //     // axis because Columns are vertical (the cross axis would be
//       //     // horizontal).
//       //     //
//       //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//       //     // action in the IDE, or press "p" in the console), to see the
//       //     // wireframe for each widget.
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       const Text('You have pushed the button this many times:'),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.headlineMedium,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
