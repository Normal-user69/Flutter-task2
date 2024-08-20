import 'package:flutter/material.dart';

class Mainscrean extends StatelessWidget {
  const Mainscrean({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3, // Number of tabs/pages
        child: Scaffold(
          body: TabBarView(
            children: [
              page(Icons.shop , "Best Store in Abden and Giza"),
              page(Icons.hub , "Modern Problems, Modern Solutions"),
              page(Icons.star , "Be Star, Be Creative"),
            ],
          ),
                    appBar: AppBar(
                      title: title(),
            bottom: const TabBar(
              indicatorColor: Colors.blue, // Indicator color
              tabs: [
                Tab(icon: Icon(Icons.circle, size: 12)), // Dot for Page 1
                Tab(icon: Icon(Icons.circle, size: 12)), // Dot for Page 2
                Tab(icon: Icon(Icons.circle, size: 12)), // Dot for Page 3
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget page(IconData iconData , String txt) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      title(),
      pageIcon(iconData),
       Text(txt , style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
      btn(),
    ],
  );
}

Widget title() {
  return const Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Creative ",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        Text(
          "Store",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget btn() {
  return Center(
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 60),
          backgroundColor: const Color.fromARGB(255, 61, 133, 144),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          foregroundColor: Colors.white),
      child: const Text("Continue"),
    ),
  );
}

Widget pageIcon(IconData iconData) {
  return Icon(
    iconData,
    size: 60,
  );
}
