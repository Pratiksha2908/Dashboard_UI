import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Dashboard();
                }));
              },
            ),
            ListTile(
              title: Text('Profile'),
            ),
            ListTile(
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Cardcontainer(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 5.0, left: 8.0, right: 8.0),
                colorcontainer1: Color(0xffe0f7fa),
                image: 'images/Group.png',
                info: "22 Oct '\20 - 23 Oct '\20",
                title: "Trips",
                infoColor: Colors.blue,
                colorcontainer2: Color(0xffe0ffff),
                statusone: "Completed",
                number1: "1",
                number2: "1",
                statustwo: "Incomplete",
                number3: "5",
                statusthree: "Upcoming",
                number4: "5",
                statusfour: "Unsettled",
              ),
              Cardcontainer(
                padding:
                const EdgeInsets.only(bottom: 5.0, left: 8.0, right: 8.0),
                colorcontainer1: Color(0xffe0f2f1),
                image: 'images/Group 1467.png',
                info: "22 Oct '\20 - 23 Oct '\20",
                title: "Stock Keeping Units",
                infoColor: Colors.green,
                colorcontainer2: Color(0xffF2F9F9),
                number1: "1,180",
                statusone: "Loaded",
                number2: "1,280",
                statustwo: "To vendor",
                number3: "1,080",
                statusthree: "From vendor",
                number4: "10,180",
                statusfour: "Unsettled",
              ),
              Cardcontainer(
                padding:
                const EdgeInsets.only(bottom: 5.0, left: 8.0, right: 8.0),
                colorcontainer1: Colors.orange.shade50,
                image: 'images/Group 1471.png',
                info: "22 Oct '\20",
                title: "Stock Information",
                infoColor: Colors.yellow.shade700,
                colorcontainer2: Color(0xffFFEFE8),
                number1: "150",
                statusone: "150",
                number2: "",
                statustwo: "",
                number3: "12,000",
                statusthree: "Returned by vendor",
                number4: "₹11,080",
                statusfour: "Unsettled",
              ),
              Cardcontainer(
                padding:
                const EdgeInsets.only(bottom: 5.0, left: 8.0, right: 8.0),
                colorcontainer1: Color(0xffFFECF5),
                image: 'images/Group 1469.png',
                info: "22 Oct '\20",
                title: "Payments",
                infoColor: Colors.pink.shade300,
                colorcontainer2: Color(0xffFFF9FC),
                number1: "₹11,080",
                statusone: "Actual order value",
                number2: "",
                statustwo: "",
                number3: "₹11,080",
                statusthree: "Collected",
                number4: "₹11,080",
                statusfour: "Unsettled",
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 5.0, left: 8.0, right: 8.0),
                child: Card(
                  elevation: 3.0,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.blue.shade50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            bottom: 3.0,
                                            right: 8.0,
                                            top: 10.0),
                                        child: Image.asset(
                                          'images/Group.png',
                                          width: 25.0,
                                          height: 25.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8.0,
                                            bottom: 3.0,
                                            top: 10.0),
                                        child: Image.asset(
                                          'images/Group 1467.png',
                                          width: 25.0,
                                          height: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8.0,
                                            bottom: 10.0),
                                        child: Image.asset(
                                          'images/Group 1471.png',
                                          width: 25.0,
                                          height: 25.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8.0,
                                            bottom: 10.0),
                                        child: Image.asset(
                                          'images/Group 1469.png',
                                          width: 25.0,
                                          height: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Info("24 Jan '\20", "All in trip",
                                    Colors.green.shade500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cardcontainer extends StatelessWidget {
  final EdgeInsets padding;
  final Color colorcontainer1;
  final Color colorcontainer2;
  final String image;
  final String info;
  final Color infoColor;
  final String statusone;
  final String statustwo;
  final String statusthree;
  final String statusfour;
  final String title;
  final String number4;
  final String number1;
  final String number2;
  final String number3;
  const Cardcontainer({
    Key key,
    this.padding,
    this.colorcontainer1,
    this.colorcontainer2,
    this.image,
    this.info,
    this.title,
    this.infoColor,
    this.statusone,
    this.statustwo,
    this.statusthree,
    this.statusfour,
    this.number1,
    this.number2,
    this.number3,
    this.number4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        elevation: 3.0,
        child: Column(
          children: [
            Container(
              color: colorcontainer1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(image),
                    ),
                    Info(info, title, infoColor),
                  ],
                ),
              ),
            ),
            Container(
              color: colorcontainer2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Status_One(
                      number1,
                      statusone,
                    ),
                    Status_Two(number2, statustwo),
                    Status_Three(number3, statusthree),
                    Status_Four(number4, statusfour),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final String date;
  final String title;
  final Color colour;

  Info(this.date, this.title, this.colour);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: TextStyle(color: colour, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class Status_One extends StatelessWidget {
  final String num;
  final String status;

  Status_One(this.num, this.status);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          status,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class Status_Two extends StatelessWidget {
  final String num;
  final String status;

  Status_Two(this.num, this.status);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
              color: Colors.pink.shade200, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(status, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}

// ignore: camel_case_types
class Status_Three extends StatelessWidget {
  final String num;
  final String status;

  Status_Three(this.num, this.status);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
              color: Colors.yellow.shade600, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(status, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}

// ignore: camel_case_types
class Status_Four extends StatelessWidget {
  final String num;
  final String status;

  Status_Four(this.num, this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            num,
            style: TextStyle(
                color: Colors.orange.shade500, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(status, style: TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
