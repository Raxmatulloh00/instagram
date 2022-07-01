import 'dart:math';

class InstagramDatas {
  List<String> names = [
    "Marvel",
    "LeoMessi",
    "CR7",
    "Neymarjr",
    "Shavkatmirziyoyev",
    "Marvel1",
    "LeoMessi1",
    "CR71",
    "Neymarjr1",
    "Shavkatmirziyoyev1",
    "Marvel2",
    "LeoMessi2"
  ];

  List<String> images = [
    "assets/images/marvel.png",
    "assets/images/messi.jpg",
    "assets/images/cr7.jpg",
    "assets/images/neymarjr.jpg",
    "assets/images/shavkatmirziyoyev.jpg",
    "assets/images/marvel.png",
    "assets/images/messi.jpg",
    "assets/images/cr7.jpg",
    "assets/images/neymarjr.jpg",
    "assets/images/shavkatmirziyoyev.jpg",
    "assets/images/marvel.png",
    "assets/images/messi.jpg",
  ];

  List posts = List.generate(12, (index) => Random().nextInt(500));
  List followers = List.generate(12, (index) => Random().nextInt(5000));
  List following = List.generate(12, (index) => Random().nextInt(1000));
}
