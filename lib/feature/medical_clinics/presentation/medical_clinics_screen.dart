import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
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
    'All',
    'Emergency Clinic',
    'Nutrition Clinic',
    'Eyes',
    'Teeth',
  ];

  final List<DoctorModel> allDoctors = [
    DoctorModel(
      image: "assets/images/femaleDoctor.png",
      name: "Dr. Rasha Saleh",
      location:
          "Emergency clinic at the medical clinics complex in front of Gate 1",
      specialty: "Specialty: Emergency Clinic",
      available: "Available: Sat - Fri",
      category: "Emergency Clinic",
    ),
    DoctorModel(
      image: "assets/images/maleDoctor.png",
      name: "Dr. Mahmoud Naggar",
      location: "Ophthalmology clinic in front of Gate 1",
      specialty: "Specialty: Eyes",
      available: "Available: Sun, Tue, Wed",
      category: "Eyes",
    ),
    DoctorModel(
      image: "assets/images/femaleDoctor.png",
      name: "Dr.Nada Tariq",
      location:
          "Pediatric Specialist “The price is determined based on the service provided”",
      specialty: "Specialty: Eyes",
      available: "Available: Sun, Tue, Wed",
      category: "Eyes",
    ),
    DoctorModel(
      image: "assets/images/maleDoctor.png",
      name: "Dr. Mazen Abo Srea",
      location: "Olympic Swimming Pool situated directly behind Mirage Hotel ",
      specialty: "Specialty: Teeth",
      available: "Available: Sun, Tue, Wed",
      category: "Teeth",
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
      appBar: customAppBar(() => context.pop(), "Medical Clinics"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
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
