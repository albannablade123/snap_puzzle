import 'package:flutter/material.dart';
import 'classroom.dart';
import 'profilescreen.dart';

var passedChatName;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _ExactPageNumber = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003942),
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          onPageChanged: (pageNo) {
            setState(() {
              _ExactPageNumber = pageNo++;
            });
          },
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Page1(),
            Classroom(),
            profilescreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:Color(0xFFE19600),
          currentIndex: _ExactPageNumber,
          selectedItemColor: Color(0xFF003942),
          unselectedItemColor: Colors.grey[350],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
            BottomNavigationBarItem(icon: Icon(Icons.school_outlined), label: 'Classes'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
          onTap: (currentPageNumber) {
            setState(() {
              pageController.jumpToPage(currentPageNumber);
            });
          },
        ),
        appBar: AppBar( title: const Text('SnapPuzzle'),automaticallyImplyLeading: false,backgroundColor: Colors.black,elevation: 5,)
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  var List1 = ["User1","User2","User3","User4","User5","User6"];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xFF003942),
        height: 120.0,
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey[400],
          ),
          itemCount: List1.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              onTap: (){
                passedChatName = List1[index];
                Navigator.of(context).pushNamed('/Chat');
              },
              leading: CircleAvatar(),
              title: Text(List1[index], style: TextStyle(color: Colors.white)),
              subtitle: Text(
                'Hey wanna see the image? heres a puzzle!',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



