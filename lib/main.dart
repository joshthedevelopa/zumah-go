import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go/config/constants.dart';

void main() {
  runApp(ZumahGO());
}

class ZumahGO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zumah Go',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _spacing = k_size;

  @override
  Widget build(BuildContext context) {

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: _spacing * 2, horizontal: _spacing * 2.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text("Zumah", style: TextStyle(fontSize: k_fontSize * 1.8, fontWeight: FontWeight.w600, color: Colors.black)),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: k_size / 4),
                            width: 12,
                            height: 3.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black, k_mainColor],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight
                              ),
                            ),
                          ),
                          Text("Go", style: TextStyle(fontSize: k_fontSize * 1.8, fontWeight: FontWeight.w600, color: k_mainColor)),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications, color: k_mainColor,),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: _spacing * 2.5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius)),
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: _spacing * 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _spacing * 2.5).copyWith(bottom: _spacing * 2),
                      child: Text("Categories", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      width: double.infinity,
                      child: IntrinsicHeight(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _serviceCategory(title: "Errand", padding: EdgeInsets.symmetric(horizontal: _spacing).copyWith(left: _spacing * 2.5)),
                              _serviceCategory(title: "Errand"),
                              _serviceCategory(title: "Errand"),
                              _serviceCategory(title: "Errand", padding: EdgeInsets.symmetric(horizontal: _spacing).copyWith(right: _spacing * 2.5)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _spacing * 2.5).copyWith(bottom: _spacing * 2),
                      child: Text("Vendors", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: _spacing * 2.5, vertical: _spacing),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.circular(k_radius), topLeft: Radius.circular(k_radius), topRight: Radius.zero),
                          boxShadow: [BoxShadow(color: Colors.blueGrey.withOpacity(0.1), blurRadius: 0.2, spreadRadius: 0.2)]
                        ),
                        height: 80,
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.circular(k_radius), topLeft: Radius.circular(k_radius), topRight: Radius.zero)
                              ),
                              child: Center(child: Text("T"),),
                            ),
                            SizedBox(width: k_size),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(k_size).copyWith(right: k_size * 1.4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eagle Media Incoporation", maxLines: 2, style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.1, fontSize: k_fontSize * .95),),
                                          Text("Ayensu Plaza, Media", maxLines: 1, style: TextStyle( fontSize: k_fontSize * .8, color: k_mainGreyColor)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("25m", style: TextStyle(color: k_mainGreyColor, fontSize: k_fontSize * .8)),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: k_size * .8),
                                          child: CircleAvatar( backgroundColor: k_mainGreyColor, radius: 2.0),
                                        ),
                                        Text("25 comments", style: TextStyle(color: k_mainGreyColor, fontSize: k_fontSize * .8)),
                                      ],
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
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _serviceCategory({String title, Function action, Image display, EdgeInsets padding}) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: _spacing),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: action,
          child: SizedBox(
            width: 90,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffecfae3),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.circular(k_radius), topLeft: Radius.circular(k_radius), topRight: Radius.circular(k_radius))
                  ),
                  width: 90,
                  height: 80,
                  child: display
                ),
                Padding(
                  padding: EdgeInsets.only(top: k_size * .5),
                  child: Text("$title", maxLines: 2,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
