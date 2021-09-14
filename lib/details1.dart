import 'package:flutter/material.dart';
import 'package:dream_homes/login.dart';
class perfect_home extends StatefulWidget {
  const perfect_home({Key key}) : super(key: key);

  @override
  _perfect_homeState createState() => _perfect_homeState();
}

class _perfect_homeState extends State<perfect_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF1964E4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assests/home.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Text('Find your perfect home',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              child: Text('You can find your best home in this app',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            FlatButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Login();
                              }));
                            },
                              child: Text('Skip', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return notification();
                    }));
                  },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,color: Colors.white,size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class notification extends StatefulWidget {
  const notification({Key key}) : super(key: key);

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF1964E4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assests/bell.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Text('Get Notification',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              child: Text('Get Notification Of New Houses Everyday',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            FlatButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Login();
                              }));
                            },
                              child: Text('Skip', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return propertity();
                    }));
                  },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,color: Colors.white,size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class propertity extends StatefulWidget {
  const propertity({Key key}) : super(key: key);

  @override
  _propertityState createState() => _propertityState();
}

class _propertityState extends State<propertity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFF1964E4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assests/propertity.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Text('Sortable Properties',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              child: Text('Get Sortable Properties In A Best Location In Your City',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*0.03,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.01,
                                    width: MediaQuery.of(context).size.width*0.02,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            FlatButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Login();
                              }));
                            },
                              child: Text('Skip', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,color: Colors.white,size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

