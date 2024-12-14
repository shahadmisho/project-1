import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:video_player/video_player.dart';
import 'package:workout_app/Screens/exercises.dart';
import 'videoplayer.dart';


class Popular_exercises extends StatefulWidget {
  const Popular_exercises({Key? key}) : super(key: key);

  @override
  State<Popular_exercises> createState() => _PopularState();
}

class _PopularState extends State<Popular_exercises> {

  final List<Exercises> exercises = [
    Exercises(
      videoUrl: 'https://videos.pexels.com/video-files/5510113/5510113-hd_1080_1920_25fps.mp4',
      name: "stretching",
      imageUrl: "assets/images/stretching.png",
    ),
    Exercises(
      videoUrl: 'https://videos.pexels.com/video-files/7187055/7187055-hd_1920_1080_24fps.mp4',
      name: "warming",
      imageUrl: "assets/images/warming.png",
    ),
    Exercises(
      videoUrl: 'https://videos.pexels.com/video-files/4325592/4325592-uhd_2732_1440_25fps.mp4',
      name: "planks",
      imageUrl: "assets/images/plank.png.PNG",
    ),
    Exercises(
      videoUrl: 'https://videos.pexels.com/video-files/5319759/5319759-uhd_2560_1440_25fps.mp4',
      name: "squats",
      imageUrl: "assets/images/squats.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pedro.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView( // Wrap the content in a SingleChildScrollView
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Populer",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                        color: Colors.amber,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Exercises",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                        color: Colors.red,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: exercises.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true, // Important to allow the ListView to take only the space it needs
                    physics: NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 172,
                                width: 141,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(exercises[index].imageUrl),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                final controller = VideoPlayerController.network(exercises[index].videoUrl);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerCustum(controller: controller),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              exercises[index].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

