import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testpro/foodlist.dart';

import 'bloc/menu_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuBloc menuBloc = MenuBloc();
  List imgList = [
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0-s-P2f0LlKPTbnK3lxQiJgn6qOjojOlGzw&usqp=CAU',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShwUafCrdOE9r9QX_CHJaI2vHIjPVdDXWuiw&usqp=CAU',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMR5zYz3euyjVtHHEFf_TqtlyvoMvvWy2Ayg&usqp=CAU',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW1LLjQW7B1qxqdamE99UJoGmnVXlavokoRg&usqp=CAU',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2eKZ0ZxqFhptcrYsi91PGOwRnbBNTuX4CA&usqp=CAU',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBWHhtPg1hk16l37m88SqDvWL1piquHl8EuYGHmcT6VDEk7_XAyTZh5QCmPDGDUE31t2Y&usqp=CAU',
      fit: BoxFit.fill,
    )
  ];
  List soupList0 = [
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
  ];
  List soupList1 = [
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
  ];
  List soupList2 = [
    'assets/download (6).jpeg',
    'assets/images (21).jpeg',
  ];
  List soupList3 = [
    'assets/images (22).jpeg',
    'assets/download (7).jpeg',
  ];
  List soupList4 = [
    'assets/images (23).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
  ];
  List soupList5 = [
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
    'assets/images (24).jpeg',
  ];
  List<String> dishiname = [];
  List<String> dishimage = [];
  List<String> dishprice = [];
  List<String> dishdisc = [];
  List<String> dishavaila = [];
  List<String> dishcalorie = [];

  @override
  void initState() {
    menuBloc = BlocProvider.of<MenuBloc>(context);
    menuBloc.add(const MenuFetchEvent());
    super.initState();
  }

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
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMgFhQ_GVkjLMW5BLOYZ4szBM3IawLjW_wBQ&usqp=CAU",
                              width: 170,
                              height: 170,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 10,
                        top: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Discover And Get ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Great Food",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "We believe good",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "food",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "offer great smile",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 203, 194, 194),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Explore Top Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<MenuBloc, MenuState>(
                builder: (context, state) {
                  if (state is MenuLoaded) {
                    return Column(
                        children: List.generate(
                      state.menulist.length,
                      (index) => SizedBox(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 2 / 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 5),
                            shrinkWrap: true,
                            itemCount:
                                state.menulist[index].tableMenuList!.length,
                            itemBuilder: (BuildContext context, int index1) {
                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                      onTap: () {
                                        for (var i = 0;
                                            i <
                                                state
                                                    .menulist[index]
                                                    .tableMenuList![index1]
                                                    .categoryDishes!
                                                    .length;
                                            i++) {
                                          dishiname.add(state
                                              .menulist[index]
                                              .tableMenuList![index1]
                                              .categoryDishes![i]
                                              .dishName
                                              .toString());
                                          dishprice.add(state
                                              .menulist[index]
                                              .tableMenuList![index1]
                                              .categoryDishes![i]
                                              .dishPrice
                                              .toString());
                                          dishdisc.add(state
                                              .menulist[index]
                                              .tableMenuList![index1]
                                              .categoryDishes![i]
                                              .dishDescription
                                              .toString());
                                          dishavaila.add(state
                                              .menulist[index]
                                              .tableMenuList![index1]
                                              .categoryDishes![i]
                                              .dishAvailability
                                              .toString());
                                          dishcalorie.add(state
                                              .menulist[index]
                                              .tableMenuList![index1]
                                              .categoryDishes![i]
                                              .dishCalories
                                              .toString());
                                        }

                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    Foodlistpage(
                                                      dishname: dishiname,
                                                      dishimage: index1 == 0
                                                          ? soupList0
                                                          : index1 == 1
                                                              ? soupList1
                                                              : index1 == 2
                                                                  ? soupList2
                                                                  : index1 == 3
                                                                      ? soupList3
                                                                      : index1 ==
                                                                              4
                                                                          ? soupList4
                                                                          : soupList5,
                                                      dishprice: dishprice,
                                                      dishdisc: dishdisc,
                                                      dishavaila: dishavaila,
                                                      dishcalorie: dishcalorie,
                                                    )))
                                            .then((value) => dishiname.clear());
                                      },
                                      child: Container(
                                        height: 100,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: imgList[index1],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(state.menulist[index]
                                      .tableMenuList![index1].menuCategory
                                      .toString()),
                                ],
                              );
                            }),
                      ),
                    ));
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ));
  }
}
