import 'package:flutter/material.dart';
import 'package:vgma/halloffame/colors.dart';
import 'package:vgma/halloffame/detailsBoxes.dart';
import 'package:velocity_x/velocity_x.dart';

class PageTwo extends StatelessWidget {
  Size _blobSize;
  PageTwo(Size blobSize) {
    this._blobSize = blobSize;
  }
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Positioned(
              top: 25,
              bottom: 280,
              left: 0,
              right: 0,
              child: Image.asset("assets/hof2.png"),
            ),
            //

            Positioned(
              bottom: 330,
              left: 10,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(),
                    Text("Reggie Rockstone", style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.left,
                    ),





                    /* Row(
                   children: [
                     Text("Gyedu-Blay Ambolley is a Ghanaian highlife musician, songwriter, producer, and composer. The first musician from Ghana to formally incorporate rap forms into local highlife rhythms, Ambolley created the musical genre Simigwa.",
                       style: TextStyle(
                       fontWeight: FontWeight.normal,
                         fontFamily: "Avenir",
                         fontSize: 13,
                     ),),
                   ],
                 ),*/


                  ],
                ),
              ),
            ),


            Positioned(
              bottom: 310,
              left: 10,
              child: Container(
                child: Column(
                  children: <Widget>[

                    SizedBox(height: 10,),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0,right:30.0),
                      child: Text("Reggie Rockstone Reginald Yaw Asante Ossei, the Godfather of Hiplife is a Ghanaian rapper . He was born in the United Kingdom but lived his early years in Ghana in Kumasi and Accra. "
                          "He has been living in Ghana continuously since he pioneered the Hip-Life movement in 1994. He pioneered the Hiplife art form and has played an important role in the development of this uniquely "
                          "African genre in Ghana's capital Accra. He raps in Akan Twi and English. In 2004, Rockstone won the Kora Award for the best African video and he performed in front of a 50,000-person "
                          "crowd in Ghana, together with Shaggy. In 2006 he recorded a track with the Jamaican Dancehall singer Beenie Man called Chukku Chakka in reference to Rockstone's 1999 hit Eye Mo De Anaa, "
                          "which sampled Fela Kuti. Rockstone is the son of fashion designer Ricky Ricci Ossei. Reggie Rockstone attended Achimota School. Reggie joined Ghanaian hip hop group VVIP following "
                          "the exit of Promzy in 2014.",
                        style: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                        //overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    /*Text("Gyedu-Blay Ambolley is a Ghanaian highlife musician, songwriter, producer, and composer. The first musician from Ghana to formally incorporate rap forms into local highlife rhythms, Ambolley created the musical genre Simigwa.",
                    style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                    //overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                  ),*/


                    /* Row(
                   children: [
                     Text("Gyedu-Blay Ambolley is a Ghanaian highlife musician, songwriter, producer, and composer. The first musician from Ghana to formally incorporate rap forms into local highlife rhythms, Ambolley created the musical genre Simigwa.",
                       style: TextStyle(
                       fontWeight: FontWeight.normal,
                         fontFamily: "Avenir",
                         fontSize: 13,
                     ),),
                   ],
                 ),*/

                    /*Container(
                    child: Column(
                      children: [
                        //SizedBox(height: 15,),
                        Padding(
                          padding: EdgeInsets.only(top:30.0),
                        ),
                        Text("Gyedu-Blay Ambolley is a Ghanaian highlife musician, songwriter, producer, and composer. The first musician from Ghana to formally incorporate rap forms into local highlife rhythms, Ambolley created the musical genre Simigwa.",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),*/



                  ],

                ),






              ),
            ),

            Positioned(
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      //
                      print("button clicked");
                    },
                    child: Text('read more', style: TextStyle(
                      fontFamily: "Avenir",
                      color: Colors.white,
                    ),),
                    color: Colors.black,
                  ),
                ],
              ),
            ),


            /*
          Positioned(
            top: 45,
            bottom: 180,
            left: 0,
            right: 0,
            child: Image.asset("assets/hof2.png"),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              width: _width,
              height: 200,
              color: Colors.transparent,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DetailsBox1(context.screenWidth / 2 + 5, "Teal"),
                    //
                    SizedBox(
                      width: 30,
                    ),
                    //
                    DetailsBox2(context.screenWidth / 2 + 5, waveGradient2)
                  ],
                ),
              ),
            ),
          ),
          */
          ],
        ),
      ),
    );
  }
}