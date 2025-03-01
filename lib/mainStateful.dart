import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
import './gosync_apple_install.dart';
import './gosync_linux_install.dart';
import './gosync_uninstall.dart';

void main() {
  runApp(const GoSync());
}

class GoSync extends StatefulWidget {
  const GoSync({super.key});
  @override
  State<GoSync> createState() => _GoSyncState();
  // static const String _title = 'GoSync';
  static State<GoSync>? of(BuildContext context) =>
      context.findAncestorStateOfType<_GoSyncState>();
}

class _GoSyncState extends State<GoSync> {
  // int _selectedIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  ThemeMode _themeMode = ThemeMode.light;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: goSyncTitle,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light,
          // colorSchemeSeed: const Color.fromRGBO(86, 80, 14, 171),
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
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      // themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/home': (BuildContext context) => const GoSyncHome(title: goSyncTitle),
        '/appbar': (BuildContext context) => const GoSyncAppBar(),
        '/about': (BuildContext context) => const GoSyncAbout(),
        '/scrollbar0': (BuildContext context) => const GoSyncScrollbar0(),
        '/scrollbar1': (BuildContext context) => const GoSyncScrollbar1(),
        '/scrollbar2': (BuildContext context) => const GoSyncScrollbar2(),
        '/navdrawer': (BuildContext context) => const GoSyncNavDrawer(),
        '/windowsInstall': (BuildContext context) =>
            const GoSyncWindowsInstall(),
        '/appleInstall': (BuildContext context) => const GoSyncAppleInstall(),
        '/linuxInstall': (BuildContext context) => const GoSyncLinuxInstall(),
        '/uninstall': (BuildContext context) => const GoSyncUninstall(),
      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fr'), // Francais
        Locale('de'), // Deutsch
        // Locale('ga'), // Gaeilge
      ],
      home: const DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: GoSyncAppBar(),
          drawer: GoSyncNavDrawer(),
          // endDrawer: GoSyncOpenDrawer(),
          body: GoSyncHome(
            title: goSyncTitle,
          ),
          //add bottom navigation from top app || side nav drawer.
          // bottomNavigationBar: GoSyncBottomNavBar(),
          // drawerDragStartBehavior:
        ),
      ),
    );
  }
}
