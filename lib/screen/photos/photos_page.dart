import 'package:dio_network/screen/photos/widgets/photo_item.dart';
import 'package:dio_network/service/photo_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photos')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: FutureBuilder(
          future: PhotoService.getPhotos(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return GridView.builder(
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context,index) {
                  return photoItem(snapshot.data![index]);
                },
              );
            }
              return const Center(
                child: Text('No data'),
              );




          },
        ),
      ),
    );
  }
}
