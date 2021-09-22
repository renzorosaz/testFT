import 'package:flutter/material.dart';

const Color PRIMARY_COLOR = Colors.blueAccent;
const Color BACKGROUND_COLOR = Color(0xffE2E7F2);

class CustomBottomNavigationBar extends StatefulWidget {
  late final Color backgroundColor;
  late final Color itemColor;
  late final List<CustonBottomNavigationItem>? children;
  late final Function(int)? onChange;
  late final int currentIndex;

  CustomBottomNavigationBar(
      {this.backgroundColor = BACKGROUND_COLOR,
      this.itemColor = PRIMARY_COLOR,
      this.currentIndex = 0,
      this.children,
      this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _changeIndex(int index) {
    if (widget.onChange != null) {
      widget.onChange!(index);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: widget.backgroundColor,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widget.children!.map((item) {
            var color = item.color ?? widget.itemColor;
            var icon = item.icon;
            var label = item.label;
            int index = widget.children!.indexOf(item);
            return Text(
              label ?? '',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.currentIndex == index
                      ? color
                      : color.withOpacity(0.5)),
            );
          }).toList()),
    );
  }
}

class CustonBottomNavigationItem {
  late final IconData? icon;
  late final String? label;
  late final Color? color;

  CustonBottomNavigationItem({this.icon, this.label, this.color});
}
