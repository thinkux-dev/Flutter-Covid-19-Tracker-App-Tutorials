import 'package:covid_tracker/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases, totalRecovered, totalDeaths, active, critical, todayRecovered, test;
  DetailScreen({
    required this.name,
    required this.image,
    required this.totalCases,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.totalRecovered,
    required this.totalDeaths,
    required this.test,
    super.key,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * .06),
                      ReuseableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReuseableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReuseableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                      ReuseableRow(title: 'Critical', value: widget.critical.toString()),
                      ReuseableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
