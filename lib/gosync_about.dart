import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import './gosync_navdrawer.dart';

class GoSyncAbout extends StatelessWidget {
  const GoSyncAbout({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('windows install  page loaded Golang');
    // () => Scaffold.of(context).openDrawer();
    ScrollController scrollbarController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Tiny AppBar with hamburger button'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.handyman_outlined),
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
            text:
                '\n1 Install Golang and GoEth Geth bare bones.'
                '\nWritten using Flutter for mobile & desktop.'
                '\nCheck out our website www.GoSync.com.'
                '\nEmail us at bugs@gosync.com.'
                '\nVersion 0.1.0'
                '\nLast update 05.2025',
            textAlign: TextAlign.center,
            style: GoogleFonts.allura(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
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
                  '\n1b background = black continaer from 1 Install Golang and GoEth Geth bare bones.'
                  '\nWritten using Flutter for mobile & desktop.'
                  '\nCheck out our website www.GoSync.com.'
                  '\nEmail us at bugs@gosync.com.'
                  '\nVersion 0.1.0'
                  '\nLast update 07.2024',
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
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text:
                '\n2 Install Golang bare bones to professional level.'
                '\nWritten using Flutter for mobile & desktop.'
                '\nCheck out our website www.GoSync.com.'
                '\nEmail us at bugs@gosync.com.'
                '\nVersion 0.1.0'
                '\nLast update 07.2024',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.green,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
          ),
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text:
                '\n3 This is written under the Creative Commons License.'
                '\nSee https://creativecommons.org for more info.'
                '\nhttps://chooser-beta.creativecommons.org'
                '\nthe license is CC-BY-NC-SA 4.0'
                '\nhttps://creativecommons.org/licenses/by-nc-sa/4.0/'
                '\nThis work is licensed under CC BY 4.0 '
                '\nLast update 07.2024',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.green,
              // backgroundColor: Colors.amber,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
            // );
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.black,
            child: Linkify(
              onOpen: (link) async {
                if (!await launchUrl(Uri.parse(link.url))) {
                  throw Exception('Could not launch ${link.url}');
                }
              },
              text:
                  '\n4 from 1 Install Golang and GoEth Geth bare bones.'
                  '\nWritten using Flutter for mobile & desktop.'
                  '\nCheck out our website www.GoSync.com.'
                  '\nEmail us at bugs@gosync.com.'
                  '\nVersion 0.1.0'
                  '\nLast update 07.2024',
              textAlign: TextAlign.center,
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
          //
        ],
      ),
    );
  }
}
