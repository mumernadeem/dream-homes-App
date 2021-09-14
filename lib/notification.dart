import 'package:dream_homes/home.dart';
import 'package:dream_homes/menu.dart';
import 'package:flutter/material.dart';
import 'package:dream_homes/favorite.dart';
import 'package:dream_homes/search.dart';
class Notifi extends StatefulWidget {
  const Notifi({Key key}) : super(key: key);

  @override
  _NotifiState createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Notification'),
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
                        Utils().InputField(context,name: 'Milin Ota ',message1: 'Started Following you and send a ',message2: 'message to you about your health',time: '6:28Am',photo: AssetImage('assests/p1.jpg')),
                        Utils().InputField(context,name: 'Moka tia ',message1: 'Started Following you and send a ',message2: 'message to you Saying Hello to you',time: '12:28Am',photo: AssetImage('assests/p2.jpg')),
                        Utils().InputField(context,name: 'Mia Anglie ',message1: 'Started Following you and send ',message2: ' a message to you Saying Hello to you',time: '7:28Pm',photo: AssetImage('assests/p3.jpg')),
                        Utils().InputField(context,name: 'Tina ota ',message1: 'Started Following you and send a ',message2: 'message to you Saying Bye to you',time: ' 11:28Pm',photo: AssetImage('assests/p4.jpg')),
                        Utils().InputField(context,name: 'Gani Tin ',message1: 'Started Following you and send a ',message2: 'message to you Saying Hello to you',time: '9:28Am',photo: AssetImage('assests/p2.jpg')),
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
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {
                            }),
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 10, color: Colors.blueAccent),
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
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Menu();
                                }));
                              }),
                          Text(
                            'Menu',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
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
      {photo,name,message1,message2,time}) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: FlatButton(
        onPressed: (){},
        child: Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.14,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: photo,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left:8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        Text(message1,style: TextStyle(fontSize: 13),),
                      ],
                    ),
                    Text(message2,style: TextStyle(fontSize: 13),),
                  ],
                ),
              ),
              Container(padding: const EdgeInsets.only(left:5.0),child: Text(time,style: TextStyle(fontSize: 10),),)
            ],
          ),
        ),
      ),
    );
  }
}
