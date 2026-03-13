import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

import 'routes.dart';
import 'showcase_page.dart';
import 'pages/components/overview_page.dart';
import 'pages/components/accordion_page.dart';
import 'pages/components/breadcrumbs_page.dart';
import 'pages/components/button_page.dart';
import 'pages/components/card_page.dart';
import 'pages/components/content_background_page.dart';
import 'pages/components/content_block_page.dart';
import 'pages/components/custom_sub_header_page.dart';
import 'pages/components/footer_page.dart';
import 'pages/components/header_page.dart';
import 'pages/components/hero_banner_page.dart';
import 'pages/components/list_page.dart';
import 'pages/components/navbar_page.dart';
import 'pages/components/pagination_page.dart';
import 'pages/components/search_page.dart';
import 'pages/components/swiper_page.dart';
import 'pages/components/tabbed_content_page.dart';
import 'pages/components/tag_list_page.dart';
import 'pages/styles/overview_page.dart' as styles;
import 'pages/styles/colors_page.dart';
import 'pages/styles/dark_theme_page.dart';
import 'pages/styles/typography_page.dart';
import 'pages/styles/links_page.dart';
import 'pages/styles/images_page.dart';
import 'pages/styles/embeds_page.dart';
import 'pages/styles/fao_logo_page.dart';
import 'pages/styles/icons_page.dart';
import 'pages/styles/sdg_icons_page.dart';
import 'pages/styles/country_flags_page.dart';
import 'pages/styles/emojis_page.dart';

void main() {
  runApp(const FaoShowcaseApp());
}

enum FaoThemeMode { light, dark, internationalYear }

class FaoShowcaseApp extends StatefulWidget {
  const FaoShowcaseApp({super.key});

  @override
  State<FaoShowcaseApp> createState() => _FaoShowcaseAppState();
}

class _FaoShowcaseAppState extends State<FaoShowcaseApp> {
  FaoThemeMode _themeMode = FaoThemeMode.light;
  ThemeData? _theme;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    ThemeData theme;
    switch (_themeMode) {
      case FaoThemeMode.light:
        theme = await FaoTheme.light();
        break;
      case FaoThemeMode.dark:
        theme = await FaoTheme.dark();
        break;
      case FaoThemeMode.internationalYear:
        theme = await FaoTheme.internationalYear();
        break;
    }
    if (mounted) setState(() => _theme = theme);
  }

  void _setThemeMode(FaoThemeMode mode) {
    setState(() {
      _themeMode = mode;
      _theme = null;
    });
    _loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    final theme = _theme ?? ThemeData.light();

    return MaterialApp(
      title: 'FAO Design System',
      theme: theme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => _theme == null
            ? Scaffold(body: FaoPreLoader())
            : FaoShowcaseHome(
                themeMode: _themeMode,
                onThemeModeChanged: _setThemeMode,
              ),
        AppRoutes.componentsOverview: (context) => const ShowcasePage(
              title: 'Components Overview',
              child: ComponentsOverviewPage(),
            ),
        AppRoutes.componentsAccordion: (context) => const ShowcasePage(
              title: 'Accordion',
              child: AccordionPage(),
            ),
        AppRoutes.componentsBreadcrumbs: (context) => const ShowcasePage(
              title: 'Breadcrumbs',
              child: BreadcrumbsPage(),
            ),
        AppRoutes.componentsButton: (context) => const ShowcasePage(
              title: 'Button',
              child: ButtonPage(),
            ),
        AppRoutes.componentsCard: (context) => const ShowcasePage(
              title: 'Card',
              child: CardPage(),
            ),
        AppRoutes.componentsContentBackground: (context) => const ShowcasePage(
              title: 'Content Background',
              child: ContentBackgroundPage(),
            ),
        AppRoutes.componentsContentBlock: (context) => const ShowcasePage(
              title: 'Content Block',
              child: ContentBlockPage(),
            ),
        AppRoutes.componentsCustomSubHeader: (context) => const ShowcasePage(
              title: 'Custom Sub Header',
              child: CustomSubHeaderPage(),
            ),
        AppRoutes.componentsFooter: (context) => const ShowcasePage(
              title: 'Footer',
              child: FooterPage(),
            ),
        AppRoutes.componentsHeader: (context) => const ShowcasePage(
              title: 'Header',
              child: HeaderPage(),
            ),
        AppRoutes.componentsHeroBanner: (context) => const ShowcasePage(
              title: 'Hero Banner',
              child: HeroBannerPage(),
            ),
        AppRoutes.componentsList: (context) => const ShowcasePage(
              title: 'List',
              child: ListPage(),
            ),
        AppRoutes.componentsNavbar: (context) => const ShowcasePage(
              title: 'Navbar',
              child: NavbarPage(),
            ),
        AppRoutes.componentsPagination: (context) => const ShowcasePage(
              title: 'Pagination',
              child: PaginationPage(),
            ),
        AppRoutes.componentsSearch: (context) => const ShowcasePage(
              title: 'Search',
              child: SearchPage(),
            ),
        AppRoutes.componentsSwiper: (context) => const ShowcasePage(
              title: 'Swiper',
              child: SwiperPage(),
            ),
        AppRoutes.componentsTabbedContent: (context) => const ShowcasePage(
              title: 'Tabbed Content',
              child: TabbedContentPage(),
            ),
        AppRoutes.componentsTagList: (context) => const ShowcasePage(
              title: 'Tag List',
              child: TagListPage(),
            ),
        AppRoutes.stylesOverview: (context) => const ShowcasePage(
              title: 'Styles Overview',
              child: styles.StylesOverviewPage(),
            ),
        AppRoutes.stylesColors: (context) => const ShowcasePage(
              title: 'Colors',
              child: ColorsPage(),
            ),
        AppRoutes.stylesDarkTheme: (context) => const ShowcasePage(
              title: 'Dark Theme',
              child: DarkThemePage(),
            ),
        AppRoutes.stylesTypography: (context) => const ShowcasePage(
              title: 'Typography',
              child: TypographyPage(),
            ),
        AppRoutes.stylesLinks: (context) => const ShowcasePage(
              title: 'Links',
              child: LinksPage(),
            ),
        AppRoutes.stylesImages: (context) => const ShowcasePage(
              title: 'Images',
              child: ImagesPage(),
            ),
        AppRoutes.stylesEmbeds: (context) => const ShowcasePage(
              title: 'Embeds',
              child: EmbedsPage(),
            ),
        AppRoutes.stylesFaoLogo: (context) => const ShowcasePage(
              title: 'FAO Logo',
              child: FaoLogoPage(),
            ),
        AppRoutes.stylesIcons: (context) => const ShowcasePage(
              title: 'Icons',
              child: IconsPage(),
            ),
        AppRoutes.stylesSdgIcons: (context) => const ShowcasePage(
              title: 'SDG Icons',
              child: SdgIconsPage(),
            ),
        AppRoutes.stylesCountryFlags: (context) => const ShowcasePage(
              title: 'Country Flags',
              child: CountryFlagsPage(),
            ),
        AppRoutes.stylesEmojis: (context) => const ShowcasePage(
              title: 'Emojis',
              child: EmojisPage(),
            ),
      },
    );
  }
}

class FaoShowcaseHome extends StatelessWidget {
  const FaoShowcaseHome({
    super.key,
    required this.themeMode,
    required this.onThemeModeChanged,
  });

  final FaoThemeMode themeMode;
  final ValueChanged<FaoThemeMode> onThemeModeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _FaoShowcaseDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text('FAO Design System'),
            actions: [
              PopupMenuButton<FaoThemeMode>(
                icon: const Icon(Icons.palette_outlined),
                onSelected: onThemeModeChanged,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: FaoThemeMode.light,
                    child: Text('Light'),
                  ),
                  const PopupMenuItem(
                    value: FaoThemeMode.dark,
                    child: Text('Dark'),
                  ),
                  const PopupMenuItem(
                    value: FaoThemeMode.internationalYear,
                    child: Text('International Year'),
                  ),
                ],
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FaoHeroBanner(
                  minHeight: 300,
                  title: 'FAO Design System Flutter',
                  subtitle: 'Components, colors, and themes for Flutter apps',
                  linkIcon: FaoLinkIcon(
                    label: 'Learn more',
                    onTap: () {},
                  ),
                  background: Container(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                FaoSection(
                  title: 'Components',
                  subtitle: 'Explore all available components',
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Components Overview'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.componentsOverview),
                      ),
                      ListTile(
                        title: const Text('Styles Overview'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.stylesOverview),
                      ),
                    ],
                  ),
                ),
                FaoSection(
                  title: 'Small Slots Row',
                  child: FaoSmallSlotsRow(
                    children: [
                      FaoCard(
                        title: 'Slot 1',
                        body: 'Content',
                        image: Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 32),
                        ),
                      ),
                      FaoCard(
                        title: 'Slot 2',
                        body: 'Content',
                        image: Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 32),
                        ),
                      ),
                      FaoCard(
                        title: 'Slot 3',
                        body: 'Content',
                        image: Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 32),
                        ),
                      ),
                    ],
                  ),
                ),
                FaoSection(
                  title: 'Sample Cards',
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final crossAxisCount =
                          constraints.maxWidth > 600 ? 3 : 1;
                      return GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: FaoSpacing.md,
                        crossAxisSpacing: FaoSpacing.md,
                        childAspectRatio: 0.65,
                        children: [
                          FaoCard(
                            title: 'Article Card',
                            subtitle: 'Sample subtitle',
                            body: 'Card body text',
                            image: Container(
                              color: Colors.grey[300],
                              child: const Icon(Icons.image, size: 48),
                            ),
                          ),
                          FaoCard(
                            title: 'News Card',
                            variant: FaoCardVariant.newsHome,
                            body: 'News content preview',
                            image: Container(
                              color: Colors.grey[300],
                              child: const Icon(Icons.newspaper, size: 48),
                            ),
                          ),
                          FaoDataCard(
                            title: 'Data Point',
                            subtitle: 'Description',
                            value: '1.2M',
                          ),
                        ],
                      );
                    },
                  ),
                ),
                FaoFooter(
                  copyright: 'FAO Design System',
                  linkColumns: [
                    [
                      FaoFooterLink(label: 'About', onTap: () {}),
                      FaoFooterLink(label: 'Contact', onTap: () {}),
                    ],
                    [
                      FaoFooterLink(label: 'Privacy', onTap: () {}),
                      FaoFooterLink(label: 'Terms', onTap: () {}),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FaoShowcaseDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              'FAO Design System',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
          ...AppRoutes.componentsNav.expand((section) => [
                ListTile(
                  title: Text(
                    section.label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                ...section.items.map(
                  (item) => ListTile(
                    title: Row(
                      children: [
                        Expanded(child: Text(item.label)),
                        if (item.comingSoon)
                          Text(
                            'Coming soon',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                      ],
                    ),
                    onTap: item.comingSoon
                        ? null
                        : () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, item.route);
                          },
                  ),
                ),
              ]),
          ...AppRoutes.stylesNav.expand((section) => [
                ListTile(
                  title: Text(
                    section.label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                ...section.items.map(
                  (item) => ListTile(
                    title: Row(
                      children: [
                        Expanded(child: Text(item.label)),
                        if (item.comingSoon)
                          Text(
                            'Coming soon',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                      ],
                    ),
                    onTap: item.comingSoon
                        ? null
                        : () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, item.route);
                          },
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
