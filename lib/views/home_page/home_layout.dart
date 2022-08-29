import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../settingpage/settings_layout.dart';
import '../settingpage/utils/hero_rect_tween.dart';
import '../settingpage/utils/hero_route.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_grid.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        child: Container(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              const SizedBox(width: 64.0),
              Text(
                'Srk Monitor',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: textColor,
                  fontSize: 32.0,
                ),
              ),
              const Spacer(),
              Hero(
                createRectTween: (begin, end) =>
                    HeroRectTween(begin: begin, end: end),
                tag: 'SettingsHero',
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    onPrimary: surface4Color,
                    primary: surface2Color,
                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  label: Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: textColor,
                      height: 1.5,
                    ),
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: textColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      HeroRoute(
                        builder: (context) => const Center(
                          child: SettingsPageLayout(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 64.0),
            ],
          ),
        ),
      ),
      body: const HomeGridView(),
    );
  }
}
