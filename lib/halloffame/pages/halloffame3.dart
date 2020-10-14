import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vgma/configs/TextStyles.dart';
import 'package:vgma/halloffame/colors.dart';
import 'package:vgma/halloffame/detailsBoxes.dart';
import 'package:velocity_x/velocity_x.dart';

class HallofFame3 extends StatelessWidget {
  Size blobSize;
  HallofFame3(Size blobSize) {
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
              child: Image.asset("assets/hof3.png"),
            ),
            //

            Positioned(
              bottom: 330,
              left: 10,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(),
                    Text("Stephanie Benson", style: TextStyle(
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
                      child: Text("Stephanie Benson, also known as Princess Akua Ohenewaa Asieanem of Kokobin, is a UK-based Ghanaian international singer and performer who is rooted in jazz music. "
                          "In Ghana, she has been described as the queen of jazz. Stephanie Benson was born in Ghana to royal Parents, a pharmaceutical millionaire and his fourth wife named Queen Nana Boahemah II, "
                          "who had seventeen children. Her musical career began at the age of three when she started learning how to play the piano. She added the violin and cello when she was enrolled at the "
                          "National Academy of Music at the age of eight in the year 1975. She became interested in playing the piano after her father often played the instrument to her before bedtime. "
                          "After her fathers death in 1981 when she was fourteen, she moved to London, England to explore life in a different part of the world.[6] During her stay in London, "
                          "she channeled her energy into playing the piano under the watchful eye of her uncle, and later got a residency singing and playing in one of the famous nightclubs in London.",
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