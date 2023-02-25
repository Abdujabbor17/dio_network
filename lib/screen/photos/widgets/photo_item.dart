

import 'package:dio_network/model/photo_model.dart';
import 'package:flutter/material.dart';

Widget photoItem(PhotoModel photo){
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          photo.url,
          height: 130.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8.0),
        Text(
         photo.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  );
}