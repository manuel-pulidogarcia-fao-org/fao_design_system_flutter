import 'package:flutter/material.dart';
import '../../tokens/fao_sdg_colors.dart';
import 'fao_sdg_grid_item.dart';

class FaoSdgMobileSlide {
  const FaoSdgMobileSlide({
    required this.sdgIndex,
    this.caption,
  });

  final int sdgIndex;
  final String? caption;
}

class FaoSdgMobile extends StatefulWidget {
  const FaoSdgMobile({
    super.key,
    required this.slides,
    this.onSdgTap,
  });

  final List<FaoSdgMobileSlide> slides;
  final void Function(int sdgIndex)? onSdgTap;

  @override
  State<FaoSdgMobile> createState() => _FaoSdgMobileState();
}

class _FaoSdgMobileState extends State<FaoSdgMobile> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.slides.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: widget.slides.length,
            itemBuilder: (context, index) {
              final slide = widget.slides[index];
              return Container(
                color: FaoSdgColors.forSdg(slide.sdgIndex),
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaoSdgGridItem(
                      sdgIndex: slide.sdgIndex,
                      size: 75,
                      label: '${slide.sdgIndex}',
                      onTap: widget.onSdgTap != null
                          ? () => widget.onSdgTap!(slide.sdgIndex)
                          : null,
                    ),
                    if (slide.caption != null) ...[
                      const SizedBox(height: 16),
                      Text(
                        slide.caption!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
          Positioned(
            left: 16,
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
            right: 16,
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
