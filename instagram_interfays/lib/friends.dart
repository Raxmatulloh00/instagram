import 'package:flutter/material.dart';
import 'package:instagram_interfays/data.dart';
import 'package:instagram_interfays/usernamepage.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<bool> unFollow = List.generate(12, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text(
            "Discover People",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            for (var i = 0; i < 12; i++)
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserNamePage(
                        InstagramDatas().names[i],
                        InstagramDatas().images[i],
                        InstagramDatas().posts[i],
                        InstagramDatas().followers[i],
                        InstagramDatas().following[i],
                      ),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(InstagramDatas().images[i]),
                  radius: 20,
                ),
                isThreeLine: true,
                title: Text(
                  InstagramDatas().names[i],
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
                subtitle: const Text(
                  "Muhammadqodir Niyozov\nFollow by humoyid1n + 1",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                trailing: SizedBox(
                  width: 100,
                  child: !unFollow[i]
                      ? Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(
                                  () {
                                    unFollow[i] = !unFollow[i];
                                  },
                                );
                              },
                              child: const Text("Follow"),
                              style: OutlinedButton.styleFrom(
                                minimumSize: const Size(0, 30),
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                side: const BorderSide(
                                  width: 0.5,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        )
                      : OutlinedButton(
                          onPressed: () {
                            setState(
                              () {
                                unFollow[i] = !unFollow[i];
                              },
                            );
                          },
                          child: const Text("Following"),
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
                ),
              ),
          ],
        ),
      ),
    );
  }
}
