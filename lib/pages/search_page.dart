

import 'package:flutter/material.dart';
import 'package:vgma/constant/search_json.dart';
import 'package:vgma/theme/colors.dart';
import 'package:vgma/widgets/search_category_item.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(

        ));
  }
}


