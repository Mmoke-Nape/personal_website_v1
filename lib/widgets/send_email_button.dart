import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMeAnEmailButton extends StatefulWidget {
  const SendMeAnEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SendMeAnEmailButton> createState() => _SendMeAnEmailButtonState();
}

class _SendMeAnEmailButtonState extends State<SendMeAnEmailButton> {
  var isHovering = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchUrl('mailto:napemmoke@gmail.com?'),
      onHover: (value) {
        setState(() {
          isHovering = !isHovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isHovering ? null : Colors.white,
        ),
        child: Row(
          children: const [
            Text("Send me an email", style: TextStyle(color: Colors.black)),
            SizedBox(width: 10),
            Icon(
              Icons.mail_outline,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: true,
      enableJavaScript: true,
    )) throw 'Could not launch URL';
  }
}
