import 'package:dream_homes/favorite.dart';
import 'package:dream_homes/menu.dart';
import 'package:dream_homes/notification.dart';
import 'package:flutter/material.dart';
import 'package:dream_homes/search.dart';
class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var col;
  var a=[0,0,0,0,0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              child: Column(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        AssetImage('assests/office.jpg'),
                      ),
                    ),
                  ),),
                  Expanded(child: Container(
                    color: Colors.white24,
                  ),)
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Column(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Welcome to dream homes', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            Icon(Icons.arrow_downward)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF1964E4),
                            ),
                            child: FlatButton(onPressed: (){
                            },
                              child: Text('2 Floor', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white60,
                            ),
                            child: FlatButton(onPressed: (){
                            },
                              child: Text('3 Floor', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: FlatButton(onPressed: (){
                            },
                              child: Text('Rent', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: FlatButton(onPressed: (){
                            },
                              child: Text('Apartment', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width:  MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText:  'Search Your Own House',
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.06,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(child: Text('Find Your Own Dream House', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(child: Text('in your city', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black))),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Colors.white
                                ),
                                width: MediaQuery.of(context).size.width*0.3,
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                        height: MediaQuery.of(context).size.height * 0.12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assests/building.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text('Building',style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Colors.white
                                ),
                                width: MediaQuery.of(context).size.width*0.3,
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                        height: MediaQuery.of(context).size.height * 0.12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assests/home.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text('House',style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Colors.white
                                ),
                                width: MediaQuery.of(context).size.width*0.3,
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                        height: MediaQuery.of(context).size.height * 0.12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assests/propertity.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text('propertity',style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Colors.white
                                ),
                                width: MediaQuery.of(context).size.width*0.3,
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                        height: MediaQuery.of(context).size.height * 0.12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assests/building.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text('Building',style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.04,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(child: Text('Featured Properties', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87))),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.04,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              Utils().InputField(context,name: 'Christina Parandii',address: '2* Jaclyn Ave',photo: AssetImage('assests/h1.jpg'),col: (a[0]==0?Colors.black:Colors.red),OneTap: (){
                                if(a[0]==0)
                                {
                                  a[0]=1;
                                  setState(() {
                                    col;
                                  });
                                }
                                else
                                {
                                  a[0]=0;
                                  setState(() {
                                    col;
                                  });
                                }
                              }),
                              Container(
                                width: MediaQuery.of(context).size.width*0.06,
                              ),
                              Utils().InputField(context,name: 'Natalia Cruz',address: '5* Hemlock Dr',photo: AssetImage('assests/h2.jpg'),col: (a[1]==0?Colors.black:Colors.red),OneTap: (){
                                if(a[1]==0)
                                {
                                  a[1]=1;
                                  setState(() {
                                    col;
                                  });
                                }
                                else
                                {
                                  a[1]=0;
                                  setState(() {
                                    col;
                                  });
                                }
                              }),
                              Container(
                                width: MediaQuery.of(context).size.width*0.06,
                              ),
                              Utils().InputField(context,name: 'Hnaa Binta',address: '362 A Saybrook Ln',photo: AssetImage('assests/h3.jpg'),col: (a[2]==0?Colors.black:Colors.red),OneTap: (){
                                if(a[2]==0)
                                {
                                  a[2]=1;
                                  setState(() {
                                    col;
                                  });
                                }
                                else
                                {
                                  a[2]=0;
                                  setState(() {
                                    col;
                                  });
                                }
                              }),
                              Container(
                                width: MediaQuery.of(context).size.width*0.06,
                              ),
                              Utils().InputField(context,name: 'Otina Bin',address: '50 Glen Echo Cir',photo: AssetImage('assests/h4.jpg'),col: (a[3]==0?Colors.black:Colors.red),OneTap: (){
                                if(a[3]==0)
                                {
                                  a[3]=1;
                                  setState(() {
                                    col;
                                  });
                                }
                                else
                                {
                                  a[3]=0;
                                  setState(() {
                                    col;
                                  });
                                }
                              }),
                              Container(
                                width: MediaQuery.of(context).size.width*0.06,
                              ),
                              Utils().InputField(context,name: 'Ocean Jami',address: '613 N Ballard St',photo: AssetImage('assests/h5.jpg'),col: (a[4]==0?Colors.black:Colors.red),OneTap: (){
                                if(a[4]==0)
                                {
                                  a[4]=1;
                                  setState(() {
                                    col;
                                  });
                                }
                                else
                                {
                                  a[4]=0;
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
                    Container(
                      height: MediaQuery.of(context).size.height*0.02,
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
              ),
            ),
          ],
        ),
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
                  onPressed: () {}),
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
    return Container(
      width: MediaQuery.of(context).size.width*0.75,
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
                width: MediaQuery.of(context).size.width*0.75,
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
              Text(name, style: TextStyle(fontSize: 15,color: Colors.black87)),
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
    );
  }
}
