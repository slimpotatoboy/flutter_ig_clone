import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool love = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://instagram.fktm3-1.fna.fbcdn.net/v/t51.2885-19/11850309_1674349799447611_206178162_a.jpg?_nc_ht=instagram.fktm3-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=4b88yHx8jmIAX-g1rKw&tn=f5wG75jw-5uy7B4Q&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCnmJPTmce1CvOND9BAUhIPRmxhjj7bVpJHRVuwWCmaBw&oe=63739744&_nc_sid=8fd12b",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "therock",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
          InkWell(
            onDoubleTap: () {
              love = true;
              setState(() {});
            },
            child: Image.network(
              "https://instagram.fktm3-1.fna.fbcdn.net/v/t51.2885-15/313825108_517435007099070_4803288684569275573_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fktm3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=fI5F7rMhgsYAX-g5HQR&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjk2MjgzNTczNTUwNzA2Nzc3NA%3D%3D.2-ccb7-5&oh=00_AfCsB5TFhzktb0P9DmlsA5ug-z_Sr4e2eIvci9fhQV34WQ&oe=6373C763&_nc_sid=30a2ef",
              width: MediaQuery.of(context).size.width,
              height: 550,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        love = !love;
                      });
                    },
                    icon: love
                        ? SvgPicture.asset("assets/loved.svg")
                        : SvgPicture.asset("assets/love.svg"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/comment.svg"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/share.svg"),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/bookmark.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
