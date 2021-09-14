import 'package:dream_homes/home.dart';
import 'package:dream_homes/menu.dart';
import 'package:dream_homes/notification.dart';
import 'package:dream_homes/search.dart';
import 'package:flutter/material.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var col;
  var arr=[0,0,0,0,0],i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Propertities'),
        actions: [
          IconButton(icon: Icon(Icons.menu), onPressed: (){})
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Utils().InputField(context,name: 'Christina Parandii',address: '2* Jaclyn Ave',photo: AssetImage('assests/h1.jpg'),col: (arr[0]==0?Colors.black:Colors.blueAccent),OneTap: (){
                        if(arr[0]==0)
                        {
                          arr[0]=1;
                          setState(() {
                            col;
                          });
                        }
                        else
                        {
                          arr[0]=0;
                          setState(() {
                            col;
                          });
                        }
                      }),
                      Container(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Utils().InputField(context,name: 'Natalia Cruz',address: '5* Hemlock Dr',photo: AssetImage('assests/h2.jpg'),col: (arr[1]==0?Colors.black:Colors.red),OneTap: (){
                        if(arr[1]==0)
                        {
                          arr[1]=1;
                          setState(() {
                            col;
                          });
                        }
                        else
                        {
                          arr[1]=0;
                          setState(() {
                            col;
                          });
                        }
                      }),
                      Container(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Utils().InputField(context,name: 'Hnaa Binta',address: '362 A Saybrook Ln',photo: AssetImage('assests/h3.jpg'),col: (arr[2]==0?Colors.black:Colors.red),OneTap: (){
                        if(arr[2]==0)
                        {
                          arr[2]=1;
                          setState(() {
                            col;
                          });
                        }
                        else
                        {
                          arr[2]=0;
                          setState(() {
                            col;
                          });
                        }
                      }),
                      Container(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Utils().InputField(context,name: 'Otina Bin',address: '50 Glen Echo Cir',photo: AssetImage('assests/h4.jpg'),col: (arr[3]==0?Colors.black:Colors.red),OneTap: (){
                        if(arr[3]==0)
                        {
                          arr[3]=1;
                          setState(() {
                            col;
                          });
                        }
                        else
                        {
                          arr[3]=0;
                          setState(() {
                            col;
                          });
                        }
                      }),
                      Container(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Utils().InputField(context,name: 'Ocean Jami',address: '613 N Ballard St',photo: AssetImage('assests/h5.jpg'),col: (arr[4]==0?Colors.black:Colors.red),OneTap: (){
                        if(arr[4]==0)
                        {
                          arr[4]=1;
                          setState(() {
                            col;
                          });
                        }
                        else
                        {
                          arr[4]=0;
                          setState(() {
                            col;
                          });
                        }
                      }),
                    ],
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
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {
                              }),
                          Text(
                            'Favorite',
                            style: TextStyle(fontSize: 10, color: Colors.blueAccent),
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
      {name,address,photo,col,OneTap}) {
    return FlatButton(
      onPressed: (){},
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.97,
          height: MediaQuery.of(context).size.height*0.23,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.97,
                    height: MediaQuery.of(context).size.height * 0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: photo,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.13,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      color: Colors.white,
                      padding: EdgeInsets.only(right: 1),
                      child:  GestureDetector(
                        onTap: OneTap,
                        child: Container(
                          child: Icon(Icons.favorite,color: col,),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(child: Row(
                children: [
                  Text(name, style: TextStyle(fontSize: 20,color: Colors.black87)),
                ],
              )),
              Container(child: Row(
                children: [
                  Icon(Icons.add_location_alt_rounded,size: 15,),
                  Text(address, style: TextStyle(fontSize: 15,color: Colors.black87)),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
