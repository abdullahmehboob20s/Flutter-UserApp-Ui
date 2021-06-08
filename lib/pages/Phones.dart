import 'package:flutter/material.dart';

class Phones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("abdullahmehboob307@gmail.com", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {
               Navigator.pushNamed(context, "settings");
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(children: [
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
            CustomTile(imageUrl: "../../assets/images/phone-1.jpg",titleText: "Iphone 12",),
            CustomTile(imageUrl: "../../assets/images/phone-2.jpg",titleText: "Iphone 12 Pro",),
            CustomTile(imageUrl: "../../assets/images/phone-3.jpg",titleText: "Techno KC3",),
          ]),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final String imageUrl;
  final String titleText;

  CustomTile({required this.imageUrl , required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: 40,
        ),
        title: Text(titleText),
        subtitle: Row(children: [
          Icon(Icons.star_outlined, color: Colors.yellow),
          SizedBox(
            width: 7,
          ),
          Text("5.0 (23 Reviews)")
        ]),
        trailing: Text("10"),
      ),
    );
  }
}
