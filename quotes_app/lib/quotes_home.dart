import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quotes_app/category/motivational.dart';
import 'package:quotes_app/modal/quotes.dart';
import 'package:intl/intl.dart';
import 'package:quotes_app/view/drawer.dart';


class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {


// This is code for Getting Greetings in Homepage
  String getGreeting() {
  var now = DateTime.now();
  var formatter = DateFormat('HH');
  var hour = int.parse(formatter.format(now));

  if (hour < 12) {
    return 'Good Morning !!';
  } else if (hour < 17) {
    return 'Good Afternoon!!';
  } else {
    return 'Good Evening!!';
  }
}


  // final _textController = TextEditingController();

  // ignore: non_constant_identifier_names

  

  // ignore: non_constant_identifier_names
  List<Quotes> dislplay_list = List.from(quotes);

  // this code is for search element
  void updateList(String value) {
    setState(() {
      dislplay_list = quotes
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  

  @override
  Widget build(BuildContext context) {
    
  
    return SafeArea(
      child: Scaffold(
        drawer: const Draw(),
        
        body: Stack(
          children: [
                 Container(
              height: 220,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 10, right: 16),
                      child: Builder(

                        builder: (context){
                          return  InkWell(
                          onTap:  () => Scaffold.of(context).openDrawer(),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/8336/8336402.png",
                            height: 28,
                            color: Colors.white,
                          ),
                        );
                        },
                        
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Padding(
                                padding: const EdgeInsets.only(right: 65.0),
                                child: Text(
                                  getGreeting(),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    // fontStyle: FontStyle.italic,
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:  EdgeInsets.only(left: 5.0, top: 1),
                                child: Text(
                                  "Ranjeet Shrestha",
                                  style: TextStyle(
                                    // fontStyle: FontStyle.italic,
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 23),
                        height: 80,
                        width: 220,
                        child: TextField(
                          
                          onChanged: (value) => updateList(value),
                          // controller: _textController,
                          style: const TextStyle(
                            height: 0,
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.white,
                              )),
                              hintText: "Searh your Quotes..",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                size: 18,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 205),
              child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child:dislplay_list.isEmpty
                      ? const Center(
                          child: Text(
                            "No result Found !!",
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 38, 38),
                              fontSize:22,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : GridView.builder(
                      itemCount: dislplay_list.length,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 14,
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        dislplay_list[index].fun));

                            // Get.to(()=> All_Quotes());
                          },
                          child: Container(
                            //  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                            height: 100,
                            width: 100,
    
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
    
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(Icons.favorite_border,size: 25,color: Colors.blue,),
    
                                  Image.asset(
                                    dislplay_list[index].img,
                                    height: 40,
                                    width: 40,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    dislplay_list[index].title,
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  )
                                ]),
                          ),
                        );
                      })),
            ),
       
          ],
        ),
      ),
    );
  }
}
