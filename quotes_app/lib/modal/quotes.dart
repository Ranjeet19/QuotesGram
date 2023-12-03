// import 'package:flutter/material.dart';
import 'package:quotes_app/category/study.dart';

import '../category/motivational.dart';
import '../category/spiritual.dart';

class Quotes {
  final String title;
  final String img;
  // ignore: prefer_typing_uninitialized_variables
  final   fun;

  Quotes(this.title, this.img,this.fun);
}



//this list is for Title and Icon in home page


 List<Quotes> quotes = [
  Quotes("Motivational", "spiritual.png",const Motivational()),
  Quotes("Spiritual", "book.png", Spiritual()),
  Quotes("Study", "graduation-cap.png",const StudyQuotes()),
  Quotes("Karma", "karma.png",const Motivational()),
  Quotes("Trust", "oath.png",const Motivational()),
  Quotes("Sad", "sad.png",const Motivational()),
  Quotes("Love", "love.png",const Motivational()),
  Quotes("Success", "reward.png",const Motivational()),
  Quotes("Achivement", "award.png",const Motivational()),
  Quotes("Funny", "laughing.png",const Motivational()),
  Quotes("Imagination", "Imagination.png",const Motivational()),
  Quotes("Attitude", "fingers.png",const Motivational()),
  // Quotes("Philosophy", "fingers.png"),
  // Quotes("Peace", "fingers.png"),
  // Quotes("Truth", "fingers.png"),
  // Quotes("Broken", "fingers.png"),
  // Quotes("Wisdom", "fingers.png"),
  // Quotes("Humanity", "fingers.png"),
  // Quotes("Hope", "fingers.png"),
  // Quotes("Desire", "fingers.png"),
  // Quotes("Leadership", "fingers.png"),
];

// this list is for collection of category function for Routing





















  //  GridView(

  //               physics: const BouncingScrollPhysics(),
  //               gridDelegate: 
  //               const SliverGridDelegateWithFixedCrossAxisCount(
                
                  
  //                     crossAxisSpacing: 14.0,  
  //                 mainAxisSpacing: 14.0  ,
  //                 crossAxisCount: 3),
                
  //               children: [

  //                 InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(
  //                       builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("spiritual.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Motivational",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),
                  
  //                    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("reward.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Destiny",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("award.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Achivement",?
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),   
                  
  //                  InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("karma.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Karma",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("Oath.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Trust",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("laughing.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Funny",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("sad.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Sad",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("spiritual.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Spiritual",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("trust.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Love",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("fingers.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Luck",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("imagination.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Imagination",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),    InkWell(
  //                   onTap: (){
  //                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Motivational()));
  //                   },
  //                   child: Container(
  //                   //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
  //                     height: 100,
  //                     width: 100,     
                      
  //                     decoration: BoxDecoration(
  //                       border: Border.all(
  //                         color: Colors.blue,
  //                       ),
  //                       borderRadius: BorderRadius.circular(5),
  //                     ),
                      
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                       // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),

  //                       Image.asset("graduation-cap.png",height: 40, width: 40 ,color: Colors.blue,),
  //                       const Text("Study",
  //                       style: TextStyle(
  //                         color: Colors.blue,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: 15
  //                       ),)
                      
  //                     ]),
  //                     ),
  //                 ),
                  
  //               ],
                
  //               ),
              
              
              
              
              
              
              
              
              
              
              