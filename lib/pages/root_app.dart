import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vgma/pages/home_page.dart';
import 'package:vgma/pages/search_page.dart';
import 'package:vgma/pages/trending_page.dart';
import 'package:vgma/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: black,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      TrendPage(),
      Center(
        child: Text("Upload Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: white
        ),),
      ),
      Center(
        child: Text("Activity Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: white
        ),),
      ),
      Center(
        child: Text("Account Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: white
        ),),
      )
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }


  Widget getAppBar(){
    if(pageIndex == 0){


      return AppBar(
        backgroundColor: appBarColor,
        /*title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //SizedBox(height: 100,),
            SvgPicture.asset("assets/images/home_icon.svg",width: 30,),

            Text("Home",style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 25,
              color: white,
              fontWeight: FontWeight.bold,
            ),),
           // Expanded(),
            SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
          ],
        ),*/
      );



     /*


      return Padding(
        padding:
        const EdgeInsets.only(left: 35, right: 35, bottom: 20, top: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset("assets/images/home_icon.svg",width: 30,),
            Text("",style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 35
            ),),
            SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
          ],
        ),
      );
      */



      /*return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset("assets/images/home_icon.svg",width: 30,),
            Text("",style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 35
            ),),
            SvgPicture.asset("assets/images/vgma_menu.svg",width: 30,),
          ],
        ),
      );*/


    }else if(pageIndex == 1){
      return AppBar(
        backgroundColor: appBarColor,
        title: Text("Music", style: TextStyle(fontFamily: "Avenir"),),
      );
      //return null;
    }else if(pageIndex == 2){
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TrendPage()),
          );
        },
      );
      /*return AppBar(
        backgroundColor: appBarColor,
        title: Text("Trend", style: TextStyle(fontFamily: "Avenir"),),
      );*/
    }else if(pageIndex == 3){
      return AppBar(
        backgroundColor: appBarColor,
        title: Text("Winners", style: TextStyle(fontFamily: "Avenir"),),
      );
    }else{
      return AppBar(
        backgroundColor: appBarColor,
        title: Text("Account etert"),
      );
    }
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
                  selectedTab(index);
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

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
