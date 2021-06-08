import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
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
                Navigator.pushNamed(context, "phones");
              },
              icon: Icon(Icons.phone_android),
              color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Child Row
              Row(children: [
                Image(
                  image: AssetImage("../../assets/images/user-image.png"),
                  width: 150,
                  height: 150,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("abc@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("logout")),
                      ]),
                ),
              ]),

              // Second Child SizeBox
              SizedBox(
                height: 50,
              ),

              // Third Child Title
              Text(
                "ACCOUNT INFORMATION",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "User", labelText: "Full Name ")),

              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "user@gmail.com", labelText: "Email")),

              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "User", labelText: "Full Name ")),
              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "+9212798133", labelText: "Phone")),
              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      hintText: "Shadman no 2 , Karachi",
                      labelText: "Address")),
              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "Male / Female", labelText: "Gender")),
              SizedBox(
                height: 20,
              ),

              TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "December 20, 2002",
                      labelText: "Date Of Birth")),
            ],
          ),
        ),
      ),
    );
  }
}
