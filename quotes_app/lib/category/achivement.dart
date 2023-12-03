import 'package:flutter/material.dart';

class Achivement extends StatelessWidget {
  const Achivement({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
         body:SingleChildScrollView(
           child:ListView.builder(
            itemCount: 90,
            itemBuilder: (BuildContext context, index){
            return ListTile(
              title: Text("List Itme $index"),
              
            );
           })
                   
              
             
              //  Container(
                
              //    color: Colors.green,
              //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              //   height: 100,
              //   child: Center(child: Text("Hello ")),
              //  ),
         
              
           ),
         
      
    );
  }
}