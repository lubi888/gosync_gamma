import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './l10n/app_localizations.dart';
import './gosync_navdrawer.dart';
import './gosync_text.dart';

class GoSyncInstallTertiary extends StatelessWidget {
  const GoSyncInstallTertiary({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('GoSyncInstallTertary loaded');
    // () => Scaffold.of(context).openDrawer();
    ScrollController scrollbarController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Tiny AppBar with hamburger button'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const GoSyncNavDrawer(),
      body: ListView(
        controller: scrollbarController,
        children: <Widget>[
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text: "Windows Instructions from https://go.dev/doc/install",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              // textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
          ),

          // linkify 2
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text: "2 Official Windows Instructions from https://go.dev",
            textAlign: TextAlign.center,
            // style: GoogleFonts.notoSans(
            style: const TextStyle(
              // textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            // linkStyle: GoogleFonts.allura(color: Colors.yellow),
          ),

          // linkify 3
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text:
                "3 Official Windows Instructions from https://go.dev/doc/install",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              // style: const TextStyle(
              // textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              // fontWeight: FontWeight,
              // fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            linkStyle: GoogleFonts.notoSans(color: Colors.red),
          ),

          const Padding(padding: EdgeInsets.all(16.0)),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWindowsInstallInstructions,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          // const Padding(padding: EdgeInsets.all(16.0)),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWindowsInstallInstructions2,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.cyanAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWindowsInstallInstructions3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWindowsInstallInstructions4,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWindowsInstallInstructions5,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text:
                  AppLocalizations.of(
                    context,
                  )!.gosyncWindowsInstallInstructions5,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.green,
                fontStyle: FontStyle.normal,
                fontSize: 25.0,
              ),
              // linkStyle: GoogleFonts.allura(color: Colors.orangeAccent),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          //header bar 'postinstall golang'
          Container(
            padding: const EdgeInsets.all(15.0),
            // width: 300.0,
            // height: 84.0,
            decoration: BoxDecoration(
              border: Border.all(
                // style: BorderStyle.none  ,
                width: 10.0,
                color: Colors.yellow,
              ),
              shape: BoxShape.rectangle,
              color: Colors.red.shade500,
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            ),
            child: Text(
              // goSyncHeading,
              AppLocalizations.of(context)!.gosyncHeaderWindowsPostInstall,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: const TextStyle(
                // color: Colors.blue[900],
                color: Colors.yellow,
                // backgroundColor: Color.fromARGB(255, 207, 160, 17),
                backgroundColor: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Theme.of(context).colorScheme.surface,
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text:
                  '\n1b Type in "go env" to find out the most important details of the setup. \nTake a loot at GOPATH, GOROOT, etc.',
              textAlign: TextAlign.center,
              // selectable: true,
              style: GoogleFonts.allura(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                // backgroundColor: Colors.black,
              ),
              linkStyle: GoogleFonts.allura(color: Colors.yellow),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          // container eg white box terminal Windows
          //windows Power Shell design widjet
          Container(
            padding: const EdgeInsets.all(8.0),
            // width: 50.0,
            // height: 260.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(width: 10.0, color: Colors.white),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text: goPowerShell,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
                // fontFamily: Fami),
              ),
            ),
          ),

          //txt without box
          const Padding(padding: EdgeInsets.all(8.0)),
          // container eg white box terminal Windows
          //windows Power Shell design widjet
          Container(
            padding: const EdgeInsets.all(8.0),
            // width: 50.0,
            // height: 260.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(width: 10.0, color: Colors.white),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text: goPowerShellGoEnv,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
                // fontFamily: Fami),
              ),
            ),
          ),
          //txt without box
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncHeaderWindowsPostInstallCheck,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.cyanAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncGopathPurpose,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.pinkAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncGorootPurpose,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncWinMakeFolders,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.greenAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),
          // online tutorial
          // linkify humanize
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text: AppLocalizations.of(context)!.gosyncOnlineTutorial,
            textAlign: TextAlign.left,
            options: const LinkifyOptions(humanize: true),
            style: const TextStyle(
              color: Colors.blueAccent,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
          ),
          // LinkifyPadding
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text: AppLocalizations.of(context)!.gosyncOnlineTutorial,
              textAlign: TextAlign.left,
              options: const LinkifyOptions(humanize: true),
              style: const TextStyle(
                color: Colors.orangeAccent,
                fontStyle: FontStyle.normal,
                fontSize: 25.0,
              ),
              linkStyle: GoogleFonts.allura(color: Colors.yellow),
            ),
          ),
          // Linkify(
          //   onOpen: (link) async {
          //     if (!await launchUrl(Uri.parse(link.url))) {
          //       throw Exception('Could not launch ${link.url}');
          //     }
          //   },
          //   text:
          //       "Open the MSI file you downloaded and follow the prompts to install Go. By default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.",
          //   textAlign: TextAlign.center,
          //   style: const TextStyle(
          //     color: Colors.green,
          //     fontStyle: FontStyle.normal,
          //     fontSize: 25.0,
          //   ),
          //   linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // ),

          // Linkify(
          //   onOpen: (link) async {
          //     if (!await launchUrl(Uri.parse(link.url))) {
          //       throw Exception('Could not launch ${link.url}');
          //     }
          //   },
          //   text:
          //       "Open the MSI file you downloaded and follow the prompts to install Go. \nBy default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.",
          //   textAlign: TextAlign.left,
          //   style: const TextStyle(
          //     color: Colors.yellowAccent,
          //     // backgroundColor: Colors.amber,
          //     fontStyle: FontStyle.normal,
          //     fontSize: 25.0,
          //   ),
          //   linkStyle: GoogleFonts.allura(color: Colors.greenAccent),
          //   // );
          // ),
          // Container(
          //   padding: const EdgeInsets.all(20.0),
          //   color: Colors.black,
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (!await launchUrl(Uri.parse(link.url))) {
          //         throw Exception('Could not launch ${link.url}');
          //       }
          //     },
          //     text: '\n4 from 1 Install Golang and GoEth Geth bare bones.'
          //         '\nWritten using Flutter for mobile & desktop.'
          //         '\nCheck out our website www.GoSync.com.'
          //         '\nEmail us at bugs@gosync.com.'
          //         '\nVersion 0.1.0'
          //         '\nLast update 07.2024',
          //     textAlign: TextAlign.center,
          //     style: GoogleFonts.allura(
          //       textStyle: Theme.of(context).textTheme.headlineMedium,
          //       fontSize: 48,
          //       fontWeight: FontWeight.w700,
          //       fontStyle: FontStyle.italic,
          //       // backgroundColor: Colors.black,
          //     ),
          //     linkStyle: GoogleFonts.allura(color: Colors.yellow),
          //   ),
          // ),
          //
        ],
      ),
    );
  }
}
