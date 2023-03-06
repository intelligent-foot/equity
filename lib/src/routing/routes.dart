import 'package:equity/src/features/authentication/screens/Dashbord/bottom_nav.dart';
import 'package:equity/src/features/authentication/screens/Dashbord/dashboard.dart';
import 'package:equity/src/features/authentication/screens/borrow_screen/borrow_screen.dart';
import 'package:equity/src/features/authentication/screens/login/login_screen.dart';
import 'package:equity/src/features/authentication/screens/more_screen/more_screen.dart';
import 'package:equity/src/features/authentication/screens/save_screen/save_screen.dart';
import 'package:equity/src/features/authentication/screens/transact_screen/transact_screen.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => BottomNav()),
    GetPage(name: home, page: () => const Dashboard()),
    GetPage(name: transact, page: () => const TransactScreen()),
    GetPage(name: borrow, page: () => const BorrowScreen()),
    GetPage(name: save, page: () => const SaveScreen()),
    GetPage(name: more, page: () => const MoreScreen()),
    GetPage(name: login, page: ()=> const LoginScreen())
  ];
  static getnavbar() => navbar;
  static gethome() => home;
  static gettransact() => transact;
  static getborrow() => borrow;
  static getsave() => save;
  static getmore() => more;
  static getlogin() => login;

  static String navbar = '/';
  static String home = '/home';
  static String transact = '/transact';
  static String borrow = '/borrow';
  static String save = '/save';
  static String more = '/more';
  static String login = '/login';
}
