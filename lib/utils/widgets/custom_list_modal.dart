import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servicehub/models/mini_models.dart';
import 'package:servicehub/utils/constants.dart';
import 'package:servicehub/utils/widgets/selection_modal.dart';

class CustomListModal extends StatefulWidget {
  final String label;
  final ListOfItemsModel defaultVal;
  final List<ListOfItemsModel> list;
  final Function(ListOfItemsModel) onSelected;

  const CustomListModal(
      {Key key, this.label, this.list, this.onSelected, this.defaultVal})
      : super(key: key);
  @override
  _CustomListModalState createState() => _CustomListModalState();
}

class _CustomListModalState extends State<CustomListModal> {
  String tempTitle = "";
  ListOfItemsModel selected;
  @override
  void initState() {
    super.initState();
    if (widget.defaultVal != null) {
      selected = widget.defaultVal;
      tempTitle = selected.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    if (widget.defaultVal != null) {
      selected = widget.defaultVal;
      tempTitle = selected.id;
    }

    return InkWell(
      onTap: () {
        //print("DIALOG");
        showSelectionModal(
          context: context,
          children: widget.list,
          initialIndex: tempTitle,
          title: "",
          onChanged: (val) {
            setState(() {
              tempTitle = val.id;
              selected = val;
              widget.onSelected(selected);
            });
          },
        );
      },
      child: Container(
        child: selected != null
            ? ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: _screenHeight * 0.002,
                  horizontal: _screenWidth * 0.03,
                ),
                leading: selected.logo != null
                    ? PhysicalModel(
                        color: Colors.transparent,
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          height: _screenHeight * 0.03,
                          width: _screenWidth * 0.085,
                          decoration: BoxDecoration(
                          
                            image: DecorationImage(
                              image: selected.logo.length > 50
                                  ? MemoryImage(base64Decode(selected.logo))
                                  : AssetImage(selected.logo),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      )
                    : selected.icon != null
                        ? Icon(
                            selected.icon,
                            color: Constants.mainColor,
                            size: 22,
                          )
                        : null,
                title: Text(
                  selected == null
                      ? ""
                      : selected.name == null
                          ? ""
                          : selected.name.toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(CupertinoIcons.chevron_down),
              )
            : Container(
                padding: EdgeInsets.symmetric(
                  vertical: _screenHeight * 0.015,
                  horizontal: _screenWidth * 0.03,
                ),
                decoration: BoxDecoration( border: Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey.shade600),
                            ),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.label,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15.0,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      color: Colors.grey[500],
                      size: 23.0,
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
