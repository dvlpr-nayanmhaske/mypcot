import 'package:go_router/go_router.dart';
import 'package:mypcot/features/Home/pages/Home_screen.dart';

enum Routes { homeScreen }

GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomeScreen(),
      name: Routes.homeScreen.name,
    ),
  ],
);
