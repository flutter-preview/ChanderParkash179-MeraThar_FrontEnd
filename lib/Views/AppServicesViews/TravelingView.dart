import 'package:flutter/material.dart';
import 'package:front_app/Model/TravelingModel/Vehilce.dart';
import 'package:front_app/Service/TravelingService.dart';
import 'package:front_app/Utils/Utils.dart';
import 'package:front_app/Widgets/CommonWidgets.dart';
import 'package:front_app/Widgets/GlassBox.dart';
import 'package:url_launcher/url_launcher.dart';

class TravelingView extends StatefulWidget {
  final String? cityName;

  TravelingView({this.cityName});

  @override
  State<TravelingView> createState() => _TravelingViewState();
}

class _TravelingViewState extends State<TravelingView> {
  final TravelingService service = TravelingService();
  late Future<Response> _future;

  @override
  void initState() {
    super.initState();
    _future = service.getVehiclesByCityName(widget.cityName.toString());
  }

  @override
  Widget build(BuildContext context) {
    final Padding? padding;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Utils.traveling.toUpperCase(),
            style: TextStyle(
                letterSpacing: 1.2,
                fontSize: Utils.size_18,
                fontWeight: FontWeight.bold,
                color: Color(Utils.colorWhite)),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(Utils.primaryColor),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(Utils.primaryColor),
                  Color(Utils.secondaryColor),
                ],
              ),
            ),
            child: FutureBuilder<Response>(
              future: _future,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasData) {
                  final responseData = snapshot.data!.responseData;
                  return ListView.builder(
                    itemCount: responseData.vehicles.length,
                    itemBuilder: (context, index) {
                      final restaurant = responseData.vehicles[index];
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Utils.size_06),
                        child: Column(
                          children: [
                            GlassBox(
                              padding: Padding(
                                padding: EdgeInsets.all(Utils.size_12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonWidgets().verticalSize(Utils.size_10),
                                    Text(
                                      restaurant.name.toString(),
                                      style: TextStyle(
                                          color: Color(Utils.colorWhite),
                                          fontSize: Utils.size_16),
                                    ),
                                    CommonWidgets().verticalSize(Utils.size_10),
                                    Text(
                                      restaurant.phone.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(Utils.colorWhite),
                                          fontSize: Utils.size_14),
                                    ),
                                    CommonWidgets().verticalSize(Utils.size_10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Utils.size_04,
                                            vertical: Utils.size_12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: Utils.size_14,
                                                color: Color(Utils.colorWhite),
                                              ),
                                              CommonWidgets().horizontalSize(
                                                  Utils.size_04),
                                              Text(
                                                restaurant.rating.toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color:
                                                        Color(Utils.colorWhite),
                                                    fontSize: Utils.size_14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CommonWidgets()
                                            .horizontalSize(Utils.size_10),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Utils.size_04,
                                            vertical: Utils.size_12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CommonWidgets().verticalSize(Utils.size_10),
                            Divider(
                              thickness: 1,
                              height: 1,
                              color: Color(Utils.colorOrange),
                              indent: Utils.size_50,
                              endIndent: Utils.size_50,
                            ),
                            CommonWidgets().verticalSize(Utils.size_10),
                          ],
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                        'Error: ${snapshot.error} : cityName: ${widget.cityName.toString()}'),
                  );
                } else {
                  return const Center(
                    child: Text('No data available.'),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
