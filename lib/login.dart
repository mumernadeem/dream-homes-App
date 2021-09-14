import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dream_homes/home.dart';
class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:65.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.36,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assests/building.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.03,
                      ),
                      Container(
                        child: Text('Dream Homes',style: TextStyle(
                            color: Color(0xFF1964E4),
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.03,
                      ),
                      if(a==1)
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF1964E4),
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(15))
                              ),
                              child: FlatButton(onPressed: (){
                              },
                                child: Text('Login', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(15))
                              ),
                              child: FlatButton(onPressed: (){
                                setState(() {
                                  a=2;
                                });
                              },
                                child: Text('Register', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1964E4))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if(a==2)
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(15))
                                ),
                                child: FlatButton(onPressed: (){
                                  setState(() {
                                    a=1;
                                  });
                                },
                                  child: Text('Login', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1964E4))),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF1964E4),
                                    borderRadius: BorderRadius.horizontal(right: Radius.circular(15))
                                ),
                                child: FlatButton(onPressed: (){
                                },
                                  child: Text('Register', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if(a==1)
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('Please login in your account',style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              ),),
                            ),
                          ],
                        ),
                      ),
                      if(a==2)
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Please Registered your account',style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                              ),
                            ],
                          ),
                        ),
                      if(a==1)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Column(
                          children: [
                            Container(
                              width:  MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),color: Colors.white30
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                            Container(
                              width:  MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),color: Colors.white30
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 225),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Text('Forgot Password', style: TextStyle(fontSize: 10,color: Color(0xFF1964E4))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if(a==2)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Column(
                            children: [
                              Container(
                                width:  MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),color: Colors.white30
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                              Container(
                                width:  MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),color: Colors.white30
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                              Container(
                                width:  MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),color: Colors.white30
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Re-enter Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.03,
                      ),
                      Container(
                        child:  RaisedButton(
                            elevation: 10,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            highlightElevation: 20,
                            color: Color(0xFF1964E4),
                            padding: EdgeInsets.all(2.0),
                            child: Container(child: Icon(Icons.arrow_forward,size: 25,),padding: EdgeInsets.symmetric(vertical: 8,horizontal: 35),
                            ),
                            textColor: Colors.white,
                            splashColor: Colors.black,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Home();
                              }));
                            }
                        ),
                      ),
                      if(a==1)
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('You can login with this also',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17
                              ),),
                            ),
                          ],
                        ),
                      ),
                      if(a==1)
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              minWidth: 2,
                              onPressed: () {},
                              child:
                                  Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        0.1,
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(40),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                        AssetImage('assests/facebook.jpg'),
                                      ),
                                    ),
                                  ),
                            ),
                            FlatButton(
                              minWidth: 2,
                              onPressed: () {},
                              child:
                              Container(
                                width: MediaQuery.of(context)
                                    .size
                                    .width *
                                    0.1,
                                height: MediaQuery.of(context)
                                    .size
                                    .height *
                                    0.06,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(40),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                    AssetImage('assests/google.jpg'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
