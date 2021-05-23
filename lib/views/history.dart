import '../imports.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(k_size * 2.5),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios), color: k_mainGreyColor, onPressed: () => Navigator.pop(context)),
                    Expanded(
                      child: Center(child: Text("HISTORY", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize * 1.4))),
                    ),
                    IconButton(icon: Icon(Icons.call), color: k_mainColor, onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}