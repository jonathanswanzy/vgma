import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';


class UnsungLeaderboardTab extends StatefulWidget {
  @override
  _UnsungLeaderboardTabState createState() => _UnsungLeaderboardTabState();
}

class _UnsungLeaderboardTabState extends State<UnsungLeaderboardTab> {
  final String jsonSample =
      '[{"name":"Ram","email":"ram@gmail.com","age":23,"DOB":"1990-12-01"},'
      '{"name":"Shyam","email":"shyam23@gmail.com","age":18,"DOB":"1995-07-01"},'
      '{"name":"John","email":"john@gmail.com","age":10,"DOB":"2000-02-24"},'
      '{"name":"Ram","age":12,"DOB":"2000-02-01"}]';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getContestants();
  }


  //contestants

  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  //final primary = Color(0xff696b9e);
  final primary = Color(0xFFff304f);
  final secondary = Color(0xfff29a94);

  //Bossuuuuuuu
  Future<List<Contestant>> _getContestants() async{
    //Future<bool> getData() async {
    //await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    // return true;

    http.Response response = await http.get(Uri.encodeFull("https://realityshows.3news.com/judge/a542e5e5f4c322bd18d917508b829cc1"),
        headers: {
          "Accept": "application/json"
        }
    );


    debugPrint(response.body);
    print(response.body);


    var jsonData = json.decode(response.body);

    List<Contestant> contestants = [];
    for(var c in jsonData){
      Contestant contestant = Contestant( c["c_name"], c["region"], c["judge_score"], c["rank"], c["img"]);

      contestants.add(contestant);
    }
    print(contestants.length);

    return contestants;
  }


  @override
  Widget build(BuildContext context) {
    //var json = jsonDecode(jsonSample);


    return SingleChildScrollView(

      child: Container(
        padding: EdgeInsets.only(top: 5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 230),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,



            ),
            // SizedBox(height: 130.0),

          ],
        ),
      ),
    );
  }
}









/*
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 145),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,


              child: Container(
                padding: new EdgeInsets.all(15.0),
                child: FutureBuilder(

                  future: _getContestants(),
                  builder: (BuildContext context, AsyncSnapshot snapshot){

                    if(snapshot.data == null)
                    {
                      return new Container(
                        child: Center(
                          child: Text("Loading Leaderboard..."),
                        ),
                      );
                    } else{
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index){

                            return new Card(
                              margin: EdgeInsets.all(6.0),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),


                              child: Container(
                                padding: new EdgeInsets.all(10.0),


                                child: Column(

                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 35.0,
                                          backgroundImage: NetworkImage(snapshot.data[index].img),),

                                        Column(
                                          children: <Widget>[
                                            SizedBox(width: 110,),

                                            Text("Rank: ",
                                              style: TextStyle(
                                                color: Color(0xFF755d24),
                                              ),),

                                            Text(snapshot.data[index].rank.toString(),
                                              style: TextStyle(
                                                  color: Color(0xFF755d24),
                                                  fontSize: 30
                                              ),)


                                          ],
                                        ),


                                        SizedBox(width: 20,),

                                        Column(
                                          children: <Widget>[

                                            Text("Votes: ",
                                              style: TextStyle(
                                                color: Color(0xFF755d24),
                                              ),),
                                            Text(
                                              snapshot.data[index].vote_count.toString(),
                                              style: TextStyle(
                                                  color: Color(0xFF755d24),
                                                  fontSize: 30
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),



                                    Row(

                                      children: <Widget>[

                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(snapshot.data[index].c_name.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF755d24),
                                              fontSize: 12.0,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            ),
            // SizedBox(height: 130.0),
          ],
        ),
      ),
    );
  }*/



bool isTab(BuildContext context) {
  var shortestSide = MediaQuery.of(context).size.width;
  return shortestSide >= 600;
}


//contestants fetch end


/*Widget getLeaderboardUI() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(32.0),
            bottomRight: Radius.circular(32.0)
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: FintnessAppTheme.grey
                  .withOpacity(0.4 * topBarOpacity),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(
                left: 0,
                right: 40,
                top: 16 - 8.0 * topBarOpacity,
                bottom: 12 - 8.0 * topBarOpacity),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image(
                      image: AssetImage('assets/images/gmblogomain.png'),
                      height: 50,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Leaderboard',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: FintnessAppTheme.fontName,
                        fontWeight: FontWeight.w700,
                        fontSize: 16 + 6 - 6 * topBarOpacity,
                        letterSpacing: 1.2,
                        color: Color(0xFF755d24),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }*/

/* Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: widget.animationController,
          builder: (BuildContext context, Widget child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FintnessAppTheme.white.withOpacity(topBarOpacity),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: FintnessAppTheme.grey
                              .withOpacity(0.4 * topBarOpacity),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 0,
                            right: 16,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image(
                                  image: AssetImage('assets/images/gmblogomain.png'),
                                  //width: 20.0,
                                  height: 50,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Winners',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: FintnessAppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: FintnessAppTheme.darkerText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }*/





//GMB Contestants Class
class Contestant {
  final String c_name;
  final String region;
  final String judge_score;
  final String rank;
  final String img;

  Contestant( this.c_name, this.region, this.judge_score, this.rank,  this.img);

/*factory Contestant.fromJson(Map<String, dynamic> json) {
    return Contestant(
    c_name: json[''],
    );
  }*/

}
