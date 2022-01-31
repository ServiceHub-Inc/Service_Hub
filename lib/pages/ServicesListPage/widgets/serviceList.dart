import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/pages/ServicesListPage/widgets/serviceListItem.dart';
import 'package:servicehub/provider/globals.dart';

class ServiceList extends StatefulWidget {
  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  List<PopularServiceDatum> services;

  @override
  void initState() {
    final _def = Provider.of<Globals>(context, listen: false);

    setState(() {
      services = _def.getServices;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ServicelistItem(
                service: services[index],
              );
            },
          
        ),
      ),
    );
  }
}
