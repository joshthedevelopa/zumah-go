import '../imports.dart';

class HistoryTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(k_size * 2.5),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios), color: k_mainGreyColor, onPressed: () => Navigator.pop(context)),
              Expanded(
                child: Center(child: Text("HISTORY", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize * 1.4))),
              ),
              IconButton(icon: Icon(Icons.clear), color: k_mainColor, onPressed: () {}),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: k_size, horizontal: k_size * 2),
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: k_mainColor.withOpacity(.4)))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Miss Babita Helen Sagoa", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500))),
                          Text("GHS 30.00", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: k_size * 1.5),
                              child: Table(
                                columnWidths: {
                                  0: IntrinsicColumnWidth()
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: k_size),
                                        child: Text("Rider: ", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey.withOpacity(0.8))),
                                      ),
                                      Text("Joshua Tetteh", style: TextStyle(color: Colors.blueGrey.withOpacity(0.8)))
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: k_size),
                                        child: Text("Type: ", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey.withOpacity(0.8))),
                                      ),
                                      Text("Food", style: TextStyle(color: Colors.blueGrey.withOpacity(0.8)))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.redAccent.withOpacity(0.8),),
                            onPressed: () {

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: index < 4 ? 0 : 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}