import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  Message(this.names, this.image, this.post, this.followers, {Key? key})
      : super(key: key);
  String names;
  String image;
  int post;
  int followers;
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(widget.image),
              ),
              const SizedBox(width: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.names}\n",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: widget.names,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Icon(
              Icons.videocam_outlined,
              color: Colors.white,
              size: 32,
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  radius: 55,
                ),
                const SizedBox(height: 15),
                Text(
                  "${widget.names}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "${widget.names} • Instagram",
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "${widget.followers} followers • ${widget.post} posts",
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("View Profile"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(10, 30),
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: const BorderSide(
                      width: 0.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 356),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: IconButton(
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Message...",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 82.5),
                      const Icon(Icons.mic_none_rounded, size: 25.5),
                      const SizedBox(width: 5),
                      const Icon(Icons.insert_photo_outlined, size: 25.5),
                      const SizedBox(width: 5),
                      const Icon(Icons.add_circle_outline, size: 25.5)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(550, 45),
                    backgroundColor: const Color.fromARGB(68, 127, 127, 127),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// "${widget.names}\n",
// "${widget.names} • Instagram\n",
// "${widget.followers} followers • ${widget.post} posts",
                  