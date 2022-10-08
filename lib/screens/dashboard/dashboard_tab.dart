import 'package:auto_route/auto_route.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:expense_tracking/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:expense_tracking/app_router/app_router.gr.dart';

class DashboardTab extends HookWidget {
  const DashboardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRouter(),
        SettingRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        AppBar _dynamicAppBar() {
          if (tabsRouter.activeIndex == 0) {
            return AppBar(
              title: Text(tr('screen.home')),
              elevation: 0,
            );
          } else {
            return AppBar(
              title: const Text('Setting'),
              elevation: 0,
            );
          }
        }

        return Scaffold(
          appBar: _dynamicAppBar(),
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const SvgIconWidget(
                    'assets/svgs/home.svg',
                    color: AppColors.primary,
                  ),
                  onPressed: () {
                    tabsRouter.setActiveIndex(0);
                  },
                ),
                IconButton(
                  icon: const SvgIconWidget(
                    'assets/svgs/setting.svg',
                    color: AppColors.primary,
                  ),
                  onPressed: () {
                    tabsRouter.setActiveIndex(1);
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,

          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: (index) {
          //     tabsRouter.setActiveIndex(index);
          //   },
          //   items: const [
          //     BottomNavigationBarItem(
          //       label: 'Home',
          //       icon: SvgIconWidget(
          //         'assets/svgs/home.svg',
          //         color: AppColors.iconInActive,
          //       ),
          //       activeIcon: SvgIconWidget(
          //         'assets/svgs/home.svg',
          //         color: AppColors.primary,
          //       ),
          //     ),
          //     BottomNavigationBarItem(
          //       label: 'Setting',
          //       icon: SvgIconWidget(
          //         'assets/svgs/setting.svg',
          //         color: AppColors.iconInActive,
          //       ),
          //       activeIcon: SvgIconWidget(
          //         'assets/svgs/setting.svg',
          //         color: AppColors.primary,
          //       ),
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}
