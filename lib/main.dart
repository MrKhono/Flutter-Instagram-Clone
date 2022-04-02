import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Instagram(),
    );
  }
}

class Instagram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    var platform = Theme.of(context).platform;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 70, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: NetworkImage("https://www.edigitalagency.com.au/wp-content/uploads/new-Instagram-logo-white-png-font.png"),
                    height: 40,
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_box_outlined, color: Colors.white, size: 27,),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.message_rounded, color: Colors.white, size: 27,),
                      )
                    ],
                  )
                ],
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          profile(radius: 40, image: "https://www.discordl.org/avatars/6/691066223256928367/9e471daa5c717ae527dc712cb7346a6b.png", name: "Your story"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/5952647/pexels-photo-5952647.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", name: "Coder"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/2169302/pexels-photo-2169302.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name: "BasketBall"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/1540108/pexels-photo-1540108.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name: "Diver"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/1996969/pexels-photo-1996969.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", name: "Skate Parc"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name: "Photography"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/2387873/pexels-photo-2387873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name: "Travel"),
                          profile(radius: 40, image: "https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name: "FoodStory"),
                          profile(radius: 40, image: "https://media.techtribune.net/uploads/2022/01/demon-slayer-season-2-entertainment-district-arc-opening.jpg", name: "Otaku"),
                        ],
                      ),
                    ),
                  ),

                  Divider(thickness: 0.3, color: Colors.grey,),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        post(ppImage : "https://pm1.narvii.com/5955/441b34d5561984e421f7b9e28989b95e83a2808a_hq.jpg",img2: "https://i0.wp.com/www.univers-otaku.com/wp-content/uploads/2021/02/Killua-Zoldyck-1.jpg?resize=740%2C370&ssl=1", name : "Otaku", img1: "https://www.manga-city.fr/wp-content/uploads/2021/09/Featured-Image-Gon-Freecss-Cropped.jpg", caption : "Otaku", size : size),
                        post(ppImage : "https://images.pexels.com/photos/1527241/pexels-photo-1527241.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",img1: "https://images.pexels.com/photos/457496/pexels-photo-457496.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name : "Skater", img2: "https://images.pexels.com/photos/1769553/pexels-photo-1769553.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", caption : "Road", size : size),
                        post(ppImage : "https://images.pexels.com/photos/1670468/pexels-photo-1670468.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",img2: "https://images.pexels.com/photos/37530/divers-scuba-divers-diving-underwater-37530.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name : "divingclub", img1: "https://images.pexels.com/photos/1540108/pexels-photo-1540108.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", caption : "Let's dive", size : size),
                        post(ppImage : "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",img2: "https://images.pexels.com/photos/3184183/pexels-photo-3184183.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name : "foodstory", img1: "https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", caption : "Bonne appetit", size : size),
                        post(ppImage : "https://images.pexels.com/photos/1331750/pexels-photo-1331750.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",img2: "https://images.pexels.com/photos/974502/pexels-photo-974502.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name : "basketball", img1: "https://images.pexels.com/photos/1839835/pexels-photo-1839835.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", caption : "Game day", size : size),
                        post(ppImage : "https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",img2: "https://images.pexels.com/photos/307847/pexels-photo-307847.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", name : "photography", img1: "https://images.pexels.com/photos/11576227/pexels-photo-11576227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", caption : "Pose", size : size),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }

}

Padding profile({double? radius, String? image, String? name}){
  return Padding(
    padding: EdgeInsets.all(5),
    child: Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: Colors.deepOrangeAccent,
          child: CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(image!),
          ),
        ),
        Text(
          name!,
          style: TextStyle(
            color: Colors.white
          ),
        )
      ],
    )
  );
}

Container post({String? ppImage, String? name,String? img1,String? img2, String? caption, double? size}){
  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor:Colors.deepOrangeAccent,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(ppImage!),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.more_horiz, color: Colors.white,)
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: size,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(img1!),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        height: 250,
                        width: size,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(img2!),
                                fit: BoxFit.cover
                            )
                        ),
                      )
                    ],
                  )
              )
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border, color: Colors.white,),
                        Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,)),
                        Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Icon(Icons.send, color: Colors.white,)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "35 likes",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding : EdgeInsets.only(top: 5,right: 5),
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding : EdgeInsets.only(top: 2,),
                      child: Text(
                        caption!,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding : EdgeInsets.only(top: 5,),
                  child: Text(
                    "View all 34 comments",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ),
                Padding(
                  padding : EdgeInsets.only(top: 5,),
                  child: Text(
                    "2 hours ago",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    ),
  );
}

