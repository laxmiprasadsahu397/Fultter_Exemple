import 'package:flutter/material.dart';
// import 'package:chopper/chopper.dart';
// import 'package:digiryte_app/repository/my_service.dart';
import 'package:digiryte_app/model/userList.dart';
import 'package:digiryte_app/widgets/user_tile.dart';
import 'package:digiryte_app/repository/userList_repository.dart';

class SearchPage extends StatefulWidget {
   const SearchPage({Key key}) : super(key: key);
   
 @override
   _SearchSatate createState() => _SearchSatate();
}

class _SearchSatate extends State<SearchPage> {
  TextEditingController editingController = TextEditingController();
  List<UserList> _userList = <UserList>[];
  var items = List<UserList>();

  @override
  void initState() {
    super.initState();
    listenForUserList();
  }

  void filterSearchResults(String query) {
    List<UserList> dummySearchList = List<UserList>();
    dummySearchList.addAll(_userList);
    if(query.isNotEmpty) {
      List<UserList> dummyListData = List<UserList>();
      dummySearchList.forEach((item) {
        if(item.name.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(_userList);
      });
    }

  }

  @override
  Widget build(BuildContext context) => Scaffold(
    // appBar: AppBar(
    //   centerTitle: true,
    //   title: Text('Top Beers'),
    // ),
    // body: ListView.builder(
    //   itemCount: _userList.length,
    //   itemBuilder: (context, index) => UserTile(_userList[index]),
    // ),

    // body: GridView.builder (
    //   itemCount: _userList.length,
    //   itemBuilder: (context, index) => UserTile(_userList[index]), gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
    //                                crossAxisCount: 2),
    // ),
  // );
  body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: GridView.builder (
      itemCount: items.length,
      itemBuilder: (context, index) => UserTile(items[index]), gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 2),
    ),
            ),
          ],
        ),
      ),
    );

  void listenForUserList() async {
    final Stream<UserList> stream = await getuserList();
    stream.listen((UserList user) =>
      setState(() =>  _userList.add(user))
    );
  }
  
}
