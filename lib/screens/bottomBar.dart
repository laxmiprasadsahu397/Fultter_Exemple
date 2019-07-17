
import 'package:flutter/material.dart';
import 'package:digiryte_app/screens/search.dart';
import 'package:digiryte_app/screens/logout.dart';


class _TabBarState extends State<TabBarPage> {
int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[

  SearchPage(key: PageStorageKey('Page1')),
  LogOutPage(key: PageStorageKey('Page2'))
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('DIGIRYTE'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subdirectory_arrow_right),
          title: Text('LogOut'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),
  );
}
}

class TabBarPage extends StatefulWidget {
      TabBarPage({Key key, this.title}) : super(key: key);
      final String title;
      @override
      _TabBarState createState() => _TabBarState();
    }