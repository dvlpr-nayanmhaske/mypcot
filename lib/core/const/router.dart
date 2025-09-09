import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mypcot/features/Home/bloc/Home_bloc.dart';
import 'package:mypcot/features/Home/pages/Home_screen.dart';

enum Routes { homeScreen, addDetailsScreen }

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) =>
          BlocProvider(create: (context) => HomeBloc(), child: HomeScreen()),
      name: Routes.homeScreen.name,
    ),

  ],
);
