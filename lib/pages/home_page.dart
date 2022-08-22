import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/iphone1.webp',
    'assets/images/iphone2.webp',
    'assets/images/iphone3.webp',
    'assets/images/iphone4.webp',
    'assets/images/iphone5.webp',
    'assets/images/iphone6.webp',
    'assets/images/iphone7.webp',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu),
        title: Text('Apple Products'),
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: Container(
              height: 30, width: 36,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.
                circular(10),
              ), child: Center(
              child: Text('7',style:
                TextStyle(fontSize: 22),),
            ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/iphone5.webp'),
                  fit: BoxFit.cover
                ),
              ),child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ]
          ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Lifestyle sale',style:
                    TextStyle(fontSize: 35,
                    color: Colors.white),),
                SizedBox(height: 35,),
                Container(
                  height: 44,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text('Shop Now'),
                  ),
                ),
                  SizedBox(height: 25,)
                ],
              ),),
            ),
            SizedBox(height: 10,),
            Expanded(child: Container(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),),
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.
            circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite,color: Colors.red,
            size: 36,)
          ],
        ),
      ),
    );
  }
  }
