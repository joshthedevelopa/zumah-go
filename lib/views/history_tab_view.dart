import '../imports.dart';

class HistoryTabView extends StatelessWidget {

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
                child: Center(child: Text("History", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize))),
              ),
              IconButton(icon: Icon(Icons.clear), color: k_mainColor, onPressed: () {}),
            ],
          ),
        ),

        SizedBox(height: k_size),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(k_size),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: k_size * .2, horizontal: k_size * 2),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text("Miss Babita Helen Sagoa", style: TextStyle(fontSize: k_fontSize * .9, color: Colors.blueGrey, fontWeight: FontWeight.w500))),
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
                                          child: Text("Rider: ", style: TextStyle(fontSize: k_fontSize * .8, fontWeight: FontWeight.w500, color: Colors.blueGrey.withOpacity(0.8))),
                                        ),
                                        Text("Joshua Tetteh", style: TextStyle(fontSize: k_fontSize * .8, color: Colors.blueGrey.withOpacity(0.8)))
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: k_size),
                                          child: Text("Type: ", style: TextStyle(fontSize: k_fontSize * .8, fontWeight: FontWeight.w500, color: Colors.blueGrey.withOpacity(0.8))),
                                        ),
                                        Text("Food", style: TextStyle(fontSize: k_fontSize * .8, color: Colors.blueGrey.withOpacity(0.8)))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.redAccent.withOpacity(0.8)),
                              onPressed: () {

                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: index < 4 ? 0 : 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}