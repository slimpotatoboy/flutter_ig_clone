import 'package:flutter/material.dart';
import 'package:flutter_ig_clone/widgets/post.dart';
import 'package:flutter_ig_clone/widgets/stories.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: SvgPicture.asset("assets/logo.svg"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/love.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/messenger.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 1),
            Post(),
          ],
        ),
      ),
    );
  }
}
