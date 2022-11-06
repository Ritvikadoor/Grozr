import 'package:flutter/material.dart';
import 'package:grozr/modules/app/constants/sizeconfig.dart';
import 'package:grozr/modules/app/view/dairy/dairy.dart';
import 'package:grozr/modules/app/view/fruits/fruits.dart';
import 'package:grozr/modules/app/view/nuts/nuts.dart';
import 'package:grozr/modules/app/view/vegetables/vegetables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: MyMainPage(title: "PineApple"),
        ),
      ),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 6 * SizeConfig.imageSizeMultiplier,
                ),
                Spacer(),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 6 * SizeConfig.imageSizeMultiplier,
                )
              ],
            ),
          ),
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Search here",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 2.4 * SizeConfig.textMultiplier,
                          fontFamily: 'OpenSans'),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 6 * SizeConfig.imageSizeMultiplier,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          ),
          TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: const [
                Tab(
                  child: Text(
                    "Fruits",
                    // style: TextStyle(
                    //     fontSize: 2.5 * SizeConfig.textMultiplier,
                    //     fontFamily: 'OpenSans'),
                  ),
                ),
                Tab(
                  child: Text(
                    "Vegetables",
                    // style: TextStyle(
                    //     fontSize: 2.5 * SizeConfig.textMultiplier,
                    //     fontFamily: 'OpenSans'),
                  ),
                ),
                Tab(
                  child: Text(
                    "Nuts & Seeds",
                    // style: TextStyle(
                    //     fontSize: 2.5 * SizeConfig.textMultiplier,
                    //     fontFamily: 'OpenSans'),
                  ),
                ),
                Tab(
                  child: Text(
                    "Dairy",
                    // style: TextStyle(
                    //     fontSize: 2.5 * SizeConfig.textMultiplier,
                    //     fontFamily: 'OpenSans'),
                  ),
                ),
              ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Fruits(),
              Vegetables(),
              Nuts(),
              Dairy(),
            ]),
          )
        ],
      ),
    );
  }
}
