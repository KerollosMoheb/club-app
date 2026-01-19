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
    activeImage: 'assets/images/homeActive.png',
    inactiveImage: 'assets/images/homeInActive.png',
    label: 'Home',
  ),
  NavItem(
    activeImage: 'assets/images/servicesActive.png',
    inactiveImage: 'assets/images/servicesInActive.png',
    label: 'Services',
  ),
  NavItem(
    activeImage: 'assets/images/matchesActive.png',
    inactiveImage: 'assets/images/matchesInActive.png',
    label: 'Matches',
  ),
  NavItem(
    activeImage: 'assets/images/moreActive.png',
    inactiveImage: 'assets/images/moreInActive.png',
    label: 'More',
  ),
];
