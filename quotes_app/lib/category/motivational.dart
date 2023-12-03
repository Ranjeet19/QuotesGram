import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modal/motivational_modal.dart';

class Motivational extends StatelessWidget {
  const Motivational({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          height:40,
          width: 40,
          child: FittedBox(
            child: FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () => Navigator.pop(context),
                child: Icon(CupertinoIcons.arrow_turn_up_left,size: 30,)),
          ),
        ),
        body: All_Quotes());
  }
}

// ignore: camel_case_types
class All_Quotes extends StatelessWidget {
  const All_Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: motivationalQuotes.length,
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
                      border: Border.all(color: Colors.blue)),
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
                                            "${motivationalQuotes[index]["quote"]}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            height: 1.4,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            // fontFamily:,
                                            fontStyle: FontStyle.italic)),
                                    TextSpan(
                                        text: "” ",
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
                                "-${motivationalQuotes[index]['author']}",
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
                        border:
                            Border(top: BorderSide(color: Colors.lightBlue)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                                  Icon(
                            CupertinoIcons.hand_thumbsup,
                            color: Colors.lightBlue,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.lightBlue,
                          ),
                         
                          Icon(
                            Icons.copy,
                            color: Colors.lightBlue,
                          ),
                   
                          Icon(
                            Icons.share,
                            color: Colors.lightBlue,
                          ),
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


// final quotes = {
//   'spi' : motivationalQuotes,


// };
