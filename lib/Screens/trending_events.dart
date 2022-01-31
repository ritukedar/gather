import 'package:flutter/material.dart';
import 'package:gather/Screens/filter_screen.dart';
import 'package:gather/constants/constant.dart';

class TreandingEvents extends StatelessWidget {
  const TreandingEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Trending Events",style: fontstyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(

                  
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                    },child: Image.asset("assets/images/filter.png",scale: 10,)),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Search',
                  ),
                ),
              ),
              dynamicListView(),
            ],
          ),
        ),
      ),
    );
  }
  Widget dynamicListView() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        //  itemCount: title.length,
        shrinkWrap: true,

        //  physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
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
          );
        });
  }

}
