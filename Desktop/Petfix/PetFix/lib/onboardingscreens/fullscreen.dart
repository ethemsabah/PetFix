import 'package:flutter/material.dart';
import 'package:petpix/addpost/addpost.dart';
import 'package:petpix/backend/useralma.dart';
import 'package:petpix/pages/cards/firstcard.dart';
import 'package:petpix/addpost/home_screen.dart';
import 'package:petpix/pages/maching/Animal_listpage.dart';
import 'package:petpix/pages/searchpage.dart';
import 'package:petpix/pages/Adoption/adoption.dart';
import 'package:petpix/pages/user/profilescreen.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  void navigationTapped(int page) {
    if (page == 1) {
      _showSearchOptions(context);
    } else {
      pageController.jumpToPage(page);
    }
  }

  void _showSearchOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Matching', style: TextStyle(fontSize: 18.0, shadows: [Shadow(color: Colors.grey, blurRadius: 2)])),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalListPage()));
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Adoption', style: TextStyle(fontSize: 18.0, shadows: [Shadow(color: Colors.grey, blurRadius: 2)])),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdoptionPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(),
          ProfilePage(userId: 1,),
        ],
      ),
    );
  }
}
