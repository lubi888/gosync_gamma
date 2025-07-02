import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import './main.dart';
// import './gosync_home.dart';
// import './gosync_appbar.dart';
// import './gosync_scrollbar0.dart';
// import './gosync_scrollbar1.dart';
// import './gosync_scrollbar2.dart';
// import './gosync_text.dart';

// import 'package:json_theme/json_theme.dart';
// import 'package:gosync/gosync_text.dart';
// import 'package:google_fonts/google_fonts.dart';

// import './gosync_urllinks.dart';
// import './ethsync_walletdrawer.dart';
// import './ethsync_barcodescanner.dart';
// import './ethsync_extendedimage.dart';
// import './ethsync_scrollbar0.dart';
// import './ethsync_scrollbar1.dart';

const String _kAsset1 = 'assets/images/golang_developers.png';
const String _kAsset2 = 'assets/images/_kAsset32.png';
const String _kAsset3 = 'assets/images/footer-gopher.jpg';
const String _kAsset4 = 'assets/images/gethTerm.png';

// class GoSyncNavDrawer extends StatelessWidget {
//   GoSyncNavDrawer({super.key});

class GoSyncNavDrawer extends StatefulWidget {
  const GoSyncNavDrawer({super.key});

  @override
  State<GoSyncNavDrawer> createState() => _GoSyncNavDrawerState();
}

class _GoSyncNavDrawerState extends State<GoSyncNavDrawer> {
  bool _themevalue = true;

  @override
  Widget build(BuildContext context) {
    debugPrint('navdrawer opened at [time]');
    print(TimeOfDay.now());
    // debugPrint ('theme changed');
    // Scaffold.of(context).openDrawer();
    return Drawer(
      width: 400.0,
      // elevation: 50.0,
      // backgroundColor: Colors.black,
      // shadowColor: Colors.redAccent,
      // shape: ,
      // child: SafeArea(
      semanticLabel: 'drawer',
      child: ListView(
        // child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home, color: Colors.green),
            title: const Text(
              'home button',
              style: TextStyle(color: Colors.blue),
            ),
            trailing: const Icon(Icons.home_max, color: Colors.yellow),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          // drawer header 1
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(_kAsset1),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              "drawer header",
              // AppLocalizations.of(context)!.drawerHeader,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.yellow,
              ),
            ),
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "app info & settings",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellowAccent),
            ),
            leading: const Icon(
              Icons.info_outline,
              // FontAwesomeIcons.google,
              color: Colors.deepOrangeAccent,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(Icons.home, color: Colors.green),
                title: const Text(
                  'home button',
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: const Icon(Icons.colorize, color: Colors.yellow),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              SwitchListTile(
                tileColor: Colors.deepOrange,
                secondary: Icon(Icons.lightbulb_outline, color: Colors.yellow),
                title: const Text(
                  'theme switch: Day or Night',
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  'light or dark',
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
                activeColor: Colors.yellowAccent,
                inactiveThumbImage: AssetImage(_kAsset1),
                activeThumbImage: AssetImage(_kAsset2),
                // inactiveThumbImage: Icons(Icons.color_lens_outlined, Colors.yellowAccent),
                value: _themevalue,
                onChanged: (value) {
                  _themevalue = value;
                  if (_themevalue) {
                    GoSyncHome.of(context)!.changeTheme(ThemeMode.dark);
                  } else {
                    GoSyncHome.of(context)!.changeTheme(ThemeMode.light);
                  }
                },
              ),
              // theme selection beta triline.
              const ListTile(
                isThreeLine: true,
                leading: Icon(Icons.color_lens_outlined, color: Colors.yellow),
                title: Text(
                  'theme selection beta',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Text(
                  'theme dark  \n theme dark 2',
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: Icon(Icons.colorize, color: Colors.green),
              ),
              ListTile(
                leading: const Icon(Icons.bug_report, color: Colors.orange),
                title: const Text(
                  'bug report & make suggestions. email us at go@gomo.com',
                  style: TextStyle(color: Colors.yellow),
                ),
                trailing: const Icon(
                  Icons.bug_report_outlined,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  Share.share(
                    'check out my website https://gosync.com',
                    subject: 'Bugs & Suggestions emails',
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.share, color: Colors.pinkAccent),
                title: const Text(
                  'share this app, gosync.com',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                trailing: const Icon(
                  Icons.ios_share,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  Share.share(
                    'check out my website https://gosync.com',
                    subject:
                        'Look what I found! golang language assist app gosync.com',
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.info_outline,
                  color: Colors.greenAccent,
                ),
                title: const Text(
                  'about this app & thanks to contributors',
                  style: TextStyle(color: Colors.yellowAccent),
                ),
                trailing: const Icon(
                  Icons.help_center,
                  color: Colors.orangeAccent,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go installation levels",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow),
            ),
            // leading: Icon(Icons.person), //add icon
            leading: const Icon(
              Icons.school,
              // FontAwesomeIcons.googleScholar,
              color: Colors.red,
            ),
            childrenPadding: const EdgeInsets.only(
              left: 20,
            ), //children padding origianlly 60
            children: [
              // Divider(color: Colors.grey.shade400, indent: 72.0, height: 1.0),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.windows,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'windows basic go install using gorretct directory structure && setting environment variables.',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'windows go install windows basic go install using gorretct directory structure && setting environment variables.golang',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                // isThreeLine: true,
                trailing: const Icon(
                  FontAwesomeIcons.windows,
                  color: Colors.lightGreen,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  Navigator.pushNamed(context, '/install_primary');
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.apple, color: Colors.grey),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'container Install & collaborative goup coding',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'docker & kubernetes container go production & github hookup ',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.apple,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  Navigator.pushNamed(context, '/install_secondary');
                },
              ),
              // list tile 5 deep link youtube
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.linux,
                  color: Colors.red,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'go pro. production professional environment',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'professional go production environment',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.linux,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  Navigator.pushNamed(context, '/install_tertiary');
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go commands",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            leading: const Icon(
              FontAwesomeIcons.laptopCode,
              color: Colors.blue,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'go standard library',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'library commands',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoStandardLibrary();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'pkg.go.dev/cmd/go    \ngo <command> [arguments]',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'go is a tool for managing Go source code. \nUse "go help <command>" for more information about a command.',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  _launchPkgGoDevGo();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'go env environment check.',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'print Go environment information \ncheck go install directoris setup and environment variables',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  _launchGoEnv();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'go path',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'print and change GOPATH environment variable',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoPath();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: Text(
                  // 'add eth|etc address - acccount',
                  // 'go build',
                  AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'compile packages and dependencies',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoBuild();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.code,
                  color: Colors.pink,
                ),
                title: Text(
                  // 'add eth|etc address - acccount',
                  // 'go run',
                  AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'go run main.go application',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.codeCompare,
                  color: Colors.green,
                ),
                onTap: () {
                  _launchGoRun();
                },
              ),
            ],
          ),
          // expansion tile install levels
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go IDEs",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow),
            ),
            // leading: Icon(Icons.person), //add icon
            leading: const Icon(
              Icons.integration_instructions_outlined,
              // FontAwesomeIcons.googleScholar,
              color: Colors.yellow,
            ),
            childrenPadding: const EdgeInsets.only(
              left: 20,
            ), //children padding origianlly 60
            children: [
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.windows,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Visual Studio Code.',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'fast, open source and just add golang extension',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                // isThreeLine: true,
                trailing: const Icon(
                  FontAwesomeIcons.windows,
                  color: Colors.lightGreen,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchVisualStudioCode();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.codeFork,
                  color: Colors.grey,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Jetbrains GoLand',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'professional IDE try for free. Pro version about \$300 per annum ',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.desktop,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchJetbrainsGoLand();
                },
              ),
              // list tile 3
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.linux,
                  color: Colors.red,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Vim Golang',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'stalworth vim plugin',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.windows,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchVimGo();
                },
              ),
              // list tile 4
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.codeBranch,
                  color: Colors.yellow,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit LiteIDE',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'advanced IDE code editor',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.desktop,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchLiteIDE();
                },
              ),
              // listtile 5
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.codeFork,
                  color: Colors.grey,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Eclipse',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'cross platform ide https://www.eclipse.org/',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.desktop,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchEclipseGo();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.codeFork,
                  color: Colors.grey,
                ),
                title: const Text(
                  'visit CodeLite',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'cross platform ide written in go',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.desktop,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  _launchCodeLiteGo();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.codeFork,
                  color: Colors.grey,
                ),
                title: const Text(
                  'visit AdaCore',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'community edition is for free. Pro version available https://www.adacore.com/download ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.desktop,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchAdaCoreGo();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.codeFork,
                  color: Colors.grey,
                ),
                title: const Text(
                  'visit Netbeans',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'apache open source servers cross platform ide https://netbeans.apache.org/front/main/index.html',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.server,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchNetbeansGo();
                },
              ),
            ],
          ),
          // try something new drawer header 2
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(_kAsset2),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              // drawerHeader 'go designers,
              "header drawer 2",
              // AppLocalizations.of(context)!.drawerHeader2,
              // style: const TextStyle(color: Colors.purpleAccent),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.visible,
              // softWrap: true,
              // maxLines: 2,
              style: const TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.yellow,
              ),
            ),
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go.dev",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent),
            ),
            leading: const Icon(
              FontAwesomeIcons.golang,
              color: Colors.amber,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  // Icons.access_alarms,
                  FontAwesomeIcons.golang,
                  color: Colors.redAccent,
                ),
                title: const Text(
                  'main go website',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                subtitle: const Text(
                  'visit go.dev',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.redAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.blue,
                ),
                onTap: () {
                  _launchGoDev();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.account_balance,
                  FontAwesomeIcons.golang,
                  color: Colors.teal,
                ),
                title: Text(
                  "visit google play",
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: const TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'go.dev/play and run some samples',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googlePlay,
                  color: Colors.orangeAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchPlayGolang();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.account_balance,
                  FontAwesomeIcons.golang,
                  color: Colors.blue,
                ),
                title: const Text(
                  "search for some packages",
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'pkg.go.dev',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googleScholar,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchPkgGoDev();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.account_balance,
                  FontAwesomeIcons.golang,
                  color: Colors.pink,
                ),
                title: const Text(
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  'current release notes',
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: const Text(
                  'go is updated twice yearly with minor bug fixes about 1 month after a major release',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googleScholar,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoRelease();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.account_balance,
                  FontAwesomeIcons.golang,
                  color: Colors.blue,
                ),
                title: const Text(
                  "search for some packages",
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'pkg.go.dev',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googleScholar,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchPkgGoDev();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.account_balance,
                  FontAwesomeIcons.golang,
                  color: Colors.orangeAccent,
                ),
                title: const Text(
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  'blog rolling notes',
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  // 'latest release notes from [date] release [num]',
                  'updated twice monthly',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoBlog();
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "golang global use index",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent),
            ),
            leading: const Icon(
              // FontAwesomeIcons.google,
              Icons.code_outlined,
              color: Colors.blueAccent,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.chartSimple,
                  color: Colors.blue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'tiobe global index of top programming languages',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'golang currently number 7',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoTiobe();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.chartSimple,
                  color: Colors.greenAccent,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'index.dev global index of top programming languages',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.teal),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'golang currently number 8 out of 20 for 2025',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.orangeAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoIndexDev();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.chartSimple,
                  color: Colors.greenAccent,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'geeks for geeks global index of top programming languages 2025',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'golang currently number 6 in hte top 10 for 2025',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.green,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoGeeksForGeeks();
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.chartSimple,
                  color: Colors.greenAccent,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'pluralsight index of top programming languages 2025',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'golang currently number 9 in hte top 10 for 2025',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.redAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchYouTube();
                  _launchGoPluralsight();
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "written guides, books, schwag",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple),
            ),
            leading: const Icon(
              Icons.read_more,
              color: Colors.amber,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  Icons.account_balance,
                  color: Colors.tealAccent,
                ),
                title: const Text(
                  'visit Gopher guides',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'professional approoved gopher guide tutorials and articles about new packages',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.orangeAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googleScholar,
                  color: Colors.lightBlueAccent,
                ),
                onTap: () {
                  _launchGopherGuides();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.wikipediaW,
                  color: Colors.blueGrey,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Wikpedia surface web and deep link',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to Wikimedia',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.wikipediaW,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchWikpediaGo();
                  //   launch deep linking youtube.
                },
              ),
              // paddings seperator
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.medium,
                  color: Colors.yellow,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Medium tag Golang',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to Medium',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.mediumM,
                  color: Colors.purple,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchMediumTagGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_balance,
                  color: Colors.yellowAccent,
                ),
                title: const Text(
                  'visit Medium with tags golang and go',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'medium golang tutorials, tips, tricks, opinions',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.purpleAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.medium,
                  color: Colors.lightGreenAccent,
                ),
                onTap: () {
                  _launchMediumGolang();
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.amazon, color: Colors.red),
                title: const Text(
                  'visit Amazon golang books',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'amazon books and digital books',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.amazon,
                  color: Colors.orangeAccent,
                ),
                onTap: () {
                  _launchAmazonGolang();
                },
              ),
              ListTile(
                leading: const Icon(Icons.book, color: Colors.red),
                title: const Text(
                  'visit Google Play Books golang books',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'google play digital books',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googlePlay,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  _launchGooglePlayBooksGolang();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.yellowAccent,
                ),
                title: const Text(
                  'visit eBay golang books',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'golang books but also many hardware items like gophers, t-shirts, caps',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.ebay,
                  color: Colors.greenAccent,
                ),
                onTap: () {
                  _launchEbayGolang();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.yellowAccent,
                ),
                title: const Text(
                  'visit Gopher market',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'indie golang merchandise',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                trailing: const Icon(Icons.store, color: Colors.greenAccent),
                onTap: () {
                  _launchGolangMarket();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.blueAccent,
                ),
                title: const Text(
                  'visit Google general merchandise store',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: const Text(
                  'no golang merch but lots of other official items',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.redAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.googlePay,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  _launchGoogleMerch();
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "socials",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            leading: const Icon(
              // FontAwesomeIcons.twitter,
              Icons.chat_bubble_outline_outlined,
              color: Colors.blue,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit YouTube @golang programming',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to youtube from google',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.squareYoutube,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchYouTube();
                },
              ),
              // list tile 5 deep link XTwitter
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.lightBlue,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit X Twitter @golang go programming surface web and deep link',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to X Twitter',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.xTwitter,
                  color: Colors.lightBlue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchTwitterGolang();
                  //   launch deep linking youtube.
                },
              ),
              // list tile 5 deep link Mastodon
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.mastodon,
                  color: Colors.greenAccent,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Mastodon @golang hash tag',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'general hash tag for go programmers chatting',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.mastodon,
                  color: Colors.lightGreen,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchMastodonGo();
                  //   launch deep linking youtube.
                },
              ),
              // list tile 65 deep link blue sky
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.bluesky,
                  color: Colors.yellowAccent,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit blue Sky @golang 4k subscribers',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to Blue Sky social',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.purple,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.bluesky,
                  color: Colors.orange,
                ),
                onTap: () {
                  // launch bluesky social
                  // Navigator.of(context).pop();
                  // _launchTwitterGolang();
                  _launchBlueSkyGo();
                  //   launch deep linking youtube.
                },
              ),
              // list tile 7 deep link Truth Social
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.yellowAccent,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Facebook @golang 7k subscribers',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to FBook',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // laucch truth social
                  // Navigator.of(context).pop();
                  _launchFacebookGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.redditAlien,
                  color: Colors.orange,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Reddit community',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to reddit/golang',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.reddit,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchSlackGo();
                  _launchRedditGolang();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.dev,
                  color: Colors.yellow,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Dev community',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to dev.to/golang',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(FontAwesomeIcons.dev, color: Colors.blue),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchSlackGo();
                  _launchDevGolang();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  // Icons.tv,
                  FontAwesomeIcons.instagram,
                  color: Colors.purple,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Instagram @golang programming',
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to instagram',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.instagramSquare,
                  color: Colors.orange,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchYouTube();
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.wikipediaW,
                  color: Colors.blueGrey,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Wikpedia surface web and deep link',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to Wikimedia',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.wikipediaW,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchWikpediaGo();
                  //   launch deep linking youtube.
                },
              ),
              // paddings seperator
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.medium,
                  color: Colors.yellow,
                  // Icons.alternate_email_rounded,
                  // Icons.flutter_dash,
                  // color: Colors.lightBlue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Medium tag Golang',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep link to Medium',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.mediumM,
                  color: Colors.purple,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchMediumTagGo();
                  //   launch deep linking youtube.
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go help",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow),
            ),
            leading: const Icon(
              Icons.help_outline,
              color: Colors.green,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 20), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.stackOverflow,
                  color: Colors.orangeAccent,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit StackOverflow and StackExachange and find the latest questions being asked.',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'link to stackoverflow.',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.stackExchange,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchStackOverflow();
                  //   launch deep linking youtube.
                },
              ),

              // list tile 6 github deep link github
              ListTile(
                leading: const Icon(
                  // Icons.desktop_windows,
                  FontAwesomeIcons.github,
                  color: Colors.white,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Github and help solve the latest issues. Surface link to this website or deep link open github mobile app.',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'github.com/golang/go/issues',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellow,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.microsoft,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGithubGo();
                  //   launch deep linking youtube.
                },
              ),

              ListTile(
                leading: const Icon(
                  // Icons.desktop_windows,
                  FontAwesomeIcons.slack,
                  color: Colors.pink,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Slack the messaging app that brings your whole team together',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'see what Gophers is up to',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.salesforce,
                  color: Colors.lightBlue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchSlackGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.discord,
                  color: Colors.yellow,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Discord Gophers and see the latest questions being asked.',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep discord link.',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.discord,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchDiscordGophers(); //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat, color: Colors.red),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Forum for gophers',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'forum',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.purple,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchDiscordGophers();
                  _launchGoForum();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(Icons.group, color: Colors.yellow),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Groups for godev and go-nuts gophers',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'golang group go-nuts',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.orange,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchDiscordGophers();
                  _launchGroupGolangDev();
                  //   launch deep linking youtube.
                },
              ),

              ListTile(
                leading: const Icon(Icons.speaker_notes, color: Colors.grey),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit IRC internet relay chat. you will need an IRC internet relay chat app to interact.',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'IRC opens new app',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.teal,
                  ),
                ),
                trailing: const Icon(Icons.speaker_notes, color: Colors.orange),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoIRC();
                  //   launch deep linking youtube.
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go a.i.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            leading: const Icon(Icons.android, color: Colors.amber), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(Icons.chat, color: Colors.red),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Gemini code assist',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'gemini agents',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchDiscordGophers();
                  _launchGeminiCodeAssist();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.search,
                  color: Colors.yellow,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Copilot',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep Bing and MS link.',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.microsoft,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGithubCopilot(); //   launch deep linking youtube.
                },
              ),
              // ai 3
              ListTile(
                leading: const Icon(Icons.chat, color: Colors.red),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Go Wiki AI',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.blue),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'build AI agents with golang',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // _launchDiscordGophers();
                  _launchGoWikiAI();
                  //   launch deep linking youtube.
                },
              ),
              // aii 4
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.search,
                  color: Colors.yellow,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Workik',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'deep ai integration with collaboration.',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.microsoft,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoWorkik(); //   launch deep linking youtube.
                },
              ),
            ],
          ),
          // drawer header 3
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(_kAsset3),
                fit: BoxFit.contain,
              ),
            ),
            // onTap: () {
            //   // Navigator.of(context).pop();
            //   _launchGoGDG();
            //   //   launch deep linking youtube.
            // },
            child: Text(
              // drawerHeader 'go designers,
              "drawer head 3",
              // AppLocalizations.of(context)!.drawerHeader3,
              // style: const TextStyle(color: Colors.purpleAccent),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.visible,
              // softWrap: true,
              // maxLines: 2,
              style: const TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.yellow,
              ),
            ),
          ),
          const ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              "go art logos, photos & screenshots",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.orangeAccent),
            ),
            leading: Icon(
              Icons.photo_camera_outlined,
              color: Colors.amber,
            ), //add icon
            childrenPadding: EdgeInsets.only(left: 30), //children padding
            children: [
              // ListTiles
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go events",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.redAccent),
            ),
            leading: const Icon(
              Icons.event_outlined,
              // FontAwesomeIcons.google,
              color: Colors.purple,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 30), //children padding
            children: [
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.blue,
                ),
                title: const Text(
                  // 'add eth|etc address - acccount',
                  'visit Gophercon and find out where the next yearly conference is taking place. ',
                  // visitGoPlayground,
                  // AppLocalizations.of(context)!.visitGoDevPlay,
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  // 'https://play.golang.com/',
                  'gophercon happens once a year and [countdown clock here && add to calendar?]',
                  // https://go.dev/play/
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.lightBlue,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGophercon();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.googleScholar,
                  color: Colors.yellowAccent,
                ),
                title: const Text(
                  'find your nearest GDG Google Developers Group',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                subtitle: const Text(
                  'hookup with your nearest develper group and ask some questions and network for job opportunities',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.greenAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoGDG();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(FontAwesomeIcons.meetup, color: Colors.red),
                title: const Text(
                  'find your nearest Meetup Google Group',
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: const Text(
                  'hookup with other professionals',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.meetup,
                  color: Colors.greenAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoMeetup();
                  //   launch deep linking youtube.
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "hire go programmers",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.orangeAccent),
            ),
            leading: const Icon(
              Icons.emoji_people,
              color: Colors.red,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 20), //children padding
            children: [
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit LinkedIn for go programmers',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some programmer profiles',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchLinkedInGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(Icons.person, color: Colors.red),
                title: const Text(
                  'visit Freelancers for go programmers',
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  'hire some programmers',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.teal,
                  ),
                ),
                trailing: const Icon(
                  // FontAwesomeIcons.linkedinIn,
                  Icons.work,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchFreelancer();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(Icons.person, color: Colors.pink),
                title: const Text(
                  'visit Upwork for go programmers',
                  style: TextStyle(color: Colors.yellow),
                ),
                subtitle: const Text(
                  'hire some programmers online',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.orange,
                  ),
                ),
                trailing: const Icon(
                  // FontAwesomeIcons.linkedinIn,
                  Icons.work_off_sharp,
                  color: Colors.purple,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchUpworkGolang();
                  //   launch deep linking youtube.
                },
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "go servers",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.pink),
            ),
            leading: const Icon(
              Icons.cloud_outlined,
              color: Colors.blue,
            ), //add icon
            childrenPadding: const EdgeInsets.only(left: 20), //children padding
            children: [
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Digital Ocean',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'sign up and get \$200 of credit to try our products over 60 days!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.purpleAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchDigitalOceanGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.server,
                  color: Colors.orangeAccent,
                ),
                title: const Text(
                  'visit Heroku',
                  style: TextStyle(color: Colors.lightGreen),
                ),
                subtitle: const Text(
                  'look at some go platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.purpleAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.server,
                  color: Colors.yellowAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchHerokuGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.cyan,
                ),
                title: const Text(
                  'visit A2Hosting',
                  style: TextStyle(color: Colors.orange),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  // FontAwesomeIcons.digitalOcean,
                  Icons.cloud,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchA2HostingGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Hostinger',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchHostingerGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Vercel',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchVercelGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Nodechef',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchNodechefGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Scalingo',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchScalingoGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit AWS Amazon Web Services',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.amazon,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchAmazonWebServicesGo();
                  //   launch deep linking youtube.
                },
              ),
              ListTile(
                // leading:
                // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                leading: const Icon(
                  FontAwesomeIcons.digitalOcean,
                  color: Colors.lightBlue,
                ),
                title: const Text(
                  'visit Google Cloud',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                subtitle: const Text(
                  'look at some platform server setups',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  _launchGoogleCloudGo();
                  //   launch deep linking youtube.
                },
              ),
            ],
          ),
          // drawer header 4
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(_kAsset4),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              // drawerHeader 'go designers,
              "drawer header 4",
              // AppLocalizations.of(context)!.drawerHeader4,
              // style: const TextStyle(color: Colors.purpleAccent),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.visible,
              // softWrap: true,
              // maxLines: 2,
              style: const TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                // ] //children
              ),
            ),
          ),
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(_kAsset4),
                fit: BoxFit.contain,
              ),
            ),
            // onTap: () {
            //   // Navigator.of(context).pop();
            //   _launchGoGDG();
            //   _launchPlayGolang(
            //   //   launch deep linking youtube.
            // },
            child: Text(
              // drawerHeader 'go designers,
              // AppLocalizations.of(context)!.drawerHeader4,
              "drawer head 4",
              // style: const TextStyle(color: Colors.purpleAccent),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.visible,
              // softWrap: true,
              // maxLines: 2,
              style: const TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text(
    'Thanks for visiting goSync. Goodbye!',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 22.0),
  ),
  duration: Duration(seconds: 3),
);

final Uri _urlPlayGolangHelloCode = Uri.parse(
  'https://play.golang.com/p/IBY3bOlTbu9',
);

Future<void> _launchPlayGolangHelloCode() async {
  debugPrint("customer left app to go hello example at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolangHelloCode)) {
    throw Exception('Could not launch $_urlPlayGolangHelloCode');
  }
}

final Uri _urlPlayGolang = Uri.parse('https://go.dev/play');

Future<void> _launchPlayGolang() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolang)) {
    throw Exception('Could not launch $_urlPlayGolang');
  }
}

final Uri _urlGoDev = Uri.parse('https://go.dev');

Future<void> _launchGoDev() async {
  debugPrint("customer left app to go.dev at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoDev)) {
    throw Exception('Could not launch $_urlGoDev');
  }
}

// gopher guides
final Uri _urlGopherGuides = Uri.parse('https://www.gopherguides.com');

Future<void> _launchGopherGuides() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGopherGuides)) {
    throw Exception('Could not launch $_urlGopherGuides');
  }
}

// medium read tag golnag
// https://medium.com/tag/golang
final Uri _urlMediumGolang = Uri.parse('https://medium.com/tag/golang');

Future<void> _launchMediumGolang() async {
  debugPrint("customer left app to medium tag golang at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMediumGolang)) {
    throw Exception('Could not launch $_urlMediumGolang');
  }
}

// _launchAmazonGolang();
final Uri _urlAmazonGolang = Uri.parse('https://www.amazon.com/s?k=golang');

Future<void> _launchAmazonGolang() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlAmazonGolang)) {
    throw Exception('Could not launch $_urlAmazonGolang');
  }
}

// _launchGooglePlayBooksGolang();
final Uri _urlGooglePlayBooksGolang = Uri.parse(
  'https://play.google.com/store/search?q=golang&c=books',
);

Future<void> _launchGooglePlayBooksGolang() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGooglePlayBooksGolang)) {
    throw Exception('Could not launch $_urlGooglePlayBooksGolang');
  }
}

// _launchEbayGolang();
final Uri _urlEbayGolang = Uri.parse(
  'https://www.ebay.com/sch/i.html?_nkw=golang',
);

Future<void> _launchEbayGolang() async {
  debugPrint("customer left app to ebay at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlEbayGolang)) {
    throw Exception('Could not launch $_urlEbayGolang');
  }
}

// https://gopher.golangmarket.com/
// _launchEbayGolang();
final Uri _urlGolangMarket = Uri.parse('https://gopher.golangmarket.com/');

Future<void> _launchGolangMarket() async {
  debugPrint("customer left app to ebay at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGolangMarket)) {
    throw Exception('Could not launch $_urlGolangMarket');
  }
}

// google merch store
final Uri _urlGoogleMerch = Uri.parse('https://shop.merch.google/');

Future<void> _launchGoogleMerch() async {
  debugPrint("customer left app to ebay at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoogleMerch)) {
    throw Exception('Could not launch $_urlGoogleMerch');
  }
}

// launch youtube
final Uri _urlYoutube = Uri.parse('https://www.youtube.com/@golang');

Future<void> _launchYouTube() async {
  debugPrint("customer left app to you tube at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlYoutube)) {
    throw Exception('Could not launch $_urlYoutube');
  }
}

// launch twitter golang
final Uri _urlTwitterGo = Uri.parse('https://twitter.com/golang');

Future<void> _launchTwitterGolang() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlTwitterGo)) {
    throw Exception('Could not launch $_urlTwitterGo');
  }
}

// launch mastodon golang
final Uri _urlMastodonGo = Uri.parse('https://mastodon.social/tags/golang');

Future<void> _launchMastodonGo() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMastodonGo)) {
    throw Exception('Could not launch $_urlMastodonGo');
  }
}

// _launchBlueSkyGo();
// launch mastodon golang
final Uri _urlBlueSkyGo = Uri.parse('https://bsky.app/profile/golang.org');

Future<void> _launchBlueSkyGo() async {
  debugPrint("customer left app to Blue Sky social  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlBlueSkyGo)) {
    throw Exception('Could not launch $_urlBlueSkyGo');
  }
}

// launch mastodon golang
final Uri _urlFacebookGo = Uri.parse(
  'https://www.facebook.com/groups/golanggonuts',
);

Future<void> _launchFacebookGo() async {
  debugPrint("customer left app to Facebook social at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlFacebookGo)) {
    throw Exception('Could not launch $_urlFacebookGo');
  }
}

// launch github golang
final Uri _urlGithubGo = Uri.parse('https://github.com/golang/go/issues');

Future<void> _launchGithubGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubGo)) {
    throw Exception('Could not launch $_urlGithubGo');
  }
}

// slack messaging
final Uri _urlSlackGo = Uri.parse('https://invite.slack.golangbridge.org/');

Future<void> _launchSlackGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlSlackGo)) {
    throw Exception('Could not launch $_urlSlackGo');
  }
}

// stack overflow
final Uri _urlStackOverflow = Uri.parse(
  'https://stackoverflow.com/questions/tagged/go?tab=Newest',
);

Future<void> _launchStackOverflow() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlStackOverflow)) {
    throw Exception('Could not launch $_urlStackOverflow');
  }
}

// gophercon
final Uri _urlGophercon = Uri.parse('https://www.gophercon.com/');

Future<void> _launchGophercon() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGophercon)) {
    throw Exception('Could not launch $_urlGophercon');
  }
}

// Discord
final Uri _urlDiscordGophers = Uri.parse('https://discord.gg/golang');

Future<void> _launchDiscordGophers() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDiscordGophers)) {
    throw Exception('Could not launch $_urlDiscordGophers');
  }
}

// Forum
final Uri _urlGoForum = Uri.parse('https://forum.golangbridge.org/');

Future<void> _launchGoForum() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoForum)) {
    throw Exception('Could not launch $_urlGoForum');
  }
}

// https://groups.google.com/g/golang-dev
final Uri _urlGroupGolangDev = Uri.parse(
  'https://groups.google.com/g/golang-nuts',
);

Future<void> _launchGroupGolangDev() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGroupGolangDev)) {
    throw Exception('Could not launch $_urlGroupGolangDev');
  }
}

// IRC
final Uri _urlGoIRC = Uri.parse('ircs:irc.libera.chat/go-nuts');

Future<void> _launchGoIRC() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoIRC)) {
    throw Exception('Could not launch $_urlGoIRC');
  }
}

// https://go.dev/doc/devel/release
final Uri _urlGoRelease = Uri.parse('https://go.dev/doc/devel/release');

Future<void> _launchGoRelease() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoRelease)) {
    throw Exception('Could not launch $_urlGoRelease');
  }
}

// GDG google developers group
final Uri _urlGoGDG = Uri.parse('https://developers.google.com/community/gdg/');

Future<void> _launchGoGDG() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoGDG)) {
    throw Exception('Could not launch $_urlGoGDG');
  }
}

// // _launchPkgGoDevStandardLibrary
// final Uri _urlPkgGoDev = Uri.parse('https://pkg.go.dev/go');

// Future<void> _launchPkgGoDevGo() async {
//   debugPrint("customer left app to pkg.go.dev/go");
//   print(TimeOfDay.now());
//   if (!await launchUrl(_urlPkgGoDevGo)) {
//     throw Exception('Could not launch $_urlPkgGoDevGo');
//   }
// }

// _launchPkgGoDevGo
final Uri _urlPkgGoDev = Uri.parse('https://pkg.go.dev');

Future<void> _launchPkgGoDev() async {
  debugPrint("customer left app to pkg.go.dev/");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPkgGoDev)) {
    throw Exception('Could not launch $_urlPkgGoDev');
  }
}

final Uri _urlPkgGoDevGo = Uri.parse('https://pkg.go.dev/cmd/go');

Future<void> _launchPkgGoDevGo() async {
  debugPrint("customer left app to pkg.go.dev/go");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPkgGoDevGo)) {
    throw Exception('Could not launch $_urlPkgGoDevGo');
  }
}

// GoStandardlibrary
final Uri _urlGoStandardLibrary = Uri.parse('https://pkg.go.dev/std');

Future<void> _launchGoStandardLibrary() async {
  debugPrint("customer left app to go go pkg std library");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoStandardLibrary)) {
    throw Exception('Could not launch $_urlGoStandardLibrary');
  }
}

// _launchPkgGoDev
final Uri _urlRedditGolang = Uri.parse('https://reddit.com/r/golang/');

Future<void> _launchRedditGolang() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlRedditGolang)) {
    throw Exception('Could not launch $_urlRedditGolang');
  }
}

final Uri _urlDevGolang = Uri.parse('https://dev.to/t/go');

Future<void> _launchDevGolang() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDevGolang)) {
    throw Exception('Could not launch $_urlDevGolang');
  }
}

final Uri _urlWikpediaGo = Uri.parse(
  'https://en.wikipedia.org/wiki/Go_(programming_language)',
);

Future<void> _launchWikpediaGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlWikpediaGo)) {
    throw Exception('Could not launch $_urlWikpediaGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlMediumTagGo = Uri.parse('https://medium.com/tag/golang');

Future<void> _launchMediumTagGo() async {
  debugPrint("customer left app to medium go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMediumTagGo)) {
    throw Exception('Could not launch $_urlMediumTagGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlLinkedInGo = Uri.parse(
  'https://www.linkedin.com/jobs/golang-developer-jobs',
);

Future<void> _launchLinkedInGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlLinkedInGo)) {
    throw Exception('Could not launch $_urlLinkedInGo');
  }
}

final Uri _urlFreelancer = Uri.parse('https://www.freelancer.com/');

Future<void> _launchFreelancer() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlFreelancer)) {
    throw Exception('Could not launch $_urlFreelancer');
  }
}

// https://www.upwork.com/hire/golang-developers/
final Uri _urlUpworkGolang = Uri.parse(
  'https://www.upwork.com/hire/golang-developers/',
);

Future<void> _launchUpworkGolang() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlUpworkGolang)) {
    throw Exception('Could not launch $_urlUpworkGolang');
  }
}

// https://github.com/features/copilot/
final Uri _urlGithubCopilot = Uri.parse('https://github.com/features/copilot/');

Future<void> _launchGithubCopilot() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubCopilot)) {
    throw Exception('Could not launch $_urlGithubCopilot');
  }
}

// https://cloud.google.com/gemini/docs/codeassist/overview
final Uri _urlGeminiCodeAssist = Uri.parse(
  'https://cloud.google.com/gemini/docs/codeassist/overview',
);

Future<void> _launchGeminiCodeAssist() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGeminiCodeAssist)) {
    throw Exception('Could not launch $_urlGeminiCodeAssist');
  }
}

// https://github.com/features/copilot/
final Uri _urlGoWikiAI = Uri.parse('https://go.dev/wiki/AI');

Future<void> _launchGoWikiAI() async {
  debugPrint("customer left app to go wiki ai");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoWikiAI)) {
    throw Exception('Could not launch $_urlGoWikiAI');
  }
}

// workik
final Uri _urlGoWorkik = Uri.parse('https://workik.com/');

Future<void> _launchGoWorkik() async {
  debugPrint("customer left app to workikr");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoWorkik)) {
    throw Exception('Could not launch $_urlGoWorkik');
  }
}

final Uri _urlGoMeetup = Uri.parse('https://www.meetup.com/pro/go/');

Future<void> _launchGoMeetup() async {
  debugPrint("customer left app to meetup");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoMeetup)) {
    throw Exception('Could not launch $_urlGoMeetup');
  }
}

final Uri _urlGoBlog = Uri.parse('https://go.dev/blog/');

Future<void> _launchGoBlog() async {
  debugPrint("customer left app to goblog");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoBlog)) {
    throw Exception('Could not launch $_urlGoBlog');
  }
}

final Uri _urlGoEnv = Uri.parse(
  'https://pkg.go.dev/cmd/go#hdr-Print_Go_environment_information',
);

Future<void> _launchGoEnv() async {
  debugPrint("customer left app to go Env");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoEnv)) {
    throw Exception('Could not launch $_urlGoEnv');
  }
}

final Uri _urlGoPath = Uri.parse(
  'https://pkg.go.dev/cmd/go#hdr-GOPATH_environment_variable',
);

Future<void> _launchGoPath() async {
  debugPrint("customer left app to goPath");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoPath)) {
    throw Exception('Could not launch $_urlGoPath');
  }
}

final Uri _urlGoBuild = Uri.parse(
  'https://pkg.go.dev/cmd/go#hdr-Compile_packages_and_dependencies',
);

Future<void> _launchGoBuild() async {
  debugPrint("customer left app to goRun");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoBuild)) {
    throw Exception('Could not launch $_urlGoBuild');
  }
}

final Uri _urlGoRun = Uri.parse(
  'https://pkg.go.dev/cmd/go#hdr-Compile_and_run_Go_program',
);

Future<void> _launchGoRun() async {
  debugPrint("customer left app to goRun");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoRun)) {
    throw Exception('Could not launch $_urlGoRun');
  }
}

// Future<void> _launchGoCommands() async {
//   debugPrint("customer left app to go github");
//   print(TimeOfDay.now());
//   if (!await launchUrl(_urlGoCommands)) {
//     throw Exception('Could not launch $_urlGoCommands');
//   }
// }

final Uri _urlVisualStudioCode = Uri.parse('https://code.visualstudio.com/');

Future<void> _launchVisualStudioCode() async {
  debugPrint("customer left app to go visual studio code");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlVisualStudioCode)) {
    throw Exception('Could not launch $_urlVisualStudioCode');
  }
}

// _launchJetbrainsGoLand
final Uri _urlJetbrainsGoLand = Uri.parse('https://www.jetbrains.com/go/');

Future<void> _launchJetbrainsGoLand() async {
  debugPrint("customer left app to jetbrains ");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlJetbrainsGoLand)) {
    throw Exception('Could not launch $_urlJetbrainsGoLand');
  }
}

final Uri _urlVimGo = Uri.parse('https://github.com/fatih/vim-go');

Future<void> _launchVimGo() async {
  debugPrint("customer left app to vim go");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlVimGo)) {
    throw Exception('Could not launch $_urlVimGo');
  }
}

// https://github.com/visualfc/liteide
final Uri _urlLiteIDE = Uri.parse('https://github.com/visualfc/liteide');

Future<void> _launchLiteIDE() async {
  debugPrint("customer left app to Lite IDE");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlLiteIDE)) {
    throw Exception('Could not launch $_urlLiteIDE');
  }
}

// _launchEclipseGo
final Uri _urlEclipseGo = Uri.parse('https://www.eclipse.org/');

Future<void> _launchEclipseGo() async {
  debugPrint("customer left app to eclipse");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlEclipseGo)) {
    throw Exception('Could not launch $_urlEclipseGo');
  }
}

// _launchCodeLiteGo
final Uri _urlCodeLiteGo = Uri.parse('https://codelite.org/');

Future<void> _launchCodeLiteGo() async {
  debugPrint("customer left app to jetbrains ");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlCodeLiteGo)) {
    throw Exception('Could not launch $_urlCodeLiteGo');
  }
}

// _launchAdaCore
final Uri _urlAdaCoreGo = Uri.parse('https://www.adacore.com/download');

Future<void> _launchAdaCoreGo() async {
  debugPrint("customer left app to codelite");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlAdaCoreGo)) {
    throw Exception('Could not launch $_urlAdaCoreGo');
  }
}

// _launchNetbeansGo
final Uri _urlNetbeansGo = Uri.parse(
  'https://netbeans.apache.org/front/main/index.html',
);

Future<void> _launchNetbeansGo() async {
  debugPrint("customer left app to netbeans");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlNetbeansGo)) {
    throw Exception('Could not launch $_urlNetbeansGo');
  }
}

// _launchDigitalOceanGo
final Uri _urlDigitalOceanGo = Uri.parse(
  'https://www.digitalocean.com/community/tutorial-series/how-to-code-in-go',
);

Future<void> _launchDigitalOceanGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDigitalOceanGo)) {
    throw Exception('Could not launch $_urlDigitalOceanGo');
  }
}

// _launchHerokuGo2
final Uri _urlHerokuGo = Uri.parse('https://heroku.com/go');

Future<void> _launchHerokuGo() async {
  debugPrint("customer left app to heroku");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlHerokuGo)) {
    throw Exception('Could not launch $_urlHerokuGo');
  }
}

// _launchDigitalOceanGo3
final Uri _urlA2HostingGo = Uri.parse(
  'https://www.a2hosting.com/go-lang-hosting/',
);

Future<void> _launchA2HostingGo() async {
  debugPrint("customer left app to A2Hosting");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlA2HostingGo)) {
    throw Exception('Could not launch $_urlA2HostingGo');
  }
}

// _launchDigitalOceanGo4Vercel
final Uri _urlVercelGo = Uri.parse(
  'https://vercel.com/docs/functions/runtimes/go',
);

Future<void> _launchVercelGo() async {
  debugPrint("customer left app to Vercel");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlVercelGo)) {
    throw Exception('Could not launch $_urlVercelGo');
  }
}

// _launchDigitalOceanGo5
final Uri _urlHostingerGo = Uri.parse(
  'https://www.hostinger.com/tutorials/best-programming-languages-to-learn#8_Go',
);

Future<void> _launchHostingerGo() async {
  debugPrint("customer left app to Hostinger");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlHostingerGo)) {
    throw Exception('Could not launch $_urlHostingerGo');
  }
}

// https://www.nodechef.com/go-hosting
// https://scalingo.com/runtimes/go-hosting

// https://aws.amazon.com/sdk-for-go/
// https://aws.amazon.com/developer/language/go/

// https://cloud.google.com/go

// _launchHerokuGo6
final Uri _urlNodechefGod = Uri.parse('https://www.nodechef.com/go-hosting');

Future<void> _launchNodechefGo() async {
  debugPrint("customer left app to heroku");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlNodechefGod)) {
    throw Exception('Could not launch $_urlNodechefGod');
  }
}

// _launchDigitalOceanGo7
final Uri _urlScalingoGo = Uri.parse(
  'https://scalingo.com/runtimes/go-hosting',
);

Future<void> _launchScalingoGo() async {
  debugPrint("customer left app to A2Hosting");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlScalingoGo)) {
    throw Exception('Could not launch $_urlScalingoGo');
  }
}

// _launchDigitalOceanGo8
final Uri _urlAmazonWebServicesGo = Uri.parse(
  'https://aws.amazon.com/developer/language/go/',
);

Future<void> _launchAmazonWebServicesGo() async {
  debugPrint("customer left app to Vercel");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlAmazonWebServicesGo)) {
    throw Exception('Could not launch $_urlAmazonWebServicesGo');
  }
}

// _launchDigitalOceanGo9
final Uri _urlGoogleCloudGo = Uri.parse('https://cloud.google.com/go');

Future<void> _launchGoogleCloudGo() async {
  debugPrint("customer left app to Hostinger");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoogleCloudGo)) {
    throw Exception('Could not launch $_urlGoogleCloudGo');
  }
}

// _launchGoTiobe
final Uri _urlGoTiobe = Uri.parse('https://www.tiobe.com/tiobe-index/');

Future<void> _launchGoTiobe() async {
  debugPrint("customer left app to Hostinger");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoTiobe)) {
    throw Exception('Could not launch $_urlGoTiobe');
  }
}

// _launchGoTiobe
final Uri _urlGoGeeksForGeeks = Uri.parse(
  'https://www.geeksforgeeks.org/blogs/top-programming-languages-of-the-future-2025/#top-10-programming-languages-for-2025',
);

Future<void> _launchGoGeeksForGeeks() async {
  debugPrint("customer left app to geeks for geeks");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoGeeksForGeeks)) {
    throw Exception('Could not launch $_urlGoGeeksForGeeks');
  }
}

// _launch index.dev
final Uri _urlGoIndexDev = Uri.parse(
  'https://www.index.dev/blog/most-popular-programming-languages-',
);

Future<void> _launchGoIndexDev() async {
  debugPrint("customer left app to index.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoIndexDev)) {
    throw Exception('Could not launch $_urlGoIndexDev');
  }
}

// _launch pluralsight
final Uri _urlGoPluralsight = Uri.parse(
  'https://www.pluralsight.com/resources/blog/upskilling/top-programming-languages-2025',
);

Future<void> _launchGoPluralsight() async {
  debugPrint("customer left app to plurlasight");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoPluralsight)) {
    throw Exception('Could not launch $_urlGoPluralsight');
  }
}

// statless navdrawer
// class GoSyncNavDrawer extends StatelessWidget {
//   const GoSyncNavDrawer({super.key});

//   // bool _value = false;
//   // get _value => _value;
//   @override
//   Widget build(BuildContext context) {
//     debugPrint('navdrawer opened at [time]');
//     print(TimeOfDay.now());
//     // Scaffold.of(context).openDrawer();
//     return Drawer(
