import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://instagram.fktm3-1.fna.fbcdn.net/v/t51.2885-19/11850309_1674349799447611_206178162_a.jpg?_nc_ht=instagram.fktm3-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=4b88yHx8jmIAX-g1rKw&tn=f5wG75jw-5uy7B4Q&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCnmJPTmce1CvOND9BAUhIPRmxhjj7bVpJHRVuwWCmaBw&oe=63739744&_nc_sid=8fd12b",
              width: 60,
              height: 60,
            ),
          ),
        ),
        const Text("therock"),
      ],
    );
  }
}
