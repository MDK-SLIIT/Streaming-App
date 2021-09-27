import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      );

  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage>{
 @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children:<Widget>[
          Stack(
            children:<Widget>[
              Container(
                height:150.0,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
              Positioned(
                bottom: 55.0,
                right: 100.0,
                child: Container(
                  height: 350.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(320),
                  color: Colors.cyan
                  ),
                ),
              ),
              Positioned(
                bottom: 100.0,
                left: 130.0,
                child: Container(
                  height: 290.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: Colors.amber
                  )
                )
              ),
              Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                      height: 350.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: Colors.cyanAccent
                      )
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  SizedBox(height: 14.0),
                  Row(
                    children: <Widget> [
                      const SizedBox(width: 14.0),
                      Container(
                        alignment: Alignment.topLeft,
                        height: 45.0,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                          color: Colors.white,
                              style: BorderStyle.solid,
                            width: 2.0
                          ),
                          image: const DecorationImage(
                            image: AssetImage('images/cv_pic.JPG'),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width-120,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: (){},
                          color: Colors.white,
                          iconSize: 28.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                    ],
                  ),
                  SizedBox(height: 45.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Welcome to SL Streamer',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Padding(
                   padding: EdgeInsets.only(left: 15.0,right: 15.0),
                    child: Material(
                      elevation:5.0,
                      borderRadius: BorderRadius.circular(25),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.amber,
                            size: 30.0,
                          ),
                          contentPadding:
                            EdgeInsets.only(left: 20,top: 15, bottom: 10),
                          hintText: 'Streamers',
                          hintStyle: TextStyle(
                            color: Colors.blue
                          )
                        ),
                      )
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
