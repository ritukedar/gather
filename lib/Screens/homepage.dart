import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/Screens/filter_screen.dart';
import 'package:gather/Screens/trending_events.dart';
import 'package:gather/constants/constant.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool seeAllCategory = true;
  bool seeAllMyNetwork = true;

  List<String> imageList = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png"
  ];

  List<String> dynamicFriendImages = [
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
    "assets/images/network_image3.png",
    "assets/images/network_image4.png",
    "assets/images/network_image5.png",
    "assets/images/network_image6.png",
    "assets/images/netwrok_image1.png",
    "assets/images/network_image2.png",
  ];

  List<String> CategoryNameList = [
    "MeetUp",
    "StartUp",
    "College",
    "MeetUp",
    "StartUp",
    "College",
    "MeetUp",
    "StartUp",
    "College"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: heightLess,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(CupertinoIcons.search,color: Colors.blueGrey.shade300,),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                    },
                    child: Image.asset(
                      "assets/images/filter.png",
                      scale: 8,
                    ),
                  )
                ],
              ),
            ),
            dynamicListView(),
            SizedBox(
              height: heightLess,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: fontstyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  seeAllCategory
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              seeAllCategory = false;
                            });
                          },
                          child: Text(
                            "See All(9)",
                            style: fontstyle(),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              seeAllCategory = true;
                            });
                          },
                          child: Text(
                            "See Less",
                            style: fontstyle(),
                          ),
                        ),
                ],
              ),
            ),
            dynamicGridView(),
            SizedBox(
              height: heightLess,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Network",
                    style: fontstyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  seeAllMyNetwork
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              seeAllMyNetwork = false;
                            });
                          },
                          child: Text(
                            "See All(56)",
                            style: fontstyle(),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              seeAllMyNetwork = true;
                            });
                          },
                          child: Text(
                            "See Less",
                            style: fontstyle(),
                          ),
                        ),
                ],
              ),
            ),
            dynamicMyNetworkList()
          ],
        ),
      ),
    );
  }

  Widget dynamicGridView() {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),
        itemCount: seeAllCategory ? 3 : imageList.length,
        //  itemCount: title.length,
        shrinkWrap: true,

        //  physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Transform.scale(
              scale: 1.5,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    imageList[index],
                  ),
                  fit: BoxFit.fill,
                )),
                child: Center(
                  child: Container(
                    child: Text(CategoryNameList[index],
                        style: fontstyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ));
        });
  }

  Widget dynamicListView() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        //  itemCount: title.length,
        shrinkWrap: true,

        //  physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TreandingEvents(

              )));

            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/images/networking1.png",
                      ),
                      fit: BoxFit.fill,
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 40,
                            child: Card(
                              child: Center(
                                  child: Text(
                                "30.03",
                                style: fontstyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 40,
                            child: Card(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.5",
                                    style: fontstyle(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Pune Meetup",
                          style: fontstyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          "assets/images/design.png",
                          scale: 10,
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/friend_group.png",
                          scale: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      "Bhau Institute.Shivajinagar, Pune",
                      style: fontstyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade300,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: heightLess,
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget dynamicMyNetworkList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6, crossAxisSpacing: 0, mainAxisSpacing: 0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: seeAllMyNetwork ? 6 : 56,
        //  itemCount: title.length,
        shrinkWrap: true,

        //  physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Transform.scale(
            scale: 2.5,
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage(dynamicFriendImages[index]),
              backgroundColor: Colors.transparent,
            ),
          );
        });
  }
}
