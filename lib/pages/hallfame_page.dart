import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vgma/pages/nominations_page.dart';
import 'package:vgma/pages/unsung_page.dart';
import 'package:vgma/theme/colors.dart';
import 'package:slimy_card/slimy_card.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:tweet_webview/tweet_webview.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


import 'package:velocity_x/velocity_x.dart';
import 'package:vgma/halloffame/colors.dart';
import 'package:vgma/halloffame/pages/page1.dart';
import 'package:vgma/halloffame/pages/page2.dart';
import 'package:vgma/halloffame/pages/halloffame3.dart';
import 'package:vgma/halloffame/painted_paths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';
import 'package:vgma/halloffame/clipped_paths.dart';





class HallfamePage extends StatefulWidget {
  @override
  _HallfamePageState createState() => _HallfamePageState();
}








class _HallfamePageState extends State<HallfamePage> {

  var backgroundColor;
  //blobs size and position for pageview
  final GlobalKey _blobkey = GlobalKey();
  Size blobSize;
  //


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        blobSizeAndPosition();
      },
    );
  }



  //
  blobSizeAndPosition() {
    RenderBox box = _blobkey.currentContext.findRenderObject();
    blobSize = box.size;
  }
//

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Stack(
        children: [
          VxBox().withGradient(backgroundColor).make(),
          //
          // Custom paint blob
          CustomPaint(
            key: _blobkey,
            painter: PaintedBlob(),
            child: VxBox().make(),
          ),
          //top part shadow
          CustomPaint(
            painter: PaintedTopShadow(),
            child: VxBox().make(),
          ),
          //bottom part shadow
          Padding(
            padding: const EdgeInsets.only(bottom: 68.0),
            child: CustomPaint(
              painter: PaintedBottomShadow(),
              child: VxBox().make(),
            ),
          ),

//top clipped part with bg gradient
          ClipPath(
            clipper: TopClippedPart(),
            child: VxBox().withGradient(backgroundColor).make(),
          ),

          // bottom clipped part witn bg gradient
          ClipPath(
            clipper: BottomClippedPart(),
            child: VxBox().withGradient(backgroundColor).make(),
          ),

          Row(
            children: [
             /* IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: boldHeading,
                ),
              ).pOnly(top: 1.5),
              "Explore Jewels"
                  .text
                  .bold
                  .xl3
                  .fontFamily("Avenir")
                  .color(boldHeading)
                  .make()*/
            ],
          ),


          // bottom row
          PageView(
            onPageChanged: (index) {
              setState(() {
                index == 0
                    ? backgroundColor = bgGrad1
                    : backgroundColor = bgGrad2;
                      backgroundColor = bgGrad3;
              });
            },
            children: [
              PageOne(blobSize),
              PageTwo(blobSize),
              HallofFame3(blobSize),
            ],
          ),

//


        ],
      ),
    );


    /*return Scaffold(
      //backgroundColor: Color(0xFF010101),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 0),

        /*child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: [
              WebView(
                //initialUrl: "https://google.com",
                initialUrl: "https://twitter.com/search?q=%23VGMA21&src=typeahead_click",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ],
          ),
        ),*/


        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(height: 100,),
                  SvgPicture.asset("assets/images/halloffame.svg",width: 30, color: Colors.black,),
                  //SizedBox(width: 0,),
                  Text("Hall of Fame",style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  // Expanded(),
                  SvgPicture.asset("assets/images/vgma_menu.svg",width: 30, color: Colors.black,),
                ],
              ),

              SizedBox(
                height: 40,
              ),


              /*WebviewScaffold(
                url: "https://twitter.com/",
              ),*/

              /*WebviewScaffold(
                child: WebView(
                  initialUrl: ("https://twitter.com/"),
                 /* children: [
                    //TweetWebView.tweetUrl("https://twitter.com/ghreloadednews/status/1233948311545155584"),
                  ],*/
                ),
              ),*/

              /* WebView(
                initialUrl:"https://google.com/",
                javascriptMode: JavascriptMode.unrestricted,
              ),*/

              /*Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NominationsPage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 25),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                  colors: [Color(0xFFa706f6), Color(0xFFec1adc)],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SvgPicture.asset("assets/images/nominations.svg", width: 50,),
                                  ],
                                ),
                                //SizedBox(height: 0.3,),
                                Text('Nominations',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),





                        SizedBox(height: 15,),

                        Container(
                          padding: EdgeInsets.only(top: 50, left: 2, right: 80, bottom: 25),
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                                colors: [Color(0xFFfe5401), Color(0xFFf1ac14)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/images/profiles.svg",
                                width: 50,
                                //alignment: Alignment.bottomLeft,
                              ),
                              SizedBox(height: 3,),
                              Text("  Profiles",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 350,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 25),
                                width: MediaQuery.of(context).size.width*0.4,
                                //height: MediaQuery.of(context).size.width*0.9,
                                height: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  gradient: LinearGradient(
                                      colors: [Color(0xFFff009c), Color(0xFFec1c26)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                ),
                                //padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SvgPicture.asset("assets/images/categories.svg", width: 60,),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Categories',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: white
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),*/

              SizedBox(height: 13,),

              /*Row(
                children: [
                  SizedBox(width: 5,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30, left: 2, right: 70, bottom: 25),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                  colors: [Color(0xFF06aefb), Color(0xFF1763f0)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SvgPicture.asset("assets/images/halloffame.svg",
                                  width: 50,
                                  //alignment: Alignment.bottomLeft,
                                ),
                                //Spacer(),
                                SizedBox(height: 10,),
                                //courseWidget('', 'Nominations', 'img1', Color(0xFFa706f6), Color(0xFFec1adc)),
                                Text("Hall of\nFame",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      height: 1.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UnsungPage()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 25),
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.width*0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    colors: [Color(0xFFfd03de), Color(0xFFec1c68)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SvgPicture.asset("assets/images/unsung.svg",
                                    width: 70,
                                  ),
                                  Spacer(),
                                  Text("Unsung",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
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
                ],
              ),*/
            ],
          ),
        ),
      ),
    );*/


  }



}













  Widget getHeader(){
    return Container(
      child: Padding(
        padding:
        const EdgeInsets.only(left: 35, right: 35, bottom: 20, top: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset("assets/images/home_icon.svg",width: 30,),
            Text("Home",style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 25,
              color: white,
              fontWeight: FontWeight.bold,
            ),),
            SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
          ],
        ),
      ),
    );
  }


  Widget getBody() {
    return SingleChildScrollView(
      child: new Row(
        children: <Widget>[


          SlimyCard(
            color: Colors.red,
            width: 200,
            topCardHeight: 200,
            bottomCardHeight: 100,
            borderRadius: 15,
            topCardWidget: myWidget01(),
            bottomCardWidget: myWidget02(),
            slimeEnabled: true,
          ),

          SizedBox(width: 10,),

          SlimyCard(
            color: Colors.red,
            width: 200,
            topCardHeight: 200,
            bottomCardHeight: 100,
            borderRadius: 15,
            topCardWidget: myWidget01(),
            bottomCardWidget: myWidget02(),
            slimeEnabled: true,
          ),

          /*Divider(
            color: white.withOpacity(0.3),
          ),*/
          /*Column(
            children: List.generate(posts.length, (index){
              return PostItem(

                postImg: posts[index]['postImg'],
                profileImg: posts[index]['profileImg'],
                name: posts[index]['name'],
                caption: posts[index]['caption'],
                isLoved: posts[index]['isLoved'],
                viewCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                dayAgo: posts[index]['dayAgo'],
              );
            }),
          )*/
        ],





      ),
    );
  }



Widget myWidget01(){
  return Container(
    //height: MediaQuery.of(context).size.height,
    //width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xFFa706f6), Color(0xFFec1adc)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
    ),
    child: Row(
      children: [
        Text("Nominations", style: TextStyle(fontFamily: "Avenir", fontSize: 25, fontWeight: FontWeight.bold, color: white),)
      ],
    ),
  );
}




Widget myWidget02() {

}
