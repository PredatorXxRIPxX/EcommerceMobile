import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid.count(crossAxisCount: 4),
        SliverFillRemaining(
          child: Container(
              child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.blue,
                child: const Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 50,),
                        CircleAvatar(
                          radius: 35,
                          child: Icon(Icons.person,color: Colors.blue,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Hello",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("User",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                        SizedBox(width: 50,)
                      ],
                    )
                  ],
                  
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("hello settings");
                },
              ),
              ListTile(
                leading: const Icon(Icons.format_paint_outlined),
                title: const Text(
                  "Theme",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("theme");
                },
              ),
              ListTile(
                leading: const Icon(Icons.language_outlined),
                title: const Text(
                  "Language",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("language");
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail_outlined),
                title: const Text(
                  "about us",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("contact");
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text(
                  "Log out",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("logout");
                },
              )
            ],
          )),
        ),
      ],
    );
  }
}
