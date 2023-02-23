import 'package:dio_network/model/post_model.dart';
import 'package:flutter/material.dart';

Widget postItem(BuildContext context, PostModel post) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        post.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        post.body,
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black38),
      ),
      const Divider(thickness: 3,)
    ],
  );
}
