import 'package:go_router/go_router.dart';
import 'package:weatherio/features/auth/presentation/views/sign_in_view.dart';
import 'package:weatherio/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:weatherio/features/splach/presentation/views/splach_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplachView(),
  ),
    GoRoute(
    path: '/onBoarding',
    builder: (context, state) => const OnBoardView(),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => const SignInView(),
  ),
]);
