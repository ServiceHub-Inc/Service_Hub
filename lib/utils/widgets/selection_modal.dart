import 'dart:convert';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flappy_search_bar_ns/search_bar_style.dart';
import 'package:flutter/cupertino.dart' show showCupertinoModalPopup;
import 'package:flutter/material.dart';
import 'package:servicehub/models/mini_models.dart';
import 'package:servicehub/utils/constants.dart';

class SelectionModal extends StatefulWidget {
  final String title;
  final String initialIndex;
  final List<ListOfItemsModel> children;
  // final List<String> children;
  final ValueChanged<dynamic> onChanged;
  SelectionModal(
      {this.children, this.initialIndex, this.onChanged, this.title});

  @override
  _SelectionModalState createState() => _SelectionModalState();
}

class _SelectionModalState extends State<SelectionModal> {
  // String selectedIndex ;
  final SearchBarController<dynamic> _searchBarController =
      SearchBarController();
  bool isReplay = false;
  // List<LovModels> trans = [];
  Future<List<dynamic>> _getAlldata(String text) async {
    await Future.delayed(Duration(seconds: text.length == 1 ? 10 : 1));
    // final transData = Provider.of<Data>(context, listen: false);
    List<dynamic> searchtrans = [];
    for (var i = 0; i < widget.children.length; i++) {
      if (
          // trans[i].dbAccName == text
          widget.children[i].name
              .contains(RegExp(text, caseSensitive: false))) {
        searchtrans.add(widget.children[i]);
      }
    }
    return searchtrans;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print("initial val----> ${widget.initialIndex}");

    return SafeArea(
      bottom: false,
      child: Material(
        child: Container(
          // height: MediaQuery.of(context).size.height / 2,
          color: Colors.white,
          padding: EdgeInsets.only(top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SearchBar<dynamic>(
                    minimumChars: 1,
                    shrinkWrap: true,
                    hintText: "Search by name",
                    iconActiveColor: Constants.mainColor,
                    loader: Center(child: CircularProgressIndicator()),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    searchBarStyle: SearchBarStyle(
                      padding: EdgeInsets.zero,
                      backgroundColor: Constants.mainColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
                    headerPadding: EdgeInsets.symmetric(horizontal: 10),
                    listPadding: EdgeInsets.symmetric(horizontal: 10),
                    onSearch: _getAlldata,
                    searchBarController: _searchBarController,
                    placeHolder: ModalListWigdet(
                      children: widget.children,
                      onChanged: widget.onChanged,
                      title: widget.title,
                      initialValue: widget.initialIndex,
                    ),
                    cancellationWidget: Text("Cancel"),
                    emptyWidget: Center(
                        child: Text(
                      "No item found",
                      style: TextStyle(color: Colors.black),
                    )),
                    onCancelled: () {
                      //print("Cancelled triggered");
                    },
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 1,
                    onItemFound: (val, index) {
                      bool selected =
                          widget.initialIndex.trim() == val.id.trim();
                      //print("__ $selected");
                      //print("__ ${widget.initialIndex}");
                      //print("__ ${val.name}");
                      return InkWell(
                        onTap: () {
                          setState(() {
                            widget.onChanged(val);
                            Navigator.pop(context);
                            FocusScope.of(context).unfocus();
                          });
                        },
                        child: selectionItem(val, selected, context),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Constants.mainColor,
                padding: EdgeInsets.all(2.5),
                child: SafeArea(
                  child: RaisedButton(
                    elevation: 0,
                    highlightElevation: 0,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Constants.mainColor,
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                        letterSpacing: 0.5,
                      ),
                    ),
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

Future<void> showSelectionModal({
  String title,
  @required String initialIndex,
  @required BuildContext context,
  @required List<ListOfItemsModel> children,
  @required ValueChanged<dynamic> onChanged,
}) async {
  return await showCupertinoModalPopup(
    context: context,
    //filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    builder: (context) {
      return SelectionModal(
        title: title,
        initialIndex: initialIndex,
        onChanged: onChanged,
        children: children,
      );
    },
  );
}

Widget selectionItem(
    ListOfItemsModel item, bool selected, BuildContext context) {
  double _screenHeight = MediaQuery.of(context).size.height;
  double _screenWidth = MediaQuery.of(context).size.width;

  return Container(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    decoration: BoxDecoration(
      color: selected ? Colors.blue.shade50 : null,
    ),
    child: Row(
      children: [
        if (item.logo != null) ...[
          PhysicalModel(
            color: Colors.transparent,
            elevation: 2.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              height: _screenHeight * 0.04,
              width: _screenWidth * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: item.logo.length > 50
                      ? MemoryImage(base64Decode(item.logo))
                      : AssetImage(item.logo),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(width: 15.0),
        ] else if (item.icon != null) ...[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(item.icon, color: Constants.mainColor, size: 23),
          )
        ],
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name ?? "N/A",
                style: TextStyle(
                  fontSize: 15.0,
                  color: selected ? Constants.mainColor.withOpacity(0.4) : null,
                  fontWeight: selected ? FontWeight.bold : null,
                ),
              ),
              if (item.secondLabel != null) ...[
                Text(
                  item.secondLabel ?? "N/A",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: selected ? Constants.mainColor.withOpacity(0.4) : Colors.grey.shade500,
                    fontWeight: selected ? FontWeight.bold : null,
                  ),
                ),
              ]
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        if (selected) ...[
          Icon(
            Icons.done,
            color: Colors.blue,
            size: 20,
          ),
        ],
      ],
    ),
  );
}

class ModalListWigdet extends StatefulWidget {
  final String title;
  final String initialValue;
  final List<ListOfItemsModel> children;
  // final List<String> children;
  final ValueChanged<dynamic> onChanged;
  ModalListWigdet(
      {this.children, this.onChanged, this.title, this.initialValue});
  @override
  _ModalListWigdetState createState() => _ModalListWigdetState();
}

class _ModalListWigdetState extends State<ModalListWigdet> {
  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(widget.title),
          ),
          SizedBox(height: 30),
        ],
        Flexible(
          fit: FlexFit.loose,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.children.length,
            itemBuilder: (context, index) {
              bool selected = widget.initialValue == widget.children[index].id;
              return InkWell(
                onTap: () {
                  // setState(() {
                  //   selectedIndex = index;
                  // });
                  widget.onChanged(widget.children[index]);
                  Navigator.pop(context);
                },
                child: selectionItem(widget.children[index], selected, context),
              );
            },
          ),
        ),
      ],
    );
  }
}
