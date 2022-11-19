import 'package:flutter/material.dart';
import 'package:icecreamui/utils/my_tabs.dart';

import '../tabs/buscit_tab.dart';
import '../tabs/chees_tab.dart';
import '../tabs/ice_tab.dart';
import '../tabs/pie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TABS
  List<Widget> myTabs = [
    //ice cream tab
    const MyTabs(
      iconPath: 'lib/icons/ice-cream.png',
    ),
    // cheese tab
    const MyTabs(
      iconPath: 'lib/icons/cake.png',
    ),
    //pie tab
    const MyTabs(
      iconPath: 'lib/icons/busic.png',
    ),
    //cake tab
    const MyTabs(
      iconPath: 'lib/icons/pizza.png',
    ),
    //cakes tab
    const MyTabs(
      iconPath: 'lib/icons/cakes.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 37,
              ),
              onPressed: () {
                //do something
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 37,
                ),
                onPressed: () {
                  //do something
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //Intro Text

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),

              child: Row(
                children: const [
                  Text(
                    'It Taste',
                    style: TextStyle(fontSize: 24,),
                  ),
                  Text(
                    ' YUMMY!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),



            const SizedBox(height: 24),

            //TABS
            TabBar(tabs: myTabs, labelPadding: const EdgeInsets.only(bottom: 10),),

            // TAB VIEW
            Expanded(child: TabBarView(children: [

              IceTab(),

              const CheesTab(),

              const BuscitTab(),

              const PieTab(),

            ]))


          ],
        ),
      ),
    );
  }
}
