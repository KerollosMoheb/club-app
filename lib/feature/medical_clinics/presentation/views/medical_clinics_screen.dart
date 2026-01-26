import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/medical_clinics/data/doctor_model.dart';
import 'package:club_app/feature/medical_clinics/presentation/widgets/doctors_info.dart';
import 'package:club_app/feature/medical_clinics/presentation/widgets/medical_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalClinicsScreen extends StatefulWidget {
  const MedicalClinicsScreen({super.key});

  @override
  State<MedicalClinicsScreen> createState() => _MedicalClinicsScreenState();
}

class _MedicalClinicsScreenState extends State<MedicalClinicsScreen> {
  int _selectedCategoryIndex = 0;

  final List<String> categories = [
    AppStrings.all,
    AppStrings.emergencyClinic,
    AppStrings.nutritionClinic,
    AppStrings.eyes,
    AppStrings.teeth,
  ];

  final List<DoctorModel> allDoctors = [
    DoctorModel(
      image: Assets.imagesFemaleDoctor,
      name: "Dr. Rasha Saleh",
      location: AppStrings.emergencyClinicLocation,
      specialty: AppStrings.emergencyClinicSpecialty,
      available: AppStrings.emergencyClinicAvailability,
      category: AppStrings.emergencyClinic,
    ),
    DoctorModel(
      image: Assets.imagesMaleDoctor,
      name: AppStrings.drMahmoudNaggar,
      location: AppStrings.ophthalmologyClinicLocation,
      specialty: AppStrings.ophthalmologyClinicSpecialty,
      available: AppStrings.ophthalmologyClinicAvailability,
      category: AppStrings.eyes,
    ),
    DoctorModel(
      image: Assets.imagesFemaleDoctor,
      name: AppStrings.drNadaTariq,
      location: AppStrings.pediatricSpecialist,
      specialty: AppStrings.pediatricSpecialistSpecialty,
      available: AppStrings.pediatricSpecialistAvailability,
      category: AppStrings.eyes,
    ),
    DoctorModel(
      image: Assets.imagesMaleDoctor,
      name: AppStrings.drMazenAboSrea,
      location: AppStrings.olympicSwimmingPool,
      specialty: AppStrings.specialtyEmergencyClinic,
      available: AppStrings.availableSaturdayThursdayFriday,
      category: AppStrings.emergencyClinic,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredDoctors = _selectedCategoryIndex == 0
        ? allDoctors
        : allDoctors
              .where(
                (doc) => doc.category == categories[_selectedCategoryIndex],
              )
              .toList();

    return Scaffold(
      appBar: customAppBar(() => context.pop(), AppStrings.medicalClinics),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              MedicalCategories(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategoryChanged: (index) {
                  setState(() => _selectedCategoryIndex = index);
                },
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: filteredDoctors.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final doctor = filteredDoctors[index];
                    return DoctorsInfo(
                      image: doctor.image,
                      name: doctor.name,
                      location: doctor.location,
                      specialty: doctor.specialty,
                      available: doctor.available,
                      onTap: () {
                        context.pushNamed(
                          Routes.doctorScreen,
                          arguments: {
                            'name': doctor.name,
                            'specialty': doctor.specialty,
                            'location': doctor.location,
                            'image': doctor.image,
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
