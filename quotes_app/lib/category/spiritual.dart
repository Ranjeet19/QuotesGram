import 'package:flutter/material.dart';

class Spiritual extends StatelessWidget {
  const Spiritual({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: All_Quotes());
  }
}

class All_Quotes extends StatelessWidget {
  const All_Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: spiritualQuotes.length,
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
                            padding: EdgeInsets.only(
                                left: 10.0, top: 20, right: 10, bottom: 10),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    TextSpan(
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
                                            "${spiritualQuotes[index]["title"]}",
                                        style: const TextStyle(
                                            height: 1.4,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            // fontFamily:,
                                            fontStyle: FontStyle.italic)),
                                    TextSpan(
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
                                "-${spiritualQuotes[index]['author']}",
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

List spiritualQuotes = [
  {
    "title": " The journey of a thousand miles begins with one step.",
    "author": "Lao Tzu"
  },
  {
    "title": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt"
  },
  {
    "title": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs"
  },
  {
    "title":
        "The soul always knows what to do to heal itself. The challenge is to silence the mind.",
    "author": "Caroline Myss"
  },
  {
    "title":
        "Faith is taking the first step even when you don't see the whole staircase.",
    "author": "Martin Luther King Jr."
  },
  {
    "title":
        "The most important thing in life is to learn how to give out love, and let it come in.",
    "author": "Morrie Schwartz"
  },
  {
    "title":
        "We are not human beings having a spiritual experience. We are spiritual beings having a human experience.",
    "author": "Teilhard de Chardin"
  },
  {
    "title":
        "The future belongs to those who believe in the beauty of their dreams.",
    "author": "Eleanor Roosevelt"
  },
  {
    "title":
        "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "author": "Nelson Mandela"
  },
  {
    "title":
        "We are all in the gutter, but some of us are looking at the stars.",
    "author": "Oscar Wilde"
  },
  {
    "title": "The only true wisdom is in knowing you know nothing.",
    "author": "Socrates"
  },
  {
    "title":
        "The best way to find yourself is to lose yourself in the service of others.",
    "author": "Mahatma Gandhi"
  },
  {
    "title":
        "The universe is full of magical things patiently waiting for our wits to grow sharper.",
    "author": "Eden Phillpotts"
  },
  {
    "title": "The wound is the place where the light enters you.",
    "author": "Rumi"
  },
  {
    "title":
        "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer"
  },
  {
    "title": "The greatest wealth is to live content with little.",
    "author": "Plato"
  }
];
