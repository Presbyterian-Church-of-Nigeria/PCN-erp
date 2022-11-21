import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: //Column(

      //children: [
     //   SizedBox(height: 10,),
        //Container
        // (
             new PhotoView(
              imageProvider: AssetImage("assets/inv.jpeg"),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: 4.0,

            )

       // ),

      //SizedBox(height: 10,),
    //  ]
    //)
    );
  }}