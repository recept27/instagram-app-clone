import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];
  List<String> posts = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble_outline,
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage("assets/images/story.png"),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Profile Name",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage:
                                  AssetImage("assets/images/story.png"),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                          Text(
                            "Profile Name",
                            style: TextStyle(),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                              ))
                        ],
                      ),
                      Image.asset(posts[index]),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(text: "Liked by"),
                                  TextSpan(
                                    text: "Profile Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: "and"),
                                  TextSpan(
                                    text: "Others",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ])),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(
                                    text: "Profile Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                      text:
                                          "This is the most amazing picture ever put oninstagra öthis also the best "),
                                ])),
                            Text(
                              "view all 15 comments",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
