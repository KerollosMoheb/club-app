import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/feature/matches/presentation/widgets/date_selector.dart';
import 'package:club_app/feature/matches/presentation/widgets/live_match_card.dart';
import 'package:club_app/feature/matches/presentation/widgets/match_score_card.dart';
import 'package:club_app/feature/matches/presentation/widgets/sport_category_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  int _selectedCategoryIndex = 0;
  DateTime _selectedDate = DateTime.now();

  final List<Map<String, dynamic>> _categories = [
    {'name': 'Football', 'icon': Icons.sports_soccer},
    {'name': 'Basketball', 'icon': Icons.sports_basketball},
    {'name': 'Volleyball', 'icon': Icons.sports_volleyball},
    {'name': 'Tennis', 'icon': Icons.sports_tennis},
    {'name': 'Rugby', 'icon': Icons.sports_rugby},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return SportCategoryChip(
                        label: _categories[index]['name'],
                        icon: _categories[index]['icon'],
                        isSelected: _selectedCategoryIndex == index,
                        onTap: () {
                          setState(() {
                            _selectedCategoryIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                DateSelector(
                  dates: List.generate(
                    7,
                    (index) => DateTime.now().add(Duration(days: index - 2)),
                  ),
                  selectedDate: _selectedDate,
                  onDateSelected: (date) {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LIVE NOW", style: AppTextstyles.font14blackW600),
                      Text(
                        "3 MATCHES",
                        style: AppTextstyles.font12mainGreenW400,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  height: 180.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    children: [
                      LiveMatchCard(
                        homeTeamName: "Itihad",
                        awayTeamName: "Zamalek",
                        homeScore: "2",
                        awayScore: "0",
                        time: "30:03",
                        homeScorers: "Farid 21', 27'",
                        homeLogo: 'assets/images/Smouha_SC_logo 1.png',
                        awayLogo: 'assets/images/zamalek.png',
                      ),
                      LiveMatchCard(
                        homeTeamName: "Barca",
                        awayTeamName: "Real",
                        homeScore: "2",
                        awayScore: "1",
                        time: "60:00",
                        homeScorers: "messi 12'",
                        awayScorers: "ronaldo 50'",
                        homeLogo: 'assets/images/barcelona.png',
                        awayLogo: 'assets/images/stuttgart.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text("SCORES", style: AppTextstyles.font14blackW600),
                ),
                SizedBox(height: 12.h),
                _buildLeagueGroup("Premier League", [
                  const MatchScoreCard(
                    date: "21/1",
                    time: "5:00 PM",
                    homeTeam: "Al Ittihad Alexandria",
                    awayTeam: "Ceramica Cleopatra",
                    homeLogo: 'assets/images/Smouha_SC_logo 1.png',
                    awayLogo: 'assets/images/ceramica.png',
                  ),
                  const MatchScoreCard(
                    date: "21/1",
                    time: "8:00 PM",
                    homeTeam: "Smouha SC",
                    awayTeam: "Pharco FC",
                    homeLogo: 'assets/images/smouha.png',
                    awayLogo: 'assets/images/pharco.png',
                  ),
                ]),
                _buildLeagueGroup("Champions League", [
                  const MatchScoreCard(
                    date: "20/1",
                    time: "9:00 PM",
                    homeTeam: "Stuttgart",
                    awayTeam: "Real Madrid",
                    homeLogo: 'assets/images/stuttgart.png',
                    awayLogo: 'assets/images/barcelona.png',
                  ),
                ]),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeagueGroup(String leagueName, List<Widget> matches) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            leagueName,
            style: AppTextstyles.font15alreadyTextW500.copyWith(
              color: Color(0xff333232),
              fontSize: 12,
            ),
          ),
          SizedBox(height: 8.h),
          ...matches,
        ],
      ),
    );
  }
}
