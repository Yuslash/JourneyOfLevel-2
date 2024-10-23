import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class ParallaxRecipe extends StatelessWidget {
  
  const ParallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: const Scaffold(
        body: Center(
          child: Text("Hello world of the year!"),
        ),
      ),
    );
  }

}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final locaion in locations) 
            LocationListItems(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            ),
        ],
      ),
    );
  }

}

class LocationListItems extends StatelessWidget {
    LocationListItems({
      super.key,
      required this.imageUrl,
      required this.name,
      required this.country,
    });

  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(aspectRatio: 16/9, child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            _buildParallaxBackground(context),
            _buildGradient(),
            _buildTitleAndSubtitle(),
          ],
        ),
      ),
    ),
  );
}

}

Widget _buildParallaxBackground(BuildContext context){
  return Flow(
    delegate: ParallaxFlowDelegate(
      Scrollable(Scrollale.of(context))
    ),
  );

}

class ParallaxFLowDelegate extends FlowDelegate {
  const ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth
    );
  }

}

