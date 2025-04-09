import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
// for root bundle
// import 'package:json_theme/json_theme.dart';
// import 'dart:convert'; // json decode
import './gosync_about.dart';
import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
import './gosync_home.dart';
import './gosync_text.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';
import './gosync_windows_install.dart';
// import './gosync_apple_install.dart';
// import './gosync_linux_install.dart';
// import './gosync_uninstall.dart';

void main() {
  runApp(const GoSyncHome(title: goSyncTitle));
}

class GoSyncHome extends StatefulWidget {
  const GoSyncHome({super.key, required this.title});

  final String title;

  @override
  State<GoSyncHome> createState() => _GoSyncHomeState();
  // static <_GoSyncHomeState>? of(BuildContext context) =>
  //  context.findAncestorStateOfType<_GoSyncHomeState>();
  // _GoSyncHomeState createState() => _GoSyncHomeState();

  // ignore: library_private_types_in_public_api
  // static _GoSyncHomeState? of(BuildContext context) =>
  //     context.findAncestorStateOfType<_GoSyncHomeState>();

  static _GoSyncHomeState? of(BuildContext context) =>
      context.findAncestorStateOfType<_GoSyncHomeState>();

  // notify listeners();

  // static State<GoSyncHome>? of(BuildContext context) =>
  //     context.findAncestorStateOfType<_GoSyncHomeState>();

  // static
  // static <GoSyncHomePage>? of(BuildContext)
  // static <_GoSyncHomeState>? of(BuildContext context) => context.findAncestorStateOfType<_GoSyncHomeState>();
}

class _GoSyncHomeState extends State<GoSyncHome> {
  // bool _themeValue = false;

  // int _counter = 0;
  // static <_GoSyncHomeState>? of(BuildContext context) => context.findAncestorStateOfType<_GoSyncHomeState>();

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }
  // static <GoSyncHomePage>? of(BuildContext context) => context.findAncestorStateOfType<_GoSyncHomePageState>();

  ThemeMode _themeMode = ThemeMode.light;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
      // debugPrint('theme changed to $_themeMode');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //webpage tab title not visible on mobile app
      title: goSyncTitle2,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/home':
            (BuildContext context) => const GoSyncHomePage(title: goSyncTitle),
        '/appbar': (BuildContext context) => GoSyncAppBar(),
        '/about': (BuildContext context) => const GoSyncAbout(),
        '/scrollbar0': (BuildContext context) => GoSyncScrollbar0(),
        '/scrollbar1': (BuildContext context) => const GoSyncScrollbar1(),
        '/scrollbar2': (BuildContext context) => const GoSyncScrollbar2(),
        '/navdrawer': (BuildContext context) => GoSyncNavDrawer(),
        '/windowsInstall':
            (BuildContext context) => const GoSyncWindowsInstall(),
        // '/appleInstall': (BuildContext context) => const GoSyncAppleInstall(),
        // '/linuxInstall': (BuildContext context) => const GoSyncLinuxInstall(),
        // '/uninstall': (BuildContext context) => const GoSyncUninstall(),
      },
      // localizationsDelegates: [
      //   // AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'), // English
      //   Locale('fr'), // Francais
      //   Locale('de'), // Deutsch
      //   // Locale('ga'), // Gaeilge
      // ],
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      // home: const GoSyncHomePage(title: goSyncTitle),
      home: DefaultTabController(
        length: 3,
        child: GoSyncHomePage(title: goSyncTitle),
      ),
    );
  }
}
