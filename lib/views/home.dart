import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import "../imports.dart";

class Home extends StatelessWidget {
  final double _spacing = k_size;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
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
                            itemBuilder: (context, index) => CustomListTile(),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(
                      height: 80,
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              bottom: k_size,
              left: k_size,
              right: k_size,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(k_radius)
                ),
                child: BottomNavyBar(
                  backgroundColor: k_mainColor,
                  onItemSelected: (index) {},
                  selectedIndex: 0,
                  items: <BottomNavyBarItem>[
                    BottomNavyBarItem(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white70,
                      icon: Icon(Icons.home),
                      title: Center(child: Text("Home")) 
                    ),
                    BottomNavyBarItem(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white70,
                      icon: Icon(Icons.home),
                      title: Center(child: Text("Home")) 
                    ),
                    BottomNavyBarItem(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white70,
                      icon: Icon(Icons.trending_neutral),
                      title: Center(child: Text("History")) 
                    ),
                    BottomNavyBarItem(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white70,
                      icon: Icon(Icons.account_circle),
                      title: Center(child: Text("Profile")) 
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.zero, 
                      bottomRight: Radius.circular(k_radius), 
                      topLeft: Radius.circular(k_radius), 
                      topRight: Radius.circular(k_radius),
                    )
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

