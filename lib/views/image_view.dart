import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageView extends StatefulWidget {

  ImageView({@required this.imgUrl, this.imgPath});
  final String imgUrl;
  final String imgPath;


  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {

  var filePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.network(widget.imgUrl, fit: BoxFit.cover,)),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: (){
                        _save();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width /2,
                        color: Color(0xFF1C1B1B).withOpacity(0.8),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width /2,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white54, width: 1
                          ),
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [
                            Color(0x36FFFFFF),
                            Color(0x0FFFFFFF),
                          ])
                      ),
                      child: Column(
                        children: [
                          Text('Set Wallpaper'),
                          Text('Image will be saved in gallery', style: TextStyle(
                              fontSize: 10, color: Colors.white70
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Text('Cancel', style: TextStyle(color: Colors.white),),
                SizedBox(height: 50,)
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  _save()async{
    // await _askPermission();
    var response = await Dio().get(
      widget.imgUrl,
      options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(Uint8List.fromList(response.data),);
    print(result);
    Navigator.pop(context);
  }

  // _askPermission()async {
  //   if(Platform.isIOS) {
  //     Map<Permission, PermissionStatus> permissions = await Permission.photos.request();
  //   }else {
  //     PermissionStatus permission = await Permission.storage.request();
  //   }
  // }
}
