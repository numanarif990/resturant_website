import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomIcon extends StatefulWidget {
  final Color color;
  final IconData icon;
  final String url;

  const BottomIcon({
    Key? key,
    required this.url,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  _BottomIconState createState() => _BottomIconState();
}

class _BottomIconState extends State<BottomIcon> {
  bool isHovered = false;

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL(widget.url);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isHovered ? widget.color : Colors.white,
          ),
          child: Center(
            child: Icon(
              widget.icon,
              color: isHovered ? Colors.white : widget.color,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
