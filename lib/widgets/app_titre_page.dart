import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTitrePage extends StatelessWidget {
  final String titre1;
  final String? titre2;
  final String? titre3;

   AppTitrePage({required this.titre1, this.titre2, this.titre3});

  @override
  Widget build(BuildContext context) {
    if (titre2 == null && titre3 == null)
      {
        return Row(children: [Container(margin: EdgeInsets.fromLTRB(0, 0, 20, 0), child: const Icon(Icons.arrow_back, color: Color(0xff052948), size: 35)), Container(child: Text(titre1, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins',color: Color(0xff052948), fontSize: 40),))],);
      }
    else if (titre3 == null) {
      return Row(children: [Container(margin: EdgeInsets.fromLTRB(0, 0, 20, 0), child: Icon(Icons.arrow_back, color: Color(0xff052948), size: 35)), Container(child: Text(titre1, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins', color: Color(0xff052948), fontSize: 40),)), Container(margin: EdgeInsets.fromLTRB(30, 0, 30, 0),child: Icon(Icons.arrow_forward_ios, color: Color(0xff052948), size: 20)), Container(child: Text(titre2!, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins', color: Color(0xff052948), fontSize: 40),))],);
    } else {
      return Row(children: [Container(margin: EdgeInsets.fromLTRB(0, 0, 20, 0), child: Icon(Icons.arrow_back, color: Color(0xff052948), size: 35)), Container(child: Text(titre1, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins', color: Color(0xff052948), fontSize: 40),)), Container(margin: EdgeInsets.fromLTRB(30, 0, 30, 0), child: Icon(Icons.arrow_forward_ios, color: Color(0xff052948), size: 20)), Container(child: Text(titre2!, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins', color: Color(0xff052948), fontSize: 40),)), Container(margin: EdgeInsets.fromLTRB(30, 0, 30, 0), child: Icon(Icons.arrow_forward_ios, color: Color(0xff052948), size: 20)), Container(child: Text(titre3!, style: TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins', color: Color(0xff052948), fontSize: 40),))],);
    }
  }
}