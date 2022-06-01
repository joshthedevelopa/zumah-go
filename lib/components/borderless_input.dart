import '../imports.dart';

class BorderlessInput extends StatefulWidget {
  BorderlessInput({
    this.label,
    this.margin,
    this.icon
  });

  final String label;
  final EdgeInsets margin;
  final IconData icon;

  @override
  _BorderlessInputState createState() => _BorderlessInputState();
}

class _BorderlessInputState extends State<BorderlessInput> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.symmetric(vertical: k_size * 1.5),
      padding: EdgeInsets.symmetric(horizontal: k_size * 2),
      decoration: BoxDecoration(
        color: k_mainColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(k_radius),
        border: Border.all(color: k_mainColor.withOpacity(_focusNode.hasFocus ? .5 : 0.05))
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: "",
                labelText: "${widget.label}",
                labelStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none
              ),
            ),
          ),
          Icon(widget.icon ?? Icons.person, color: k_mainColor.withOpacity(_focusNode.hasFocus ? .8 : 0.3)),
        ]
      )
    );
  }
}