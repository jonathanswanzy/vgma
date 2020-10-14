import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vgma/tabs/unsung_leaderboard.dart';
import 'package:vgma/tabs/unsung_tab.dart';
import 'package:vgma/theme/colors.dart';
import 'package:slimy_card/slimy_card.dart';

class UnsungPage extends StatefulWidget {
  @override
  _UnsungPageState createState() => _UnsungPageState();
}

class _UnsungPageState extends State<UnsungPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xFF010101),


      body: isTab(context)
          ? Container(
        color: Colors.black,
        margin: EdgeInsets.only(left: 4, right: 4, top: 8),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Tab(
                      text: "VOTES",
                    ),
                  ),
                  Expanded(
                      child: UnsungTabScreen(
                      ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Tab(
                      text: "JUDGES SCORE",

                    ),
                  ),
                  Expanded(child: UnsungPage()),
                ],
              ),
            ),
          ],
        ),
      )
          : DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Card(
              color: Color(0xFFff304f),
              margin: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              clipBehavior: Clip.antiAlias,
              elevation: 12,
              child: TabBar(
                isScrollable: true,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    child: Text("NOMINEES",
                      style: TextStyle(
                        fontFamily: "Avenir",
                      ),
                    ),
                    //text: "VOTES",
                  ),
                  Tab(
                    child: Text("️LEADERBOARD",
                      style: TextStyle(
                        fontFamily: "Avenir",
                      ),
                    ),
                    //text: "JUDGES SCORE",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  UnsungLeaderboardTab(),
                  UnsungTabScreen(),

                  //VotesTabScreen(),
                  //SecondTab(),
                  //ThirdTab(),
                ],
              ),
            ),




          ],
        ),





      ),
    );



    /*
     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(height: 100,),
                  SvgPicture.asset("assets/images/unsung.svg",width: 30,),
                  //SizedBox(width: 0,),
                  Text("VGMA Unsung",style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 20,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),),
                  // Expanded(),
                  SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
                ],
              ),
    * */

    /*return Scaffold(
      backgroundColor: Color(0xFF010101),
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 5),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(height: 100,),
                  SvgPicture.asset("assets/images/unsung.svg",width: 30,),
                  //SizedBox(width: 0,),
                  Text("VGMA Unsung",style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 20,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),),
                  // Expanded(),
                  SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
                ],
              ),

              SizedBox(
                height: 40,
              ),


              SizedBox(height: 13,),





            ],
          ),
        ),
      ),
    );*/
  }



  bool isTab(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.width;
    return shortestSide >= 600;
  }



  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      //pageIndex == 2 ? "assets/images/upload_active_icon.svg" : "assets/images/upload_icon.svg",
      pageIndex == 2
          ? "assets/images/love_active_icon.svg"
          : "assets/images/love_icon.svg",
      pageIndex == 3
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(color: appFooterColor),
      child: Padding(
        padding:
        const EdgeInsets.only(left: 80, right: 80, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
                onTap: () {
                 // selectedTab(index);
                },
                child: SvgPicture.asset(
                  bottomItems[index],
                  width: 30,
                ));
          }),
        ),
      ),
    );
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
        ],
      ),
    );
  }
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
