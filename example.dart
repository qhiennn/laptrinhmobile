import 'package:flutter/material.dart';
import 'Excercite_1.dart';
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Example'),
      ),
      body: const Center(
        child: Card(
          elevation: 4.0,
          child: Padding(
              padding: EdgeInsets.all(16.0), child: Text('This is a card')),
        ),
      ),
    );
  }
}

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CircleAvatar Example'),
        ),
        body: const Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://picsum.photos/200/200'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BorderExample extends StatelessWidget {
  const BorderExample({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('BorderExample Example'),
      ),
      body: Center(
          child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
        ),
        child: const Center(child: Text('Border Example')),
      )),
    ));
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});
  @override
  State<BottomNavExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavExample> {
  int _selectedIndex = 0;
  // Sử dụng các class có sẵn
  static final List<Widget> _widgetOptions = <Widget>[
    const BorderExample(),
    const CircleAvatarExample(),
    const Excercite1(),
  ];
  // Hàm xử lý khi tap vào item
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BottomNavigationBar'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
          // Index cua item dang duoc chon
          currentIndex: _selectedIndex,
          // Màu của item khi được chọn
          selectedItemColor: Colors.amber[800],
          // Hàm xử lý khi tap vào item
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
