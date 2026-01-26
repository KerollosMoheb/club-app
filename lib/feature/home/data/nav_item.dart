import 'package:club_app/core/utils/app_images.dart';

class NavItem {
  final String activeImage;
  final String inactiveImage;
  final String label;

  NavItem({
    required this.activeImage,
    required this.inactiveImage,
    required this.label,
  });
}

final List<NavItem> navItems = [
  NavItem(
    activeImage: Assets.imagesHomeActive,
    inactiveImage: Assets.imagesHomeInActive,
    label: 'Home',
  ),
  NavItem(
    activeImage: Assets.imagesServicesActive,
    inactiveImage: Assets.imagesServicesInActive,
    label: 'Services',
  ),
  NavItem(
    activeImage: Assets.imagesMatchesActive,
    inactiveImage: Assets.imagesMatchesInActive,
    label: 'Matches',
  ),
  NavItem(
    activeImage: Assets.imagesMoreActive,
    inactiveImage: Assets.imagesMoreInActive,
    label: 'More',
  ),
];
