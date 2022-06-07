import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Lottie.asset('assets/images/loaders.json'),
          const Text('Scarlab Ai')
        ],
      ),
      nextScreen: const Home(),
      duration: 5000,
      splashIconSize: 800,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Just a simple app'),
      ),
    );
  }
}
