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
          body: Container(
            height:200,
            color: Colors.lightBlueAccent,
            child: Center(
              child:  Center(
                child: Padding(
                  // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  // padding: EdgeInsets.fromLTRB(10, 20, 15, 30),
                  // padding: EdgeInsets.only(left: 10 , right: 20),
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    maxLength: 5,
                    obscureText: false,
                    //this is not work in web!!!
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.red,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "please enter username",
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ),
          )
        ),
      )
  );
}