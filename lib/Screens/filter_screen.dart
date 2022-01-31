import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/constants/constant.dart';

class FilterScreen extends StatelessWidget {
   FilterScreen({Key? key}) : super(key: key);

  List<String> categoryList = ["Business","Meetup","Startup","Casual","Fun","Adventure","Business","Networking","Casual","Fun","Adventure","Startup","Fun","Business","Meetup"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20.0)),
                  color: colorLightBlue,
                ),
                height: 60,
                child: Center(child: Text("Reset", style: fontstyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),)),
              ),

            ),
            const SizedBox(width: 0.3,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(20.0)),
                  color: colorLightBlue
                  ,
                ),
                height: 60,
                child: Center(child: Text("Apply", style: fontstyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),)),
              ),

            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.multiply,
              color: Colors.black87,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Filter",
          style: fontstyle(color: Colors.black),
        ),
      ),
      body:  Column(
        children: [
          SizedBox(
            height: heightMore,
          ),
          Text("Select Category",style: fontstyle(fontWeight: FontWeight.w700,fontSize: 20),),
          SizedBox(
            height: heightLess,
          ),
          dynamicGridView(),
        ],
      ),

    );
  }

  Widget dynamicGridView() {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
         gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
           childAspectRatio: 2
              ),
        itemCount: categoryList.length,
        //  itemCount: title.length,
        shrinkWrap: true,
        //  physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              TextButton(onPressed: (){},child: Container(    decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey.shade100
          ),

          borderRadius: BorderRadius.all(
       Radius.circular(5.0)),
          ),height: 40,child: Center(child: Text(categoryList[index],style: fontstyle(fontWeight: FontWeight.w700,color: Colors.grey),))))
            ],
          );
        }
    );
  }
}
