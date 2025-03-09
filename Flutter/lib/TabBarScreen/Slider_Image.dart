import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infinite Carousel Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Navigation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InfiniteCarouselsPage(), // Navigating to the InfiniteCarouselsPage
              ),
            );
          },
          child: const Text('Go to Carousel Page'),
        ),
      ),
    );
  }
}

class InfiniteCarouselsPage extends StatelessWidget {
  const InfiniteCarouselsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Carousel Examples'),
      ),
      body: ListView(
        children: const [
          BasicInfiniteCarousel(),
          ThumbnailNavigationCarousel(),
          FullScreenInfiniteCarousel(),
          VerticalInfiniteCarousel(),
          FadeTransitionInfiniteCarousel(),
          InfiniteCarouselWithIndicator(),
          CustomTransitionInfiniteCarousel(),
        ],
      ),
    );
  }
}

// 1. Basic Infinite Carousel
class BasicInfiniteCarousel extends StatelessWidget {
  const BasicInfiniteCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text('Basic Infinite Image Carousel'),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image.network(
                "https://picsum.photos/300/200?random=$index",
                fit: BoxFit.cover,
              );
            },
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}

// 2. Thumbnail Navigation Carousel
class ThumbnailNavigationCarousel extends StatelessWidget {
  const ThumbnailNavigationCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text('Thumbnail Navigation Carousel'),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image.network(
                "https://picsum.photos/300/200?random=$index",
                fit: BoxFit.cover,
              );
            },
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to the corresponding image in the carousel
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://picsum.photos/100/100?random=$index",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// 3. Full-Screen Infinite Carousel
class FullScreenInfiniteCarousel extends StatelessWidget {
  const FullScreenInfiniteCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Image.network(
            "https://picsum.photos/500/300?random=$index",
            fit: BoxFit.cover,
          );
        },
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true,
        ),
      ),
    );
  }
}

// 4. Vertical Infinite Carousel
class VerticalInfiniteCarousel extends StatelessWidget {
  const VerticalInfiniteCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Image.network(
            "https://picsum.photos/300/200?random=$index",
            fit: BoxFit.cover,
          );
        },
        options: CarouselOptions(
          height: 200.0,
          scrollPhysics: const BouncingScrollPhysics(),
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          autoPlay: true,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

// 5. Fade Transition Infinite Carousel
class FadeTransitionInfiniteCarousel extends StatelessWidget {
  const FadeTransitionInfiniteCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return AnimatedOpacity(
            opacity: 1.0,
            duration: Duration(milliseconds: 800),
            child: Image.network(
              "https://picsum.photos/300/200?random=$index",
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          height: 200.0,
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
      ),
    );
  }
}

// 6. Infinite Carousel with Custom Indicator
class InfiniteCarouselWithIndicator extends StatelessWidget {
  const InfiniteCarouselWithIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text('Infinite Carousel with Custom Indicator'),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image.network(
                "https://picsum.photos/300/200?random=$index",
                fit: BoxFit.cover,
              );
            },
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Container(
                margin: const EdgeInsets.all(5.0),
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 2 ? Colors.blue : Colors.grey,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// 7. Custom Transition Infinite Carousel
class CustomTransitionInfiniteCarousel extends StatelessWidget {
  const CustomTransitionInfiniteCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 800),
            child: Image.network(
              "https://picsum.photos/300/200?random=$index",
              key: ValueKey<int>(index),
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          height: 200.0,
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
      ),
    );
  }
}
