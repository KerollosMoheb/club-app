import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/feature/auth/presentation/views/guest_screen.dart';
import 'package:club_app/feature/auth/presentation/views/login_screen.dart';
import 'package:club_app/feature/auth/presentation/views/register_screen.dart';
import 'package:club_app/feature/discount/presentation/views/discount_screen.dart';
import 'package:club_app/feature/events/presentation/views/events_screen.dart';
import 'package:club_app/feature/home/presentation/views/achievements_screen.dart';
import 'package:club_app/feature/home/presentation/views/home_screen.dart';
import 'package:club_app/feature/home/presentation/views/main_screen.dart';
import 'package:club_app/feature/home/presentation/views/news_screen.dart';
import 'package:club_app/feature/home/presentation/views/notification_screen.dart';
import 'package:club_app/feature/matches/presentation/views/match_details_screen.dart';
import 'package:club_app/feature/medical_clinics/presentation/views/doctor_screen.dart';
import 'package:club_app/feature/medical_clinics/presentation/views/medical_clinics_screen.dart';
import 'package:club_app/feature/more/presentation/views/about_us_screen.dart';
import 'package:club_app/feature/more/presentation/views/chat_with_alex_screen.dart';
import 'package:club_app/feature/more/presentation/views/complaint_screen.dart';
import 'package:club_app/feature/more/presentation/views/directors_screen.dart';
import 'package:club_app/feature/more/presentation/views/help_and_support_screen.dart';
import 'package:club_app/feature/more/presentation/views/increase_your_points_screen.dart';
import 'package:club_app/feature/more/presentation/views/more_screen.dart';
import 'package:club_app/feature/more/presentation/views/my_reservations_screen.dart';
import 'package:club_app/feature/more/presentation/views/points_and_reward_screen.dart';
import 'package:club_app/feature/more/presentation/views/privacy_and_policy_screen.dart';
import 'package:club_app/feature/more/presentation/views/profile_screen.dart';
import 'package:club_app/feature/renew/presentation/views/payment_details_screen.dart';
import 'package:club_app/feature/renew/presentation/views/renew_screen.dart';
import 'package:club_app/feature/renew/presentation/views/upload_document_screen.dart';
import 'package:club_app/feature/renew/presentation/views/verification_screen.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/views/restaurants_and_cafes_details_screen.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/views/restaurants_and_cafes_screen.dart';
import 'package:club_app/feature/splash/presentation/views/splash_screen.dart';
import 'package:club_app/feature/sports_activities/presentation/views/sport_screen.dart';
import 'package:club_app/feature/sports_activities/presentation/views/sports_activities_screen.dart';
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
      case Routes.moreScreen:
        return MaterialPageRoute(builder: (context) => const MoreScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case Routes.myReservationsScreen:
        return MaterialPageRoute(
          builder: (context) => const MyReservationsScreen(),
        );
      case Routes.complaintScreen:
        return MaterialPageRoute(builder: (context) => const ComplaintScreen());
      case Routes.directorsScreen:
        return MaterialPageRoute(builder: (context) => const DirectorsScreen());
      case Routes.privacyAndPolicyScreen:
        return MaterialPageRoute(
          builder: (context) => const PrivacyAndPolicyScreen(),
        );
      case Routes.aboutUsScreen:
        return MaterialPageRoute(builder: (context) => const AboutUsScreen());
      case Routes.helpAndSupportScreen:
        return MaterialPageRoute(
          builder: (context) => const HelpAndSupportScreen(),
        );
      case Routes.chatWithAlexScreen:
        return MaterialPageRoute(
          builder: (context) => const ChatWithAlexScreen(),
        );
      case Routes.pointsAndRewardsScreen:
        return MaterialPageRoute(
          builder: (context) => const PointsAndRewardScreen(),
        );
      case Routes.increaseYourPointsScreen:
        return MaterialPageRoute(
          builder: (context) => const IncreaseYourPointsScreen(),
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
