import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/dark_grunge_background.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: _scaffoldkey,
        drawer: MenuScreen(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldkey.currentState.openDrawer();
            },
          ),
          title: Text(
            'THE PALEO PADDOCK',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              FoodItem(
                imageUrl: 'assets/images/omelette.jpg',
                icon: Icons.fastfood,
                colour: Colors.orange,
                name: 'il domacca',
                location: '38 5TH AVENUE, NEW YORK',
                rating: 85,
              ),
              FoodItem(
                imageUrl: 'assets/images/steak.jpg',
                icon: Icons.local_dining,
                colour: Colors.red,
                name: 'Mc Gady',
                location: '38 5TH AVENUE, NEW YORK',
                rating: 98,
              ),
              FoodItem(
                imageUrl: 'assets/images/Spices.jpg',
                icon: Icons.fastfood,
                colour: Colors.purpleAccent,
                name: 'Greezy',
                location: '38 5TH AVENUE, NEW YORK',
                rating: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final IconData icon;
  final Color colour;
  final String name;
  final String location;
  final int rating;

  FoodItem({
    this.imageUrl,
    this.icon,
    this.colour,
    this.name,
    this.location,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(17.0),
      child: Column(
        children: <Widget>[
          Image(
            width: double.infinity,
            height: 150,
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: colour,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      icon,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(location,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              Container(
                width: 2.0,
                height: 70.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.grey,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 25.0,
                    ),
                    onPressed: () {
                    },
                  ),
                  Text('$rating'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0, bottom: 50.0),
              child: Text(
                'WELCOME!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ),
              ),
            ),
            Spacer(),
            ListTile(
              title: Text(
              'THE PADDOCK',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
              'MENU',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
              'THE HERD',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
              'CONTACT US',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
              'SETTINGS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              onTap: () {},
            ),          
          ],
        ),
      ),
    );
  }
}
