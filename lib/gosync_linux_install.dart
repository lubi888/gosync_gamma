import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './l10n/app_localizations.dart';
import './gosync_navdrawer.dart';
import './gosync_text.dart';

class GoSyncLinuxInstall extends StatelessWidget {
  const GoSyncLinuxInstall({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('windows install  page loaded Golang');
    // () => Scaffold.of(context).openDrawer();
    ScrollController scrollbarController = ScrollController();
    // snackbar
    const snackBarGoCodeCopy = SnackBar(
      backgroundColor: Colors.green,
      duration: Duration(seconds: 3),
      content: Text(
        'Yay! Go code copied to clipboard!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22.0),
      ),
    );

    // const snackBarGoodbye = SnackBar(
    //   backgroundColor: Colors.green,
    //   content: Text('Thanks for visiting goSync. Goodbye!',
    //       textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
    //   duration: Duration(seconds: 3),
    // );

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
            text: "Linux Instructions from https://go.dev/doc/install",
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
            text: "2 Official Linux Instructions from https://go.dev",
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
                "3 Official Linux Instructions from https://go.dev/doc/install",
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions2,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions3,
              textAlign: TextAlign.left,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions4,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions5,
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
                  AppLocalizations.of(context)!.gosyncLinuxInstallInstructions5,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.green,
                fontStyle: FontStyle.normal,
                fontSize: 25.0,
              ),
              // linkStyle: GoogleFonts.allura(color: Colors.orangeAccent),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SelectableText(
              // ethCheckGoHelp,
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions6,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions7,
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
              AppLocalizations.of(context)!.gosyncLinuxInstallInstructions8,
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
              AppLocalizations.of(
                context,
              )!.gosyncLinuxInstallInstructionsReadout,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
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
              AppLocalizations.of(context)!.gosyncHeaderLinuxPostInstall,
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
          // container eg green box terminal Linux
          //linux widjet
          // convert this to ledgeable code with << >>
          const SelectableText(
            ethCheckGoEnv,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.green,
              backgroundColor: Colors.yellow,
              // fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          //Box Decoration
          //Example Code Widget Container
          Container(
            height: 80.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              shape: BoxShape.rectangle,
              color: Colors.red.shade500,
              // borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const Text(
              ethCheckGoEnv,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          //main example code widget selectable code only. greenterm greenscreen border
          Container(
            padding: const EdgeInsets.all(8.0),
            // width: 50.0,
            // height: 260.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(width: 10.0, color: Colors.green),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const SelectableText(
              goHelloCode,
              textAlign: TextAlign.left,
              showCursor: true,
              autofocus: true,
              cursorColor: Colors.green,
              // cursorWidth: 3.0,
              // cursorHeight: 3.0,
              // cursorRadius: Radius.circular(8.0),
              enableInteractiveSelection: true,
              // maxLines: 2,
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          // 2nd greenterm with copy fab.
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(width: 10.0, color: Colors.green),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                // FloatingActionButton
                // MainAxisAlignment MainAxisAlignment.max,
                const SelectableText(
                  goHelloCode,
                  textAlign: TextAlign.left,
                  showCursor: true,
                  autofocus: true,
                  cursorColor: Colors.green,
                  // cursorWidth: 3.0,
                  // cursorHeight: 3.0,
                  // cursorRadius: Radius.circular(8.0),
                  enableInteractiveSelection: true,
                  // maxLines: 2,
                  style: TextStyle(
                    color: Colors.green,
                    backgroundColor: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
                FloatingActionButton(
                  // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
                  // shape: ,
                  // elevation: 2.0,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.green,
                  splashColor: Colors.green,
                  tooltip: tooltipCopy,
                  hoverColor: Colors.lightGreen,
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: goHelloCode));
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(snackBarGoCodeCopy);
                  },
                  child: const Icon(
                    Icons.copy,
                    // semanticLabel: "copy code",
                  ),
                ),
              ],
            ),
          ),

          const Padding(padding: EdgeInsets.all(8.0)),
          // 3rd container eg green box   copy & open go playland.
          Container(
            // FloatingActionButtonLocation.endTop;
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(width: 10.0, color: Colors.green),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              // mainAxisAlignment: ,
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                const SelectableText(
                  goHelloCode,
                  textAlign: TextAlign.left,
                  // selectionWidthStyle: ui.BoxWidthStyle,
                  showCursor: true,
                  autofocus: true,
                  cursorColor: Colors.green,
                  enableInteractiveSelection: true,
                  style: TextStyle(
                    color: Colors.green,
                    backgroundColor: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),

                // FloatingActionButtonLocation.centerTop,
                // FloatingActionButtonLocation.endTop(
                // static const
                // FloatingActionButtonLocation endTop = _EndTopFabLocation();
                FloatingActionButton(
                  // onPressed: () {debugPrint('that is a print');},
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.green,
                  splashColor: Colors.green,
                  tooltip: tooltipCopyAndWeb,
                  hoverColor: Colors.lightGreen,
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: goHelloCode));
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(snackBarGoCodeCopy);
                    // _launchPlayGolangUrl();
                    _launchPlayGolangHelloCode();
                  },
                  child: const Icon(Icons.web),
                ),
              ],
            ),
            // ),
            // ],
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
        ],
      ),
    );
  }
}

// final Uri _urlPlayGolang = Uri.parse('https://play.golang.com/');
final Uri _urlPlayGolangHelloCode = Uri.parse(
  'https://play.golang.com/p/IBY3bOlTbu9',
);

Future<void> _launchPlayGolangHelloCode() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolangHelloCode)) {
    throw Exception('Could not launch $_urlPlayGolangHelloCode');
  }
}

// const snackBarGoCodeCopy = SnackBar(
//   backgroundColor: Colors.green,
//   duration: Duration(seconds: 3),
//   content: Text(
//     'Yay! Go code copied to clipboard!',
//     textAlign: TextAlign.center,
//     style: TextStyle(fontSize: 22.0),
//   ),
// );

// const snackBarGoodbye = SnackBar(
//   backgroundColor: Colors.green,
//   content: Text('Thanks for visiting goSync. Goodbye!',
//       textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
//   duration: Duration(seconds: 3),
// );
