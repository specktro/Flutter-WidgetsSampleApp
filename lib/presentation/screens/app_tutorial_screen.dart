import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;
  
  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl
  });
}

final List<SlideInfo> slides = [
  SlideInfo(title: 'Search the food', caption: 'Lorem ipsum lorem ipsum lorem ipsum', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Fast delivery', caption: 'Lorem ipsum lorem ipsum lorem ipsum', imageUrl: 'assets/images/2.png'),
  SlideInfo(title: 'Enjoy your meal', caption: 'Lorem ipsum lorem ipsum lorem ipsum', imageUrl: 'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageController;
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    pageController.addListener(() {
      final page = pageController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: slides.map((slideInfo) => _SlideView(slideInfo)).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip')
            ),
          ),
          endReached ? Positioned(
            right: 30,
            bottom: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Start')
              ),
            )
          ) : const SizedBox()
        ]
      )
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class _SlideView extends StatelessWidget {
  final SlideInfo slideInfo;
  
  const _SlideView(this.slideInfo);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(slideInfo.imageUrl)),
            const SizedBox(height: 20),
            Text(slideInfo.title, style: titleStyle),
            const SizedBox(height: 10),
            Text(slideInfo.caption, style: captionStyle)
          ],
        ),
      ),
    );
  }
}