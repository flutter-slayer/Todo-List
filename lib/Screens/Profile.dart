import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff239DE4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:  Color(0xff239DE4),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Profil',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20,
            fontFamily:"Segoe UI"),),
        centerTitle: true,
      ),


      body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(


              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage('images/avatar.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Tom Keen',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          Text(
                            '25',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,

                            ),
                          ),

                          SizedBox(height:6),
                          Icon(Icons.assignment_turned_in_rounded, color: Colors.white),

                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '27',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,

                            ),
                          ),
                          SizedBox(height:6),
                          Icon(Icons.av_timer, color: Colors.white),

                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '5',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,

                            ),
                          ),
                           SizedBox(height:6),
                           Icon(Icons.not_interested, color: Colors.white),
                        ],
                      )
                    ],
                  ),
                ),

                Image(
                  image: AssetImage('images/bg1.png',),
                  height: 300,
                ),
                SizedBox(
                  width: 120,
                  child: RaisedButton(

                    shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.orangeAccent)),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.blueGrey,
                    child: Row(

                      children: [
                        Icon(Icons.settings),
                        SizedBox(width: 8),
                        Text("Modify".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ),
                // Card(
                //   child: InkWell(
                //     splashColor: Colors.blue.withAlpha(30),
                //
                //     child: Container(
                //       width: 300,
                //       height: 100,
                //          margin: EdgeInsets.zero,
                //     ),
                //   ),
                // ),
        ],
            ),
          )),
    ),
    );
  }
}
