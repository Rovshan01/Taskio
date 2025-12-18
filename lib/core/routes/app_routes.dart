import 'package:Taskio/features/auth/success_page.dart';
import 'package:go_router/go_router.dart';

// Splash & Onboarding
import '../../features/auth/reset_password_page.dart';
import '../../features/splash/splash_page.dart';
import '../../features/onboarding/onboarding_page.dart';

// Auth
import '../../features/auth/login_page.dart';

// Home
import '../../features/tasks/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    // Splash
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    // Onboarding
    GoRoute(
      path: '/onboardingpage',
      builder: (context, state) => const OnboardingPage(),
    ),
    // Login
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    // Reset Password
    GoRoute(
      path: '/reset-password',
      builder: (context, state) => const ResetPasswordPage(),
    ),
    // Success
    GoRoute(
      path: '/success',
      builder: (context, state) => const SuccessPage(),
    ),
    // Home
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
  ],
);
