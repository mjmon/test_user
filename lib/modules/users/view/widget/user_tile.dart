import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testapp/modules/users/model/user/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user, required this.onTap});

  final User user;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minVerticalPadding: 25,
      leading: CachedNetworkImage(
        imageUrl: user.imageUrl,
        height: 50,
        width: 50,
      ),
      title: Text(user.name),
    );
  }
}
