import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vgma/configs/TextStyles.dart';
import 'package:vgma/halloffame/colors.dart';
import 'package:vgma/halloffame/detailsBoxes.dart';
import 'package:velocity_x/velocity_x.dart';

class PageOne extends StatelessWidget {
  Size blobSize;
  PageOne(Size blobSize) {
    this.blobSize = blobSize;
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
              child: Image.asset("assets/hof1.png"),
            ),
            //

            Positioned(
              bottom: 330,
              left: 10,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(),
                    Text("Gyedu-Blay Ambolley", style: TextStyle(
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
                    child: Text("Gyedu-Blay Ambolley is a Ghanaian highlife musician, songwriter, producer, and composer. The first musician from Ghana to formally incorporate rap forms into local highlife rhythms, Ambolley created the musical genre Simigwa."
                        "Gyedu-Blay Ambolley was rather unknown outside of West Africa until Soundway Records included his seminal Simigwa-Do, which Ambolley released in 1973, on their first anthology, Ghana Soundz. Ambolley’s sound has led many to label him "
                        "the godfather of hiplife, the fusion of the hip hop and highlife idioms. Ambolley stood aside AL Threats at the Playboy Jazz Festival in Los Angeles.His song Simigua-do is considered the first rap in the world released in 1973 . "
                        "Ambolley, Sammy Lartey and Ebo Taylor are the few musicians who envisioned a future for high-life music in the late 60s and early 70s and helped transform the genre fusing high-life, funk and jazz music. ",
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







            /*Positioned(
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
                    DetailsBox1(context.screenWidth / 2 + 5, "Purple"),
                    //
                    SizedBox(
                      width: 30,
                    ),
                    //
                    DetailsBox2(context.screenWidth / 2 + 5, waveGradient1)
                  ],
                ),
              ),
            ),
          ),*/
          ],
        ),
      ),
    );
  }
}