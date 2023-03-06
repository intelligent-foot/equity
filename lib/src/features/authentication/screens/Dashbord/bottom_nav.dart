import 'package:equity/src/features/authentication/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/text_strings.dart';
import '../borrow_screen/borrow_screen.dart';
import '../more_screen/more_screen.dart';
import '../save_screen/save_screen.dart';
import '../transact_screen/transact_screen.dart';
import 'dashboard.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});
  final controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Dashboard(),
            TransactScreen(),
            BorrowScreen(),
            SaveScreen(),
            MoreScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade900,
          unselectedItemColor: Colors.white10,
          selectedItemColor: const Color.fromARGB(255, 248, 40, 40),
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(icon: LineAwesomeIcons.home, label: tHome),
            _bottomNavigationBarItem(
                icon: LineAwesomeIcons.calculator, label: tTransact),
            _bottomNavigationBarItem(
                icon: LineAwesomeIcons.money_check, label: tBorrow),
            _bottomNavigationBarItem(
                icon: LineAwesomeIcons.coins, label: tSave),
            _bottomNavigationBarItem(icon: LineAwesomeIcons.cog, label: tMore),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
