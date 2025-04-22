import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('fr')
  ];

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'goSync250422'**
  String get titledate;

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'goSync'**
  String get title;

  /// hello in each language
  ///
  /// In en, this message translates to:
  /// **'hello flutter eng'**
  String get helloWorld;

  /// hello in each language
  ///
  /// In en, this message translates to:
  /// **'home'**
  String get home;

  /// golang install in respective languages
  ///
  /// In en, this message translates to:
  /// **'go install'**
  String get golangInstall;

  /// headliners
  ///
  /// In en, this message translates to:
  /// **'Golang Install on desktop for Windows, Apple, Linux'**
  String get goSyncHeading;

  /// danger
  ///
  /// In en, this message translates to:
  /// **'danger AI'**
  String get danger;

  /// url link to the Go playground
  ///
  /// In en, this message translates to:
  /// **'visit Go playground'**
  String get visitGoPlayground;

  /// url link to the Go playground
  ///
  /// In en, this message translates to:
  /// **'visit Go playground'**
  String get visitGoDevPlay;

  /// empty string
  ///
  /// In en, this message translates to:
  /// **'\n\n\n\ngo architecture designers'**
  String get drawerHeader;

  /// goland home go.dev
  ///
  /// In en, this message translates to:
  /// **'\n\n\n\ngolang home go.dev'**
  String get drawerHeader2;

  /// goland home go.dev
  ///
  /// In en, this message translates to:
  /// **'\n\n\n\ngolang gopher'**
  String get drawerHeader3;

  /// goland home go.dev
  ///
  /// In en, this message translates to:
  /// **'\n\n\n\ngolang terminal'**
  String get drawerHeader4;

  /// check go environment
  ///
  /// In en, this message translates to:
  /// **'Now let us check that our installation of golang is working.\nOpen up a terminal (linux & mac) or a command prompt (windows) and type in the following code:\ngo version\nThis is your go version and it should be 1.12-1.13 as these are the latest versions\nType in the following code:\ngo help\nThis is a list of all available commands.'**
  String get ethCheckGoHelp;

  /// check go environment
  ///
  /// In en, this message translates to:
  /// **'Visit https://golang.org/doc/install and browse for assistance with ways to install golang on different system architectures.\nFor windows use the recommended .msi installer and it is fine to put the goland files deep within the windows system. C:\\Go is preferable when wanting to program.'**
  String get golangInstallInstructions;

  /// check go environment 2
  ///
  /// In en, this message translates to:
  /// **'\nexport PATH=\$PATH:/usr/local/go/bin\n'**
  String get golangInstallInstructions2;

  /// windows install instructions 1
  ///
  /// In en, this message translates to:
  /// **'1, Open the MSI file you downloaded and follow the prompts to install Go. \n\nBy default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.'**
  String get gosyncWindowsInstallInstructions;

  /// windows install instructions 2
  ///
  /// In en, this message translates to:
  /// **'2, Verify that you\'ve installed Go.\nIn Windows, click the Start menu.\nIn the menu\'s search box, type cmd, then press the Enter key.\nIn the Command Prompt window that appears, type the following command:\n\t\t\$ go version\n\nConfirm that the command prints the installed version of Go.'**
  String get gosyncWindowsInstallInstructions2;

  /// windows install instructions 3
  ///
  /// In en, this message translates to:
  /// **'3, the output should give the go version number and the architecture type. Something like this: '**
  String get gosyncWindowsInstallInstructions3;

  /// windows install instructions 4
  ///
  /// In en, this message translates to:
  /// **'go version go1.23.1 windows/amd64'**
  String get gosyncWindowsInstallInstructions4;

  /// windows install instructions 5
  ///
  /// In en, this message translates to:
  /// **'5, AS of November 2024 the current release of Go is 1.23. To find the most recent release check the main website https://go.dev/dl/'**
  String get gosyncWindowsInstallInstructions5;

  /// windows post install
  ///
  /// In en, this message translates to:
  /// **'Windows Post Install and Setup validation'**
  String get gosyncHeaderWindowsPostInstall;

  /// windows post install
  ///
  /// In en, this message translates to:
  /// **'Linux Post Install and Setup validation'**
  String get gosyncHeaderLinuxPostInstall;

  /// windows post install
  ///
  /// In en, this message translates to:
  /// **'Multiple Golang Installations'**
  String get gosyncHeaderMultiInstall;

  /// windows post install check
  ///
  /// In en, this message translates to:
  /// **'The GOPATH is set as C:/Users/adam/go but this folder is not created yet. Let\'\'s do that now. \nWe actually need to create 3 folders /go/pkg/mod in /Users/adam '**
  String get gosyncHeaderWindowsPostInstallCheck;

  /// windows post install check go env
  ///
  /// In en, this message translates to:
  /// **'The GOPATH is a folder with elevated user rights to write and run go programmes. \nThe system no knows to allow go applications to run from here. \nModules are also stored here.'**
  String get gosyncGopathPurpose;

  /// windows post install check go env
  ///
  /// In en, this message translates to:
  /// **'The GOROOT is a folder is where the go.exe||go.bin executable program file is located. This is where Go lives as go.ext or go.bin. \nThe system no knows to allow go applications to run from here. \nInside this folder are go and gofmt go format.'**
  String get gosyncGorootPurpose;

  /// windows make files
  ///
  /// In en, this message translates to:
  /// **'To create 3 folders /go/pkg/mod in /Users/adam open up a terminal and change to your home directory. \nType in \'mkdir /go/pkg/mod\' or create these folders visually using File Explorer.'**
  String get gosyncWinMakeFolders;

  /// windows make files follow tutorial
  ///
  /// In en, this message translates to:
  /// **'Now change directly to the \'go\' directory. Make a folder called \'hello\' and follow the opening steps online here https://go.dev/doc/tutorial/getting-started/ and you can also start here if you want to run a web server, etc. https://go.dev/learn/ '**
  String get gosyncOnlineTutorial;

  /// .k install instructions 1
  ///
  /// In en, this message translates to:
  /// **'1, Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go:'**
  String get gosyncLinuxInstallInstructions;

  /// linux install instructions 2
  ///
  /// In en, this message translates to:
  /// **'2, \$ rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz'**
  String get gosyncLinuxInstallInstructions2;

  /// linux install instructions 3
  ///
  /// In en, this message translates to:
  /// **'3,(You may need to run the command as root or through sudo). \nDo not untar the archive into an existing /usr/local/go tree. This is known to produce broken Go installations. '**
  String get gosyncLinuxInstallInstructions3;

  /// linux install instructions 4
  ///
  /// In en, this message translates to:
  /// **'4, Add /usr/local/go/bin to the PATH environment variable. \nYou can do this by adding the following line to your \$HOME/.profile or /etc/profile (for a system-wide installation):'**
  String get gosyncLinuxInstallInstructions4;

  /// linux install instructions 5
  ///
  /// In en, this message translates to:
  /// **'5 export PATH=\$PATH:/usr/local/go/bin'**
  String get gosyncLinuxInstallInstructions5;

  /// linux install instructions 5
  ///
  /// In en, this message translates to:
  /// **'6 Note: Changes made to a profile file may not apply until the next time you log into your computer. To apply the changes immediately, just run the shell commands directly or execute them from the profile using a command such as source \$HOME/.profile.'**
  String get gosyncLinuxInstallInstructions6;

  /// linux install instructions 5
  ///
  /// In en, this message translates to:
  /// **'7 Verify that you\'\'ve installed Go by opening a command prompt and typing the following command:\n  \$ go version'**
  String get gosyncLinuxInstallInstructions7;

  /// linux install instructions 5
  ///
  /// In en, this message translates to:
  /// **'8 Confirm that the command prints the installed version of Go.'**
  String get gosyncLinuxInstallInstructions8;

  /// linux install instructions readout
  ///
  /// In en, this message translates to:
  /// **'go version go1.23.2 linux/amd64'**
  String get gosyncLinuxInstallInstructionsReadout;

  /// uninstall instructions 1
  ///
  /// In en, this message translates to:
  /// **'1, Linux / macOS / FreeBSD   \nDelete the go directory.  \nThis is usually /usr/local/go.'**
  String get gosyncUninstallInstructions;

  /// uninstall instructions 2
  ///
  /// In en, this message translates to:
  /// **'2, Remove the Go bin directory from your PATH environment variable. \nUnder Linux and FreeBSD, edit /etc/profile or \$HOME/.profile. If you installed Go with the macOS package, remove the /etc/paths.d/go file.'**
  String get gosyncUninstallInstructions2;

  /// uninstall instructions 3
  ///
  /// In en, this message translates to:
  /// **'3,Windows \nThe simplest way to remove Go is via Add/Remove Programs in the Windows control panel: '**
  String get gosyncUninstallInstructions3;

  /// uninstall instructions 4
  ///
  /// In en, this message translates to:
  /// **'4, In Control Panel, double-click Add/Remove Programs. \nIn Add/Remove Programs, select Go Programming Language, click Uninstall, then follow the prompts.'**
  String get gosyncUninstallInstructions4;

  /// uninstall instructions 5
  ///
  /// In en, this message translates to:
  /// **'5, For removing Go with tools, you can also use the command line: \nUninstall using the command line by running the following command:'**
  String get gosyncUninstallInstructions5;

  /// uninstall instructions 6
  ///
  /// In en, this message translates to:
  /// **'6, msiexsi /q '**
  String get gosyncUninstallInstructions6;

  /// uninstall instructions 7
  ///
  /// In en, this message translates to:
  /// **'7, Note: Using this uninstall process for Windows will automatically remove Windows environment variables created by the original installation.'**
  String get gosyncUninstallInstructions7;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
