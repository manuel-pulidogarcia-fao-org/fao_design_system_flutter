class AppRoutes {
  AppRoutes._();

  static const home = '/';
  static const componentsOverview = '/components/overview';
  static const componentsAccordion = '/components/accordion';
  static const componentsBreadcrumbs = '/components/breadcrumbs';
  static const componentsButton = '/components/button';
  static const componentsCard = '/components/card';
  static const componentsContentBackground = '/components/content-background';
  static const componentsContentBlock = '/components/content-block';
  static const componentsCustomSubHeader = '/components/custom-sub-header';
  static const componentsFooter = '/components/footer';
  static const componentsHeader = '/components/header';
  static const componentsHeroBanner = '/components/hero-banner';
  static const componentsList = '/components/list';
  static const componentsNavbar = '/components/navbar';
  static const componentsPagination = '/components/pagination';
  static const componentsSearch = '/components/search';
  static const componentsSwiper = '/components/swiper';
  static const componentsTabbedContent = '/components/tabbed-content';
  static const componentsTagList = '/components/tag-list';

  static const stylesOverview = '/styles/overview';
  static const stylesColors = '/styles/colors';
  static const stylesDarkTheme = '/styles/dark-theme';
  static const stylesTypography = '/styles/typography';
  static const stylesLinks = '/styles/links';
  static const stylesImages = '/styles/images';
  static const stylesEmbeds = '/styles/embeds';
  static const stylesFaoLogo = '/styles/fao-logo';
  static const stylesIcons = '/styles/icons';
  static const stylesSdgIcons = '/styles/sdg-icons';
  static const stylesCountryFlags = '/styles/country-flags';
  static const stylesEmojis = '/styles/emojis';

  static const List<NavSection> componentsNav = [
    NavSection('Components', [
      NavItem('Overview', componentsOverview),
      NavItem('Accordion', componentsAccordion),
      NavItem('Breadcrumbs', componentsBreadcrumbs),
      NavItem('Button', componentsButton),
      NavItem('Card', componentsCard),
      NavItem('Content Background', componentsContentBackground),
      NavItem('Content Block', componentsContentBlock),
      NavItem('Custom Sub Header', componentsCustomSubHeader),
      NavItem('Footer', componentsFooter),
      NavItem('Header', componentsHeader),
      NavItem('Hero Banner', componentsHeroBanner),
      NavItem('List', componentsList),
      NavItem('Navbar', componentsNavbar),
      NavItem('Pagination', componentsPagination),
      NavItem('Search', componentsSearch),
      NavItem('Swiper', componentsSwiper),
      NavItem('Tabbed Content', componentsTabbedContent),
      NavItem('Tag List', componentsTagList),
    ]),
  ];

  static const List<NavSection> stylesNav = [
    NavSection('Styles', [
      NavItem('Overview', stylesOverview),
      NavItem('Colors', stylesColors),
      NavItem('Dark Theme', stylesDarkTheme),
      NavItem('Typography', stylesTypography),
      NavItem('Links', stylesLinks),
      NavItem('Images', stylesImages),
      NavItem('Embeds', stylesEmbeds),
      NavItem('FAO Logo', stylesFaoLogo),
      NavItem('Icons', stylesIcons),
      NavItem('SDG Icons', stylesSdgIcons),
      NavItem('Country Flags', stylesCountryFlags),
      NavItem('Emojis', stylesEmojis),
    ]),
  ];
}

class NavSection {
  const NavSection(this.label, this.items);

  final String label;
  final List<NavItem> items;
}

class NavItem {
  const NavItem(this.label, this.route, {this.comingSoon = false});

  final String label;
  final String route;
  final bool comingSoon;
}
