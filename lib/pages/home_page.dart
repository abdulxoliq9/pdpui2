import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/arabia2.jpg',
    'assets/images/arabia3.webp',
    'assets/images/arabia5.webp',
    'assets/images/arabia6.webp',
    'assets/images/arabia7.webp',
    'assets/images/arabia8.webp',
    'assets/images/arabia9.webp',
    'assets/images/arabia10.webp',
    'assets/images/arabia11.webp',
    'assets/images/arabia12.webp',
    'assets/images/arabia13.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('Saudia Arabia'),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('7'),
              ),
            ),)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            // header
            Container(
              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/arabia13.webp'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.2)
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('A trip to Arabia',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),),
                    SizedBox(height: 25,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Text('Travel Now',style: TextStyle(
                          color: Colors.grey[700],),
                        ),),
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ),SizedBox(height: 15,),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
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
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite, color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
