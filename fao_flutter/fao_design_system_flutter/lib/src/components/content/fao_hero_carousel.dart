import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import 'fao_hero_banner.dart';

class FaoHeroCarouselSlide {
  const FaoHeroCarouselSlide({
    required this.background,
    this.title,
    this.subtitle,
    this.child,
    this.linkIcon,
  });

  final Widget background;
  final String? title;
  final String? subtitle;
  final Widget? child;
  final Widget? linkIcon;
}

class FaoHeroCarousel extends StatefulWidget {
  const FaoHeroCarousel({
    super.key,
    required this.slides,
    this.autoPlay = false,
    this.autoPlayInterval = const Duration(seconds: 5),
  });

  final List<FaoHeroCarouselSlide> slides;
  final bool autoPlay;
  final Duration autoPlayInterval;

  @override
  State<FaoHeroCarousel> createState() => _FaoHeroCarouselState();
}

class _FaoHeroCarouselState extends State<FaoHeroCarousel> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    if (widget.autoPlay && widget.slides.length > 1) {
      _startAutoPlay();
    }
  }

  void _startAutoPlay() {
    Future.delayed(widget.autoPlayInterval, () {
      if (!mounted) return;
      final next = (_controller.page?.round() ?? 0) + 1;
      if (next >= widget.slides.length) {
        _controller.jumpToPage(0);
      } else {
        _controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
      _startAutoPlay();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.slides.isEmpty) return const SizedBox.shrink();
    if (widget.slides.length == 1) {
      final s = widget.slides.first;
      return FaoHeroBanner(
        background: s.background,
        title: s.title,
        subtitle: s.subtitle,
        linkIcon: s.linkIcon,
        child: s.child,
      );
    }

    return SizedBox(
      height: 425,
      child: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: widget.slides.length,
            itemBuilder: (context, index) {
              final s = widget.slides[index];
              return FaoHeroBanner(
                background: s.background,
                title: s.title,
                subtitle: s.subtitle,
                linkIcon: s.linkIcon,
                minHeight: 425,
                child: s.child,
              );
            },
          ),
          Positioned(
            left: FaoSpacing.md,
            top: 0,
            bottom: 0,
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
          Positioned(
            right: FaoSpacing.md,
            top: 0,
            bottom: 0,
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.chevron_right, color: Colors.white),
                onPressed: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
