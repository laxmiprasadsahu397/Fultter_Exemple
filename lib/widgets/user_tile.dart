import 'package:flutter/material.dart';
import 'package:digiryte_app/model/userList.dart';

class UserTile extends StatelessWidget {
  final UserList _userList;
  UserTile(this._userList);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_userList.name),
        subtitle: Text(_userList.tagline),
        leading: Container(
          margin: EdgeInsets.only(left: 20.0, top: 20.0),
          child: Image.network(_userList.imageurl, height: 50.0, fit: BoxFit.fill,)
        ),
      ),
      Divider()
    ],
  );
}