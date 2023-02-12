import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // List<String> images = [
    //   "https://static.grid.news/Anima-2022/Anima_PodcastPromo/img/750-grid-podcast-bad-takes-1-4@2x.png",
    //   "https://static.grid.news/Anima-2022/Anima_PodcastPromo/img/750-grid-podcast-bad-takes-1-4@2x.png",
    //   "https://static.grid.news/Anima-2022/Anima_PodcastPromo/img/750-grid-podcast-bad-takes-1-4@2x.png",
    //   "https://static.grid.news/Anima-2022/Anima_PodcastPromo/img/750-grid-podcast-bad-takes-1-4@2x.png",
    //
    // ];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              const Text(
                "Find Products",
                style: TextStyle(
                  fontSize: 20,
                  // fontFamily: "Poppins",
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.black12,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search Store',
                      hintStyle:
                          const TextStyle(color: Colors.black38, fontSize: 18),
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        height: 20,
                        child: Image.asset('./assets/Search.png'),
                      )),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 30),
              //   child: GridView.builder(
              //     itemCount: images.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 8.0,
              //       mainAxisSpacing: 8.0,
              //     ),
              //     itemBuilder: (BuildContext context, int index) {
              //       return Image.network(images[index]);
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
