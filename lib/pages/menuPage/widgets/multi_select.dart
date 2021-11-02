import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final kInputLabelStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: Colors.grey[700],
);

final kDropdownHeaderStyle = TextStyle(
  color: Colors.grey[700],
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
);

final kDropdownItemStyle = TextStyle(
  color: Colors.grey[700],
  fontSize: 17.0,
  fontWeight: FontWeight.w400,
);

class SearchBar extends StatelessWidget {
  final searchController;
  final callback;
  final double width;
  final Color color;

  const SearchBar(
      {Key key, this.searchController, this.callback, this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 6.5, top: 0.0, bottom: 0.0),
      width: width != null ? width : double.infinity,
      decoration: BoxDecoration(
        color: color != null ? color : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(35.0),
        ),
      ),
      child: TextField(
        controller: searchController,
        keyboardType: TextInputType.text,
        // style: TextStyle(fontSize: 14.0),
        onChanged: (String value) => callback(value),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search .....",
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14.0),
          suffixIcon: Icon(CupertinoIcons.search, size: 22.0),
        ),
      ),
    );
  }
}

class CustomMultiSelect extends StatefulWidget {
  final String description;
  final value;
  final List<dynamic> items;

  const CustomMultiSelect({Key key, this.description, this.items, this.value})
      : super(key: key);
  @override
  CustomMultiSelectState createState() => CustomMultiSelectState();
}

class CustomMultiSelectState extends State<CustomMultiSelect> {
  double _screenHeight;
  double _screenWidth;
  var selectedItems = new Set<dynamic>();
  List<dynamic> filteredItems = [];
  String searchTerm;

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    filteredItems = widget.items;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.grey[200],
              width: 1.0,
            ),
          ),
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.description} : ",
            // textAlign: TextAlign.left,
            style: kInputLabelStyle,
          ),
          SizedBox(height: _screenHeight * 0.025),
          Wrap(
            children:
                selectedItems.toList().map((e) => selectedItemChip(e)).toList(),
            direction: Axis.horizontal,
            spacing: _screenWidth * 0.02,
            runSpacing: _screenHeight * 0.008,
          ),
          SizedBox(height: _screenHeight * 0.025),
          MultipleSelectionModal(
            selected: selectedItems,
            items: widget.items,
            description: widget.description,
            onSelect: (val) {
              setState(() {
                selectedItems = val;
              });
            },
          )
        ],
      ),
    );
  }

  Widget selectedItemChip(item) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item.serviceTitle.toString().toUpperCase(),
            style: kInputLabelStyle,
          ),
          SizedBox(width: _screenWidth * 0.02),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItems.remove(item);
              });
            },
            child: Icon(
              CupertinoIcons.multiply_circle_fill,
              color: Colors.grey[700],
            ),
          )
        ],
      ),
    );
  }
}

class MultipleSelectionModal extends StatefulWidget {
  final List<dynamic> items;
  final String description;
  final Function(Set<dynamic>) onSelect;
  final Set<dynamic> selected;

  MultipleSelectionModal(
      {Key key,
      @required this.items,
      @required this.onSelect,
      this.description,
      this.selected})
      : super(key: key);

  @override
  _MultipleSelectionModalState createState() => _MultipleSelectionModalState();
}

class _MultipleSelectionModalState extends State<MultipleSelectionModal> {
  String searchTerm;

  List<dynamic> filteredItems = [];

  TextEditingController searchController;

  var selectedItems = new Set<dynamic>();

  @override
  void initState() {
    selectedItems = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    filteredItems = widget.items;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return SimpleDialog(
                    title: Text(
                      widget.description != null
                          ? widget.description
                          : 'Select Options',
                      textAlign: TextAlign.center,
                      style: kDropdownHeaderStyle,
                    ),
                    titlePadding: EdgeInsets.symmetric(vertical: 20.0),
                    contentPadding: EdgeInsets.all(10.0),
                    children: [
                      SizedBox(height: _screenHeight * 0.01),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SearchBar(
                          width: _screenWidth * 0.88,
                          color: Colors.grey[100],
                          searchController: searchController,
                          callback: (value) {
                            setState(() {
                              searchTerm = value;
                              filteredItems = widget.items
                                  .where(
                                    (item) => item
                                        .toString()
                                        .toLowerCase()
                                        .contains(value.toLowerCase()),
                                  )
                                  .toList();
                            });
                          },
                        ),
                      ),
                      SizedBox(height: _screenHeight * 0.01),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                        height: 5.0,
                      ),
                      SizedBox(height: _screenHeight * 0.015),
                      Column(
                        children: filteredItems
                            .map(
                              (e) => Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    print("selected = ${e.toString()}");
                                    setState(
                                      () {
                                        selectedItems.contains(e)
                                            ? selectedItems.remove(e)
                                            : selectedItems.add(e);
                                        widget.onSelect(selectedItems);
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 60,
                                            margin:
                                                EdgeInsets.only(right: 12.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(e.imageUrl),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  e.serviceTitle
                                                      .toString()
                                                      .toUpperCase(),
                                                  style: kDropdownItemStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        selectedItems.contains(e)
                                            ? Icon(
                                                CupertinoIcons.check_mark,
                                                color: Colors.green[300],
                                              )
                                            : Text(''),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: _screenHeight * 0.055),
                      GestureDetector(
                        onTap: () {
                          print(selectedItems);
                          widget.onSelect(selectedItems);
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 20.0,
                          ),
                          child: Text(
                            'Close',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: _screenHeight * 0.02),
                    ],
                  );
                },
              );
            },
          );
        },
        child: Container(
          width: _screenWidth * 0.95,
          height: _screenHeight * 0.045,
          // color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.description != null
                          ? 'Select ${widget.description}'
                          : 'Select Options',
                      style: kInputLabelStyle,
                    ),
                    SizedBox(width: _screenWidth * 0.2),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[500],
                      size: 27.0,
                    ),
                  ],
                ),
              ),
              // SizedBox(width: _screenHeight * 0.015),
              Container(
                height: 1.0,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
