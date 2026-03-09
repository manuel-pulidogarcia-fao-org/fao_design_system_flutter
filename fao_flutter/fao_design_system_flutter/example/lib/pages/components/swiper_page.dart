import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class SwiperPage extends StatelessWidget {
  const SwiperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: FaoHeroCarousel(
        slides: [
          FaoHeroCarouselSlide(
            background: Container(color: Theme.of(context).colorScheme.primary),
            title: 'Slide 1',
            subtitle: 'First slide',
            linkIcon: FaoLinkIcon(label: 'Learn more', onTap: () {}),
          ),
          FaoHeroCarouselSlide(
            background: Container(color: FaoColors.orange),
            title: 'Slide 2',
            subtitle: 'Second slide',
            linkIcon: FaoLinkIcon(label: 'Learn more', onTap: () {}),
          ),
          FaoHeroCarouselSlide(
            background: Container(color: FaoSdgColors.sdg3),
            title: 'Slide 3',
            subtitle: 'Third slide',
            linkIcon: FaoLinkIcon(label: 'Learn more', onTap: () {}),
          ),
        ],
        autoPlay: true,
      ),
    );
  }
}
