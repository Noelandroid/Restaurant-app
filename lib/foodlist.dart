import 'package:flutter/material.dart';
import 'package:testpro/detailpage.dart';

class Foodlistpage extends StatefulWidget {
  final List<String> dishname;

  final List<dynamic> dishimage;
  final List<String> dishprice;

  final List<String> dishdisc;
  final List<String> dishavaila;
  final List<String> dishcalorie;
  // CategoryDish dishname;
  const Foodlistpage(
      {super.key,
      required this.dishname,
      required this.dishimage,
      required this.dishprice,
      required this.dishdisc,
      required this.dishavaila,
      required this.dishcalorie});

  @override
  State<Foodlistpage> createState() => _FoodlistpageState();
}

class _FoodlistpageState extends State<Foodlistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "UNI Resto Cafe",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        backgroundColor: const Color(0xffF6F6F6),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 5),
              shrinkWrap: true,
              itemCount: widget.dishname.length,
              itemBuilder: (BuildContext context, int index2) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Fooddetailpage(
                                    dishimage: widget.dishimage[index2],
                                    dishname:
                                        widget.dishname[index2].toString(),
                                    dishprice:
                                        widget.dishprice[index2].toString(),
                                    dishavaila:
                                        widget.dishavaila[index2].toString(),
                                    dishdisc:
                                        widget.dishdisc[index2].toString(),
                                    dishcalorie:
                                        widget.dishcalorie[index2].toString(),
                                  )));
                        },
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            widget.dishimage[index2].toString(),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.42,
                        child: Text(
                          widget.dishname[index2].toString(),
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
