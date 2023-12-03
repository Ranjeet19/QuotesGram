import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:quotes_app/view/aboutpage.dart';
// import 'package:share_plus/share_plus.dart';

import 'feedback.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        )),
                    // Text(
                    //   " About Devloper",
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Text(
                        "Q",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            // background: Color(#fff),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      // backgroundImage: NetworkImage(
                      //     "https://www.filmibeat.com/img/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Quotes Gram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                onTap: () {
                  Get.to(()=>AboutPage());
                },
                leading: const Icon(CupertinoIcons.person),
                title: const Text("About"),
                trailing: const Icon(CupertinoIcons.forward),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(CupertinoIcons.heart),
                title: const Text("Favourite"),
                trailing: const Icon(CupertinoIcons.forward),
              ),
             
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(CupertinoIcons.radiowaves_left),
                title: const Text("Podcast"),
                trailing: const Icon(CupertinoIcons.forward),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Get.to(()=>FeedbackForm());
                },
                leading:
                    const Icon(CupertinoIcons.keyboard_chevron_compact_down),
                title: const Text("FeedBack"),
                trailing: const Icon(CupertinoIcons.forward),
              ),
               const Divider(),
              ListTile(
                onTap: () {
                  //  Share.share('Check out this awesome app!');
                },
                leading: const Icon(CupertinoIcons.share),
                title: const Text("Share"),
                trailing: const Icon(CupertinoIcons.forward),
              ),
                   const Divider(),

            ],
          ),
        ],
      ),
    );
  }
}
