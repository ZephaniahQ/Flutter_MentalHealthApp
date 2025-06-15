import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              //greeting row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi jared!,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Jared!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '15 Jun 2025',
                              style: TextStyle(color: Colors.blue[100]),
                            )
                          ],
                        ),
                        // Notification
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //Search bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //How do you feel?

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // 4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //badly
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "☹️"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bad",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //fine
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "😐"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fine",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //well
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "️🙂"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Well",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //excelent
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: "️😃"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Happy",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),
              //white container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //List view of exercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                  iconColor: Colors.orange,
                                  exerciseName: "Speaking skills",
                                  icon: Icons.favorite,
                                  numberOfExercises: 16),
                              ExerciseTile(
                                iconColor: Colors.lightBlue,
                                exerciseName: "Reading speed",
                                icon: Icons.book,
                                numberOfExercises: 8,
                              ),
                              ExerciseTile(
                                iconColor: Colors.pink,
                                exerciseName: "Listening skills",
                                icon: Icons.person,
                                numberOfExercises: 4,
                              ),
                              ExerciseTile(
                                iconColor: Colors.lightGreen,
                                exerciseName: "Meditation",
                                icon: Icons.mediation,
                                numberOfExercises: 9,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
