import 'package:flutter/material.dart';

import '../imports.dart';

class ProfileTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: k_size * .8, horizontal: k_size * 2.5),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: k_mainColor.withOpacity(.4)))
          ),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios), color: k_mainColor, onPressed: () => Navigator.pop(context)),
              Expanded(
                child: Center(child: Text("Profile", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize))),
              ),
              IconButton(icon: Icon(Icons.clear), color: k_mainColor, onPressed: () {}),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: k_size * 3, horizontal: k_size * 1.5).copyWith(bottom: k_size),
                  padding: EdgeInsets.symmetric(vertical: k_size * 3, horizontal: k_size * 1.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.blueGrey.withOpacity(0.6))],
                    borderRadius: BorderRadius.circular(k_radius * .5)
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.all(k_size * 2),
                        child: Text("Josh Pong", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey.withOpacity(0.9), fontSize: k_fontSize * 1.2)),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius * .5)),
                        child: Padding(
                          padding: EdgeInsets.all(k_size * 1.5),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                color: k_mainColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: k_size * 3, horizontal: k_size * 1.5),
                  child: Column(
                    children: [
           
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}