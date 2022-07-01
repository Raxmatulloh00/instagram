import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_interfays/data.dart';
import 'package:instagram_interfays/friends.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Instagram"),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                icon: Icon(Icons.group, size: 30),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 55,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/${InstagramDatas().followers}"),
                        radius: 50,
                      ),
                    ),
                  ),
                ),
                itemCount: InstagramDatas().followers.length,
                physics: const BouncingScrollPhysics(),
              ),
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
