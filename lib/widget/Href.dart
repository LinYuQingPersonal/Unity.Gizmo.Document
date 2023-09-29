import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as URLLaucher;

class Href extends StatelessWidget {
  String path;
  String? text;
  BoxConstraints? constraint;
  Href({required this.path, this.text,this.constraint});


  @override
  Widget build(BuildContext context) {
    String msg = text==null?path:text!;


    if(constraint!=null){
      if(constraint!.maxWidth>500){

        String cText=text ?? "链接";
        msg = "($cText)[$path]";
      }
    }

    return Container(
      width: 100,
      height: 20,
      color: Colors.red,
      child: InkWell(
        onTap: () => URLLaucher.launchUrl(Uri.parse(path)),
        child: Text(msg),
      ),
    );
  }
}
