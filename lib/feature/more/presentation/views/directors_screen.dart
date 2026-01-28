import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/data/director_model.dart';
import 'package:club_app/feature/more/presentation/widgets/director_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirectorsScreen extends StatelessWidget {
  const DirectorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DirectorModel> directors = [
      DirectorModel(
        name: AppStrings.robertTaylor,
        role: AppStrings.headOfOperations,
        image: Assets.imagesRobertTaylor,
      ),
      DirectorModel(
        name: AppStrings.elenaRodriguez,
        role: AppStrings.secretaryGeneral,
        image: Assets.imagesElenaRodriguez,
      ),
      DirectorModel(
        name: AppStrings.davidChen,
        role: AppStrings.headOfOperations,
        image: Assets.imagesDavidChen,
      ),
      DirectorModel(
        name: AppStrings.sarahJohnson,
        role: AppStrings.secretaryGeneral,
        image: Assets.imagesSarahJenkins,
      ),
    ];

    return Scaffold(
      appBar: customAppBar(() => context.pop(), AppStrings.boardOfDirectors),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              AppStrings.directorsSubtitle,
              textAlign: TextAlign.center,
              style: AppTextstyles.font11blackW400.copyWith(fontSize: 16),
            ),
            SizedBox(height: 30.h),
            DirectorCard(
              director: DirectorModel(
                name: AppStrings.marcusSterling,
                role: AppStrings.clubPresident,
                image: Assets.imagesMarcusSterling,
              ),
              isFeatured: true,
            ),
            SizedBox(height: 16.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: directors.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) =>
                  DirectorCard(director: directors[index], isFeatured: false),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
