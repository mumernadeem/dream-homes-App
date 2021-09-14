import 'package:dream_homes/home.dart';
import 'package:dream_homes/notification.dart';
import 'package:flutter/material.dart';
import 'package:dream_homes/favorite.dart';
import 'package:dream_homes/search.dart';
class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Menu'),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Utils().InputField(context,name: 'View Profile'),
                        Utils().InputField(context,name: 'Messages'),
                        Utils().InputField(context,name: 'About Us'),
                        Utils().InputField(context,name: 'Feedback'),
                        Utils().InputField(context,name: 'Privacy Policy'),
                        Utils().InputField(context,name: 'Settings'),
                        Utils().InputField(context,name: 'Log out'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Search();
                              }));
                            }),
                        Text(
                          'Search',
                          style:
                          TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Favorite();
                                }));
                              }),
                          Text(
                            'Favorite',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.notifications_none,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Notifi();
                              }));
                            }),
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {
                              }),
                          Text(
                            'Menu',
                            style: TextStyle(fontSize: 10, color: Colors.blueAccent),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 0, right: 145),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Home();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Utils {
  InputField(context,
      {name}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: FlatButton(
          height: MediaQuery.of(context).size.height*0.06,
          onPressed: (){},
          color: Colors.white,
          child: Container(
            height: MediaQuery.of(context).size.height*0.06,
            child: Row(
              children: [
                Expanded(child: Text(name,style: TextStyle(
                    fontSize: 15
                ),)),
                Container(child: Icon(Icons.arrow_forward_ios,size: 15,),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

