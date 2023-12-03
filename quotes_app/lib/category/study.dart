import 'package:flutter/material.dart';

class StudyQuotes extends StatelessWidget {
  const StudyQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: All_Quotes()
     
      );
  }
}

// ignore: camel_case_types
class All_Quotes extends StatelessWidget {
  const All_Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: studyQuotes.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Material(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blue
                    )
                  ),
                  child: Column(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 20, right: 10, bottom: 10),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    const TextSpan(
                                        text: " “ ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          // color:Colors.red,
                                          fontFamily: "Cursive",
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                        text:
                                            "${studyQuotes[index]["quote"]}",
                                        style: const TextStyle(
                                            height: 1.4,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            // fontFamily:,
                                            fontStyle: FontStyle.italic)),
                                    const TextSpan(
                                        text: " ” ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          // color:Colors.red,
                                          fontFamily: "Cursive",
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "-${studyQuotes[index]['author']}",
                                textAlign: TextAlign.end,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      decoration: const BoxDecoration(
                          color:Colors.lightBlue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.favorite_border,color: Colors.white,),
                          const Icon(Icons.star_border_sharp,color: Colors.white,),
                          const Icon(Icons.copy,color: Colors.white,),
                          const Icon(Icons.share,color: Colors.white,),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

List studyQuotes = [
  {"index": "1", "quote": "Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.","author": "Pelé, Brazillian pro footballer"},
  {"index": "2", "quote": "There are no secrets to success. It is the result of preparation, hard work, and learning from failure.", "author": "General Colin Powell"},
  {"index": "3", "quote": " People always say that I didn't give up my seat because I was tired, but that isn't true. I was not tired physically… No, the only tired I was, was tired of giving in.", "author": "Rosa Parks "},
   {"index": "3", "quote": " Success is the sum of small efforts, repeated day in and day out.", "author": "Robert Collier "},
  {"index": "3", "quote": " Success isn't overnight. It's when every day you get a little better than the day before. It all adds up.", "author": " "},
  {"index": "3", "quote": " The secret of success is to do the common things uncommonly well.", "author": " "},
  {"index": "3", "quote": " Success doesn't come to you, you go to it.", "author": "MARVA COLLINS"},
  {"index": "3", "quote": " Success is the progressive realization of a worthy goal.", "author": "Earl Nightingale "},
  {"index": "3", "quote": " Many of life's failures are people who did not realize how close they were to success when they gave up..", "author": "THOMAS EDISON "},
  {"index": "3", "quote": " One of the most common causes of failure is quitting when one is overtaken by temporary defeat.", "author": " Napoleon Hill"},
  {"index": "3", "quote": "The day you take complete responsibility for yourself, the day you stop making any excuses, that's the day you start to the top..", "author": "O.J. Simpson"},
  {"index": "3", "quote": " You cannot swim for new horizons until you have courage to lose sight of the shore..", "author": "William Faulkner "},
  // {"index": "3", "quote": " .", "author": " "},
 
];