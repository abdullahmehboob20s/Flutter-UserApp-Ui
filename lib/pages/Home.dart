import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("abdullahmehboob307@gmail.com", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "phones");
              },
              icon: Icon(Icons.phone_android),
              color: Colors.black),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "settings");
              },
              icon: Icon(Icons.settings),
              color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomCard(
                imageUrl: "../../assets/images/house-1.jpg",
                title: "London House",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-2.jpg",
                title: "America House",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-3.jpg",
                title: "ASF City House 12",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-4.jpg",
                title: "Lyari City House",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-5.jpg",
                title: "Landhi Houses",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-6.jpg",
                title: "Shadman Town Houses",
              ),
              CustomCard(
                imageUrl: "../../assets/images/house-7.jpg",
                title: "Malir Houses",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  CustomCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 145,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imageUrl),
            width: 210,
            height: 145,
            fit: BoxFit.fill,
          ),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_outlined,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5),
                      Text("5.0  (23 Review)"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("20 Pieces"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("90",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Quantity 1")
                ],
              ))
        ],
      ),
    );
  }
}
