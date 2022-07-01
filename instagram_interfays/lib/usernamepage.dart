import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_interfays/message.dart';

class UserNamePage extends StatefulWidget {
  UserNamePage(
      this.names, this.image, this.post, this.followers, this.following,
      {Key? key})
      : super(key: key);
  String names;
  String image;
  int post;
  int followers;
  int following;
  @override
  State<UserNamePage> createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  @override
  bool follow = false;

  get i => null;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            widget.names,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.image),
                      radius: 46,
                    ),
                    Column(
                      children: [
                        Text(
                          widget.post.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Post",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.followers.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.following.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Following",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(
                          'https://source.unsplash.com/random/15956'),
                      radius: 15,
                    ),
                    SizedBox(width: 5),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Follow by\t",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "humoyid1n",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _button(
                      follow ? "Following" : "Follow",
                      follow ? Colors.white : Colors.transparent,
                      follow ? Colors.black : Colors.blue,
                      () {
                        setState(() {
                          follow = !follow;
                        });
                      },
                    ),
                    const SizedBox(width: 3),
                    _button(
                      "Message",
                      Colors.white,
                      Colors.black,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Message(widget.names,
                                widget.image, widget.post, widget.followers),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 5),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.person_add_outlined,
                        size: 18,
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(10, 35),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        side: const BorderSide(
                          width: 0.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlinedButton _button(String string, Color borderColor, Color backColor,
      Function()? onPressedFunc) {
    return OutlinedButton(
      onPressed: onPressedFunc,
      child: Text(string),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(145, 35),
        backgroundColor: backColor,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        side: BorderSide(
          width: 0.5,
          color: borderColor,
        ),
      ),
    );
  }
}
