import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/layout/news_cubit/news_cubit.dart';
import 'package:news_app/layout/news_cubit/news_states.dart';
import 'package:line_icons/line_icons.dart';
import 'package:news_app/shared/components/search_bar.dart';
import 'package:news_app/shared/cubit/app_cubit.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: SearchBar(),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Ink(
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      AppCubit.get(context).changeMode();
                    },
                    icon: Icon(
                      AppCubit.get(context).isDark
                          ? Icons.sunny
                          : Icons.brightness_2_rounded,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: cubit.pages[cubit.pageIndex],
          //****************************************************
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  haptic: true,
                  backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor!,
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedItemColor,
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Theme.of(context).cardColor,
                  color: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
                  tabs: const [
                    GButton(
                      icon: Icons.home_rounded,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.desktop,
                      text: 'Tech',
                    ),
                    GButton(
                      icon: Icons.sports_basketball_rounded,
                      text: 'sport',
                    ),
                    GButton(
                      icon: Icons.health_and_safety_rounded,
                      text: 'Health',
                    ),
                  ],
                  selectedIndex: cubit.pageIndex,
                  onTabChange: (index) {
                    cubit.changePage(index);
                  },
                ),
              ),
            ),
          ),
          //****************************************************
        );
      },
    );
  }
}
