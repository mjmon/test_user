import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testapp/modules/users/model/user/user.dart';

const kTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
);

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Id: ${user.id}",
              style: kTextStyle,
            ),
            Text(
              "Name: ${user.name}",
              style: kTextStyle,
            ),
            CachedNetworkImage(imageUrl: user.imageUrl)
          ],
        ),
      ),
    );
  }
}
