import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:workout_app/Screens/full_body_exercises.dart';
import 'package:workout_app/Screens/mode.dart';
import 'package:workout_app/Screens/popular_exersise.dart';
import 'package:workout_app/Screens/hard_Work_exercises.dart';
import 'crossfit_exercises.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Category> populor = [
    Category(
      imageUrl: 'assets/images/emily.png.png',
      name: "Yoga exercises",
    ),
    Category(
      imageUrl: "assets/images/sule.png.png",
      name: "Example exercises",
    ),
    Category(
      imageUrl: "assets/images/alexsandra.png.png",
      name: "Example exercises",
    ),
  ];
  final List<Category> CrossFit = [
    Category(
      imageUrl: "assets/images/ropeClaim.png.jpg",
      name: "rope claim",
    ),
    Category(
      imageUrl: "assets/images/terkishGetUp.png.jpg",
      name: "terkish get up",
    ),
    Category(
      imageUrl: "assets/images/jakub-balon-qwzUQVpN0Ok-unsplash.jpg",
      name: "snatch",
    ),
  ];
  final List<Category> FullBody = [
    Category(
      imageUrl: "assets/images/biceps.png.jpg",
      name: "biceps",
    ),
    Category(
      imageUrl: "assets/images/triceps.png.jpg",
      name: "triceps",
    ),
    Category(
      imageUrl: "assets/images/deadlift.png.jpg",
      name: "deadlift",
    ),
  ];
  final List<Category> hardWork = [
    Category(
      imageUrl: "assets/images/battleRope.png.jpg",
      name: "battleRope",
    ),
    Category(
      imageUrl: "assets/images/abs.png.png",
      name: "abs",
    ),
    Category(
      imageUrl: "assets/images/machinePush.png.jpg",
      name: "machinePush",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 1000,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/abs.png.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hey,",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: Colors.white,
                              letterSpacing: 1.8,
                            ),
                          ),
                          Text(
                            "emily",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: Colors.red,
                              letterSpacing: 1.8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            width: 3,
                            color: Colors.red,
                          ),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/emely.png.jpg"),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find ",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 26,
                              color: Colors.red,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Your Workout",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: Colors.white,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.filter_alt_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 353,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xFF232441),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search Workout",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Populer",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Popular_exercises()));
                        },
                      ),
                      GestureDetector(
                        child: Text(
                          "Hard work",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Hard_Work_exercises()));
                        },
                      ),
                      GestureDetector(
                        child: Text(
                          "Full body",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Full_Body_exercises()));
                        },
                      ),
                      GestureDetector(
                        child: Text(
                          "Crossfit",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Crossfit_exercises()));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Populer Workout",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: populor.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(populor[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  populor[index].name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        "full body Workout",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: FullBody.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(FullBody[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  FullBody[index].name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        "hard work Workout",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: hardWork.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(hardWork[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  hardWork[index].name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        "crossfit",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: CrossFit.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(CrossFit[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  CrossFit[index].name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
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
