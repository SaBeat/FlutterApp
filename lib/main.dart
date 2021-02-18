import 'package:flutter/material.dart';
import 'package:sports_info/settings.dart';
import 'package:sports_info/test.dart';
import './drawer_test.dart';

void main() {
  runApp(MaterialApp(
    home: SportsInfo(),
  ));
}

class SportsInfo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SportsInfo> {
  String imageHeader =
      "https://images.unsplash.com/photo-1508098682722-e99c43a406b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  List<String> trainingImage = [
    "https://images.unsplash.com/photo-1585170236738-aadfce97f025?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=744&q=80",
    "https://images.unsplash.com/photo-1557675518-7b72340cc437?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
    "https://images.unsplash.com/photo-1547231293-f40c6202ba40?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1506626637585-0802df0d0269?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1567&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP930UV3W3Gq2UgD4sJcOaicE6Z4dJWJw4OA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ1AAcuz5e9m93RV6TWTkTt-_gkfyxKCJRcg&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: true,
              title: Text(
                'Sports Info',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
              toolbarHeight: 110,
              // leading: IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.menu,
              //     size: 35,
              //   ),
              // ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  imageHeader,
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: null,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 24, left: 12, right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                      hintText: 'Search for sports',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                PopupMenuButton<String>(
                  onSelected: choiceAction,
                  itemBuilder: (BuildContext context){
                    return Constants.chocies.map((String choice){
                      return PopupMenuItem < String > (
                        value: choice,
                        child: Text(choice),
                        );
                    }).toList();
                  },
                ),
              ],
            )
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top trends',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                listTest(trainingImage[0], 'FC Barcelona',
                    'Founded: 29 November 1899', 'Head Coach: Ronald Koeman'),
                SizedBox(height: 15),
                listTest(trainingImage[1], 'Real Madrid',
                    'Founded: 6 March 1902', 'Head coach:	Zinedine Zidane'),
                SizedBox(height: 15),
                listTest(trainingImage[2], 'Chelsea FC',
                    'Founded:	10 March 1905', 'Head coach:	Thomas Tuchel'),
                SizedBox(height: 15),
                listTest(trainingImage[3], 'Besiktas J.K',
                    'Founded:	3 March 1903', 'Head coach:	Sergen Yalçın'),
                SizedBox(height: 15),
                listTest(trainingImage[4], 'AC Milan', 'Founded:	1899',
                    'Manager:	Stefano Pioli'),
                SizedBox(height: 15),
                listTest(trainingImage[5], 'Liverpool', 'Founded:	3 June 1892',
                    'Manager:	Jürgen Klopp'),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void choiceAction(String choice){
    if(choice==Constants.Subscribe){
      print('Subcribe');
    }
    else if(choice==Constants.Settings){
      print('Settings');
    }
    else if(choice==Constants.SignOut){
      print('Sign out');
    }
  }
}
