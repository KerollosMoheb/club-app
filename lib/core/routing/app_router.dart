import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/feature/auth/presentation/guest_screen.dart';
import 'package:club_app/feature/auth/presentation/login_screen.dart';
import 'package:club_app/feature/auth/presentation/register_screen.dart';
import 'package:club_app/feature/discount/presentation/discount_screen.dart';
import 'package:club_app/feature/events/presentation/events_screen.dart';
import 'package:club_app/feature/home/presentation/achievements_screen.dart';
import 'package:club_app/feature/home/presentation/home_screen.dart';
import 'package:club_app/feature/home/presentation/main_screen.dart';
import 'package:club_app/feature/home/presentation/news_screen.dart';
import 'package:club_app/feature/home/presentation/notification_screen.dart';
import 'package:club_app/feature/matches/presentation/views/match_details_screen.dart';
import 'package:club_app/feature/medical_clinics/presentation/doctor_screen.dart';
import 'package:club_app/feature/medical_clinics/presentation/medical_clinics_screen.dart';
import 'package:club_app/feature/renew/presentation/views/payment_details_screen.dart';
import 'package:club_app/feature/renew/presentation/views/renew_screen.dart';
import 'package:club_app/feature/renew/presentation/views/upload_document_screen.dart';
import 'package:club_app/feature/renew/presentation/views/verification_screen.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/restaurants_and_cafes_details_screen.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/restaurants_and_cafes_screen.dart';
import 'package:club_app/feature/splash/presentation/splash_screen.dart';
import 'package:club_app/feature/sports_activities/presentation/sport_screen.dart';
import 'package:club_app/feature/sports_activities/presentation/sports_activities_screen.dart';
import 'package:club_app/feature/start/presentation/start_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.startScreen:
        return MaterialPageRoute(builder: (context) => const StartScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.guestScreen:
        return MaterialPageRoute(builder: (context) => const GuestScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      case Routes.newsScreen:
        return MaterialPageRoute(builder: (context) => const NewsScreen());
      case Routes.achievementsScreen:
        return MaterialPageRoute(
          builder: (context) => const AchievementsScreen(),
        );
      case Routes.medicalClinicsScreen:
        return MaterialPageRoute(
          builder: (context) => const MedicalClinicsScreen(),
        );
      case Routes.doctorScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => DoctorScreen(
            name: args['name'],
            specialty: args['specialty'],
            location: args['location'],
            image: args['image'],
          ),
        );
      case Routes.sportsActivitiesScreen:
        return MaterialPageRoute(
          builder: (context) => const SportsActivitiesScreen(),
        );
      case Routes.sportScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => SportScreen(
            name: args['name'],
            price: args['price'],
            age: args['age'],
            image: args['image'],
          ),
        );
      case Routes.discountScreen:
        return MaterialPageRoute(builder: (context) => const DiscountScreen());
      case Routes.restaurantsAndCafesScreen:
        return MaterialPageRoute(
          builder: (context) => const RestaurantsAndCafesScreen(),
        );
      case Routes.restaurantsAndCafesDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => RestaurantsAndCafesDetailsScreen(
            name: args['name'],
            details: args['details'],
            image: args['image'],
          ),
        );
      case Routes.eventsScreen:
        return MaterialPageRoute(builder: (context) => const EventsScreen());
      case Routes.renewScreen:
        return MaterialPageRoute(builder: (context) => const RenewScreen());
      case Routes.uploadDocumentScreen:
        return MaterialPageRoute(
          builder: (context) => const UploadDocumentScreen(),
        );
      case Routes.verificationScreen:
        return MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        );
      case Routes.paymentDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const PaymentDetailsScreen(),
        );
      case Routes.matchDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const MatchDetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Route Found for {$settings.name}')),
          ),
        );
    }
  }
}
