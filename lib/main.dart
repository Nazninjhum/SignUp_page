import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
    );
  }
}
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('TravelEarth',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 93,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  child: Icon(Icons.mail_outline,size: 100,),
                  backgroundColor: Colors.white,
                  radius: 90,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    labelText: 'Email',
                    hintText: 'nazninakter@gmail.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: '********',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: (){},
                color: Color(0xff1B1464),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                padding: EdgeInsets.only(top: 20,bottom: 20,left: 170,right: 170),
                child: Text('Sign in',style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),
                child: Row(
                  children: [
                    Expanded(child:  FlatButton(
                      onPressed: (){},
                      color: Colors.white24,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      child: Text('Forgot Password',style: TextStyle(fontSize: 15,
                          color: Colors.black,decoration: TextDecoration.underline
                      ),),
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                    ),),
                    Expanded(child:  FlatButton(
                      onPressed: (){},
                      color: Colors.white24,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      child: Text('Need Account',style: TextStyle(fontSize: 15,color: Colors.black,
                          decoration: TextDecoration.underline
                      ),),
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                    ),),
                  ],),),
            ],
          ),
        ),
      ),
    );
  }
}