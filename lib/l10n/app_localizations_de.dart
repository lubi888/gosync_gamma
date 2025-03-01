// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get titledate => 'goSync_beta250226';

  @override
  String get title => 'goSync.go de 240418';

  @override
  String get helloWorld => 'wie gehts flutter deutschland';

  @override
  String get home => 'heim zu house';

  @override
  String get golangInstall => 'go installieren';

  @override
  String get goSyncHeading => 'Goland Install on Windows, Apple, Linux zu Deutsch';

  @override
  String get danger => 'gefr AI';

  @override
  String get visitGoPlayground => 'besuchen Go playground visitez le Go playground site';

  @override
  String get visitGoDevPlay => 'die Gründer 2012 besuchen GoDevPlay 2 go.dev/play';

  @override
  String get drawerHeader => '';

  @override
  String get drawerHeader2 => '\n\n\n\ngolang home go.dev';

  @override
  String get drawerHeader3 => '\n\n\n\ngolang gopher';

  @override
  String get drawerHeader4 => '\n\n\n\ngolang terminal';

  @override
  String get ethCheckGoHelp => 'deutsch schlager Now let us check that our installation of golang is working.\nOpen up a terminal (linux & mac) or a command prompt (windows) and type in the following code:\ngo version\nThis is your go version and it should be 1.12-1.13 as these are the latest versions\nType in the following code:\ngo help\nThis is a list of all available commands.';

  @override
  String get golangInstallInstructions => 'Visit https://golang.org/doc/install and browse for assistance with ways to install golang on different system architectures.\nFor windows use the recommended .msi installer and it is fine to put the goland files deep within the windows system. C:\\Go is preferable when wanting to program.';

  @override
  String get golangInstallInstructions2 => '\nexport PATH=\$PATH:/usr/local/go/bin\n';

  @override
  String get gosyncWindowsInstallInstructions => '1, Open the MSI file you downloaded and follow the prompts to install Go. \n\nBy default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.';

  @override
  String get gosyncWindowsInstallInstructions2 => '2, Verify that you\'ve installed Go.\nIn Windows, click the Start menu.\nIn the menu\'s search box, type cmd, then press the Enter key.\nIn the Command Prompt window that appears, type the following command:\n\t\t\$ go version\n\nConfirm that the command prints the installed version of Go.';

  @override
  String get gosyncWindowsInstallInstructions3 => '3, the output should give the go version number and the architecture type. Something like this: ';

  @override
  String get gosyncWindowsInstallInstructions4 => 'go version go1.23.1 windows/amd64';

  @override
  String get gosyncWindowsInstallInstructions5 => '5, AS of November 2024 the current release of Go is 1.23. To find the most recent release check the main website https://go.dev/dl/';

  @override
  String get gosyncHeaderWindowsPostInstall => 'Windows Post Install and Setup validation';

  @override
  String get gosyncHeaderLinuxPostInstall => 'Linux Post Install and Setup validation';

  @override
  String get gosyncHeaderMultiInstall => 'Multiple Golang Installations';

  @override
  String get gosyncHeaderWindowsPostInstallCheck => 'The GOPATH is set as C:/Users/adam/go but this folder is not created yet. Let\'\'s do that now. \nWe actually need to create 3 folders /go/pkg/mod in /Users/adam ';

  @override
  String get gosyncGopathPurpose => 'The GOPATH is a folder with elevated user rights to write and run go programmes. \nThe system no knows to allow go applications to run from here. \nModules are also stored here.';

  @override
  String get gosyncGorootPurpose => 'The GOROOT is a folder is where the go.exe||go.bin executable program file is located. This is where Go lives as go.ext or go.bin. \nThe system no knows to allow go applications to run from here. \nInside this folder are go and gofmt go format.';

  @override
  String get gosyncWinMakeFolders => 'To create 3 folders /go/pkg/mod in /Users/adam open up a terminal and change to your home directory. \nType in \'mkdir /go/pkg/mod\' or create these folders visually using File Explorer.';

  @override
  String get gosyncOnlineTutorial => 'Now change directly to the \'go\' directory. Make a folder called \'hello\' and follow the opening steps online here https://go.dev/doc/tutorial/getting-started/ and you can also start here if you want to run a web server, etc. https://go.dev/learn/ ';

  @override
  String get gosyncLinuxInstallInstructions => '1, Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go:';

  @override
  String get gosyncLinuxInstallInstructions2 => '2, \$ rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz';

  @override
  String get gosyncLinuxInstallInstructions3 => '3,(You may need to run the command as root or through sudo). \nDo not untar the archive into an existing /usr/local/go tree. This is known to produce broken Go installations. ';

  @override
  String get gosyncLinuxInstallInstructions4 => '4, Add /usr/local/go/bin to the PATH environment variable. \nYou can do this by adding the following line to your \$HOME/.profile or /etc/profile (for a system-wide installation):';

  @override
  String get gosyncLinuxInstallInstructions5 => '5 export PATH=\$PATH:/usr/local/go/bin';

  @override
  String get gosyncLinuxInstallInstructions6 => '6 Note: Changes made to a profile file may not apply until the next time you log into your computer. To apply the changes immediately, just run the shell commands directly or execute them from the profile using a command such as source \$HOME/.profile.';

  @override
  String get gosyncLinuxInstallInstructions7 => '7 Verify that you\'\'ve installed Go by opening a command prompt and typing the following command:\n  \$ go version';

  @override
  String get gosyncLinuxInstallInstructions8 => '8 Confirm that the command prints the installed version of Go.';

  @override
  String get gosyncLinuxInstallInstructionsReadout => 'go version go1.23.2 linux/amd64';

  @override
  String get gosyncUninstallInstructions => '1, Linux / macOS / FreeBSD   \nDelete the go directory.  \nThis is usually /usr/local/go.';

  @override
  String get gosyncUninstallInstructions2 => '2, Remove the Go bin directory from your PATH environment variable. \nUnder Linux and FreeBSD, edit /etc/profile or \$HOME/.profile. If you installed Go with the macOS package, remove the /etc/paths.d/go file.';

  @override
  String get gosyncUninstallInstructions3 => '3,Windows \nThe simplest way to remove Go is via Add/Remove Programs in the Windows control panel: ';

  @override
  String get gosyncUninstallInstructions4 => '4, In Control Panel, double-click Add/Remove Programs. \nIn Add/Remove Programs, select Go Programming Language, click Uninstall, then follow the prompts.';

  @override
  String get gosyncUninstallInstructions5 => '5, For removing Go with tools, you can also use the command line: \nUninstall using the command line by running the following command:';

  @override
  String get gosyncUninstallInstructions6 => '6, msiexsi /q ';

  @override
  String get gosyncUninstallInstructions7 => '7, Note: Using this uninstall process for Windows will automatically remove Windows environment variables created by the original installation.';
}
