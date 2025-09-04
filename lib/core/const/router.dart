import 'package:go_router/go_router.dart';
import 'package:mypcot/core/componets/navBar.dart';
import 'package:mypcot/features/Home/pages/Home_screen.dart';

enum Routes { homeScreen, navBarScreen }

GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomeScreen(),
      name: Routes.homeScreen.name,
    ),
    GoRoute(
      path: "/NavBarScreen",
      name: Routes.navBarScreen.name,
      builder: (context, state) => NavBarScreen(),
    ),
  ],
);
