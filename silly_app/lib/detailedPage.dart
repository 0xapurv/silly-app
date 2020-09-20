import 'package:flutter/material.dart';
import 'package:silly_app/Model/character.dart';
import 'package:silly_app/Model/item.dart';
import 'package:silly_app/components/checkout_dialog.dart';

class DetailedScreen extends StatefulWidget {
  final Character characterToShow;

  DetailedScreen({this.characterToShow});

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  int netWorthLeft;
  List<Items> itemList;

  void populateList() {
    itemList = [
      new Items.fromDetails(
          itemName: "Jhola (CarryBag)",
          worth: "0",
          photo: Image.asset("assets/item/Jhola (CarryBag).png"),
          addCallBack: addValue,
          subCallBack: subValue,
          limit: "1",
      ),
      new Items.fromDetails(
        itemName: "Coca Cola",
        worth: "1",
        photo: Image.asset("assets/item/Coca Cola.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
          itemName: "Monthly Mobile recharge ",
          worth: "3",
          photo: Image.asset("assets/item/Monthly Mobile recharge.png"),
          addCallBack: addValue,
          subCallBack: subValue),
      new Items.fromDetails(
        itemName: "Movie Tickets",
        worth: "12",
        photo: Image.asset("assets/item/Movie Tickets.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
          itemName: "Book",
          worth: "15",
          photo: Image.asset("assets/item/Book.png"),
          addCallBack: addValue,
          subCallBack: subValue),
      new Items.fromDetails(
        itemName: "Lobster Dinner",
        worth: "45",
        photo: Image.asset("assets/item/Lobster Dinner.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Video game",
        worth: "60",
        photo: Image.asset("assets/item/Video game.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Amazon Echo",
        worth: "90",
        photo: Image.asset("assets/item/Amazon Echo.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Year of Netflix",
        worth: "100",
        photo: Image.asset("assets/item/Year of Netflix.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Air Jordans",
        worth: "125",
        photo: Image.asset("assets/item/Air Jordans.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Airpods",
        worth: "199",
        photo: Image.asset("assets/item/Airpods.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Gaming Console",
        worth: "499",
        photo: Image.asset("assets/item/Gaming Console.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Drone",
        worth: "550",
        photo: Image.asset("assets/item/Drone.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "I Phone",
        worth: "699",
        photo: Image.asset("assets/item/I Phone.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Kitten ",
        worth: "800",
        photo: Image.asset("assets/item/Kitten .png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Puppy ",
        worth: "900",
        photo: Image.asset("assets/item/Puppy.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Bike",
        worth: "1500",
        photo: Image.asset("assets/item/Bike.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Auto Rickshaw",
        worth: "2300",
        photo: Image.asset("assets/item/Auto Rickshaw.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Horse",
        worth: "2500",
        photo: Image.asset("assets/item/Horse.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Acre of Farmland",
        worth: "3000",
        photo: Image.asset("assets/item/Acre of Farmland.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Luxary Wine",
        worth: "7000",
        photo: Image.asset("assets/item/Luxary Wine.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Diamond Ring",
        worth: "10000",
        photo: Image.asset("assets/item/Diamond Ring.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Jet ski",
        worth: "12000",
        photo: Image.asset("assets/item/Jet ski.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Rolex",
        worth: "15000",
        photo: Image.asset("assets/item/Rolex.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Ford F-150",
        worth: "30000",
        photo: Image.asset("assets/item/Ford F-150.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Tesla",
        worth: "75000",
        photo: Image.asset("assets/item/Tesla.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Monster Truck",
        worth: "150000",
        photo: Image.asset("assets/item/Monster Truck.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "ferrari",
        worth: "250000",
        photo: Image.asset("assets/item/ferrari.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Single Family Home",
        worth: "300000",
        photo: Image.asset("assets/item/Single Family Home.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Gold Bar",
        worth: "700000",
        photo: Image.asset("assets/item/Gold Bar.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "McDonalds Franchise",
        worth: "1500000",
        photo: Image.asset("assets/item/McDonalds Franchise.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "SuperBowl Ad",
        worth: "5252000",
        photo: Image.asset("assets/item/SuperBowl Ad.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Yacht",
        worth: "7500000",
        photo: Image.asset("assets/item/Yacht.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "M1 Abrams",
        worth: "8000000",
        photo: Image.asset("assets/item/M1 Abrams.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Rafale",
        worth: "91000000",
        photo: Image.asset("assets/item/Rafale.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Formula 1 Car",
        worth: "15000000",
        photo: Image.asset("assets/item/Formula 1 Car.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Mansion",
        worth: "45000000",
        photo: Image.asset("assets/item/Mansion.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Make a Movie",
        worth: "100000000",
        photo: Image.asset("assets/item/Make a Movie.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Ipl team",
        worth: "150000000",
        photo: Image.asset("assets/item/Ipl team.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "8",
      ),

      new Items.fromDetails(
        itemName: "Boeing 747",
        worth: "158000000",
        photo: Image.asset("assets/item/Boeing 747.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Mona Lisa",
        worth: "780000000",
        photo: Image.asset("assets/item/Mona Lisa.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "1",
      ),
      new Items.fromDetails(
        itemName: "Skyscraper",
        worth: "850000000",
        photo: Image.asset("assets/item/Skyscraper.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),new Items.fromDetails(
        itemName: "Cruise Ship",
        worth: "930000000",
        photo: Image.asset("assets/item/Cruise Ship.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),
      new Items.fromDetails(
        itemName: "Premier leauge team",
        worth: "9500000000",
        photo: Image.asset("assets/item/Premier leauge team.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "20",
      ),
      new Items.fromDetails(
        itemName: "Antilia",
        worth: "1000000000",
        photo: Image.asset("assets/item/Antilia.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "1",
      ),
      new Items.fromDetails(
        itemName: "Kohinoor diamond",
        worth: "120000000",
        photo: Image.asset("assets/item/Kohinoor diamond.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "1",
      ),
      new Items.fromDetails(
        itemName: "Burj Khalifa",
        worth: "150000000000",
        photo: Image.asset("assets/item/Burj Khalifa.png"),
        addCallBack: addValue,
        subCallBack: subValue,
        limit: "1",
      ),
      new Items.fromDetails(
        itemName: "NBA Team",
        worth: "21200000000",
        photo: Image.asset("assets/item/NBA Team.png"),
        addCallBack: addValue,
        subCallBack: subValue,
      ),

    ];
  }

  @override
  void initState() {
    super.initState();
    populateList();
    netWorthLeft = int.parse(widget.characterToShow.net_worth);
  }

  void addValue(int value) {
    setState(() {
      netWorthLeft += value;
    });
  }

  void subValue(int value) {
    setState(() {
      netWorthLeft -= value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.characterToShow.name),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: widget.characterToShow.photo,
                ),
              ),
              Text(
                "\$" + netWorthLeft.toString(),
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3.0,
                    child: CheckoutDialog(
                        addCallback: addValue,
                        subtractCallback: subValue,
                        itemName: itemList[index].itemName,
                        itemCost: itemList[index].worth,
                        itemImage: itemList[index].photo,
                    limit: itemList[index].limit,),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
