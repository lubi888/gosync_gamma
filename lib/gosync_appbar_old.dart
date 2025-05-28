import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './l10n/app_localizations.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import './main.dart';
// import './gosync_text.dart';
// import './gosync_text.dart';

// import './gosync_text.dart';
// //   // appBar: AppBar(
// //   // Here we take the value from the GoSyncHome object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title)
const double kToolbarHeight = 155.0;
var myMenuItems = <String>[
  'Home',
  'Profile',
  'Setting',
  'Privacy',
  'Contact',
  'Ethereum Website',
];

// void onSelect(item) {
//   switch (item) {
//     case 'Home':
//       print('Home clicked for ethscyc homepage');
//       break;
//     // case 'Profile':
//     //   print('Profile clicked');
//     //   break;
//     // case 'Setting':
//     //   print('Playtime setting clicked');
//     //   break;
//     // case 'Privacy':
//     //   print('Privacy cliked');
//     //   break;
//     // case 'Contact':
//     //   print('Contact clicked');
//     //   break;
//     case 'Ethereum Website':
//       print('this is where we connect to the net ethereum webite');
//       //url launcher
//       break;
//   }
// }

// class GoSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const GoSyncAppBar({super.key});

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

class GoSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  GoSyncAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  bool _value = true;
  // get _GoSyncHomeState => State<GoSyncHome>;

  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();
    debugPrint("ethsync appbar loaded");
    print(TimeOfDay.now());
    // var vsync = 0;
    // TabController tabController = TabController(length: 3, vsync: this);
    return AppBar(
      // title: const Text(goSyncTitle),
      centerTitle: true,
      // backgroundColor: Colors.amber,
      // foregroundColor: Colors.red,
      // elevation/: 30.0,
      title: Text(
        // goSyncTitle,
        // "title is today",
        // goSyncTitle,
        AppLocalizations.of(context)!.titledate,
        textAlign: TextAlign.center,
        style: const TextStyle(
          // backgroundColor: Color.fromARGB(255, 207, 160, 17),
          // backgroundColor: Colors.yellow,
          fontStyle: FontStyle.italic,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: TabBar(
        // controller: TabController(length: 3, vsync: vsync)
        // ScrollController scrollbarController = ScrollController();
        tabs: <Widget>[
          Tab(
            icon: const Icon(
              Icons.code,
              // color: Colors.redAccent
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                // home
                // "home1",
                AppLocalizations.of(context)!.golangInstall,
              ),
            ),
          ),
          Tab(
            icon: const Icon(
              Icons.signal_wifi_4_bar_outlined,
              // color: Colors.orangeAccent
            ),
            height: 90.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                // "home2",
                AppLocalizations.of(context)!.title,
              ),
              // install golang and geth
            ),
          ),
          Tab(
            icon: const Icon(
              Icons.android,
              // color: Colors.greenAccent
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                // "hom3",
                AppLocalizations.of(context)!.danger,
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        // Icon(Icons.search),
        PopupMenuButton<String>(
          icon: const Icon(Icons.lunch_dining), //vertical menu
          // onSelected: onSelect,
          // color: Colors.red,.
          itemBuilder:
              (BuildContext context) => [
                PopupMenuItem(
                  value: "Home",
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    text: 'https://www.ethSync.org',
                  ),
                ),
                const PopupMenuItem(
                  value: "Ethereum Website",
                  child: Text("beta"),
                ),
                PopupMenuItem(
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Material(
                      child: SwitchListTile(
                        tileColor: Colors.yellowAccent,
                        title: const Text('theme switcher'),
                        value: _value,
                        onChanged: (value) {
                          _value = value;
                          if (_value) {
                            GoSyncHome.of(context)!.changeTheme(ThemeMode.dark);
                          } else {
                            GoSyncHome.of(
                              context,
                            )!.changeTheme(ThemeMode.light);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    // text: EthSyncUrl.launchURLFlutter,
                    text: 'https://www.ethereum.org',
                  ),
                ),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    text: 'https://ethereum.stackexchange.com/',
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://geth.ethereum.org/',
                  ),
                ),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://github.com/ethereum/go-ethereum',
                  ),
                ),
                const PopupMenuDivider(height: 4.0),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://en.wikipedia.org/wiki/Ethereum',
                  ),
                ),
                const PopupMenuItem(
                  child: Icon(Icons.settings, color: Colors.redAccent),
                ),
                const PopupMenuItem(child: Text('Settings')),
                const PopupMenuItem(child: Text('French : Francais : FR')),
                const PopupMenuItem(child: Text('German : Deutsch : DE')),
                PopupMenuItem(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunchUrl(link.url as Uri)) {
                        await launchUrl(link.url as Uri);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    text: 'https://ethsync2022.org/',
                  ),
                ),
              ],
        ),
      ],
    );
  }

  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
