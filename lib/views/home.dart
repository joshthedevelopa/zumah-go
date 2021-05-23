import "../imports.dart";

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HomeTabView(),
                    HistoryTabView(),
                    Text("3"),
                    Text("4"),
                  ],
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
                  child: Builder(
                    builder: (context) => ValueListenableBuilder(
                      valueListenable: DefaultTabController.of(context).animation,
                      builder: (context, double _index, child) => BottomNavyBar(
                        containerHeight: 50,
                        backgroundColor: k_mainColor,
                        onItemSelected: (index) => DefaultTabController.of(context).animateTo(index),
                        selectedIndex: _index.toInt(),
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
                            icon: Icon(Icons.pending_actions),
                            title: Center(child: Text("Status")) 
                          ),
                          BottomNavyBarItem(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white70,
                            icon: Icon(Icons.history),
                            title: Center(child: Text("History")) 
                          ),
                          BottomNavyBarItem(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white70,
                            icon: Icon(Icons.person),
                            title: Center(child: Text("Profile")) 
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


