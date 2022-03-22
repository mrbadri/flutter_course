import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer:  Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("MrBadri", style: TextStyle(fontSize: 20),),
                  accountEmail: Text("09900300029", style: TextStyle(fontSize: 18),),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("M", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 24),),
                  ),
                  onDetailsPressed: (){},
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://img.lovepik.com/background/20211021/large/lovepik-blue-background-of-science-and-technology-image_500486349.jpg"),
                          fit: BoxFit.cover),
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.blue,
                      ])
                  ),

                ),
                ListTile(
                  title: Text("call"),
                  leading: Icon(Icons.call),
                ),
                ListTile(
                    title: Text("Profile"),
                    leading: Icon(Icons.person)
                ),
                ListTile(
                    title: Text("Group"),
                    leading: Icon(Icons.group)
                ),
                ListTile(
                    title: Text("Setting"),
                    leading: Icon(Icons.settings)
                ),
                ListTile(
                    title: Text("Log Out"),
                    leading: Icon(Icons.exit_to_app)
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text("Telegram"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search), splashColor: Colors.deepPurpleAccent,),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Col 1", style: TextStyle(backgroundColor: Colors.blue),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Col 2", style: TextStyle(backgroundColor: Colors.blue)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Col 1", style: TextStyle(backgroundColor: Colors.blue),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("Col 2", style: TextStyle(backgroundColor: Colors.blue)),
                  ),
                ],
              )
            ],
          )


          // Container(
          //   height:200,
          //   width: double.infinity,
          //   color: Colors.lightBlueAccent,
          //       child: Image.asset("images/banner.png", fit: BoxFit.cover,),
          // ),
        ),
      )
  );
}