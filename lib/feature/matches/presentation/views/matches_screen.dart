import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
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
    {'name': AppStrings.football, 'icon': Icons.sports_soccer},
    {'name': AppStrings.basketball, 'icon': Icons.sports_basketball},
    {'name': AppStrings.volleyball, 'icon': Icons.sports_volleyball},
    {'name': AppStrings.tennis, 'icon': Icons.sports_tennis},
    {'name': AppStrings.rugby, 'icon': Icons.sports_rugby},
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
                      Text(
                        AppStrings.liveNow,
                        style: AppTextstyles.font14blackW600,
                      ),
                      Text(
                        AppStrings.threeMatches,
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
                        homeTeamName: AppStrings.itihad,
                        awayTeamName: AppStrings.zamalek,
                        homeScore: "2",
                        awayScore: "0",
                        time: "30:03",
                        homeScorers: AppStrings.faridScorers,
                        homeLogo: Assets.imagesItihad,
                        awayLogo: Assets.imagesZamalek,
                      ),
                      LiveMatchCard(
                        homeTeamName: AppStrings.barca,
                        awayTeamName: AppStrings.real,
                        homeScore: "2",
                        awayScore: "1",
                        time: "60:00",
                        homeScorers: AppStrings.messiScorer,
                        awayScorers: AppStrings.ronaldoScorer,
                        homeLogo: Assets.imagesBarcelona,
                        awayLogo: Assets.imagesStuttgart,
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
                _buildLeagueGroup(AppStrings.premierLeague, [
                  const MatchScoreCard(
                    date: "21/1",
                    time: "5:00 PM",
                    homeTeam: AppStrings.alIttihadAlexandria,
                    awayTeam: AppStrings.ceramicaCleopatra,
                    homeLogo: Assets.imagesItihad,
                    awayLogo: Assets.imagesCeramica,
                  ),
                  const MatchScoreCard(
                    date: "21/1",
                    time: "8:00 PM",
                    homeTeam: AppStrings.smouhaSc,
                    awayTeam: AppStrings.pharcoFc,
                    homeLogo: Assets.imagesSmouha,
                    awayLogo: Assets.imagesPharco,
                  ),
                ]),
                _buildLeagueGroup(AppStrings.championsLeague, [
                  const MatchScoreCard(
                    date: "20/1",
                    time: "9:00 PM",
                    homeTeam: AppStrings.stuttgart,
                    awayTeam: AppStrings.realMadrid,
                    homeLogo: Assets.imagesStuttgart,
                    awayLogo: Assets.imagesBarcelona,
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
