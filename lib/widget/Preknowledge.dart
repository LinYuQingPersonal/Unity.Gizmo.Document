import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizmos_document/widget/Href.dart';

class Preknowledge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;


    return LayoutBuilder(builder: (context,constraints){
      var href = [Href(path: 'https://zhuanlan.zhihu.com/p/144323332',text: "Martix",constraint: constraints,)
        ,Href(path: 'https://zhuanlan.zhihu.com/p/340444415',)
      ];
      return Container(

          padding: EdgeInsets.all(30),
          alignment: Alignment.topCenter,
          color: Colors.yellow,
          child: Column(
            children: [
              Center(
                child: Text(
                  "前置知识",
                  textAlign: TextAlign.center,
                  style: theme.titleLarge,
                ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.all(30),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: href.length,
                    itemBuilder: (context,index){
                      return href[index];
                    }),
              )
            ],
          ));
    });

  }
}
