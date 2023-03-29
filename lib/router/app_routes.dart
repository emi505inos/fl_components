import 'package:flutter/material.dart';

import '../models/menu_options.dart';
import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    // MenuOptions(route: 'home',name: 'Home Screen',screen: const HomeScreen(),icon: Icons.home,),
    MenuOptions(
      route: 'Listview1',
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOptions(
      route: 'Listview2',
      name: 'Listview tipo 2',
      screen: const Listview2Screen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOptions(
      route: 'alert',
      name: 'Alertas',
      screen: const AScreen(),
      icon: Icons.add_alert,
    ),
    MenuOptions(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_giftcard,
    ),
    MenuOptions(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOptions(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_arrow_outlined,
    ),
    MenuOptions(
      route: 'inputs',
      name: 'Text Inputs ',
      screen: const InputsScreens(),
      icon: Icons.insert_page_break_rounded,
    ),
    MenuOptions(
      route: 'slider ',
      name: ' Slider & Checks ',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_rounded,
    ),
  ];

  static var onGenerateRoute;

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};
    AppRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    ;
    return AppRoutes;
  }
}

//static Map<String, WidgetBuilder> routes = {
// 'home': (BuildContext context) => const HomeScreen(),
//'listview1': (BuildContext context) => const Listview1Screen(),
//'listview2': (BuildContext context) => const Listview2Screen(),
//'alert': (BuildContext context) => const AScreen(),
// 'card': (BuildContext context) => const CardScreen(),};

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => const HomeScreen());
}