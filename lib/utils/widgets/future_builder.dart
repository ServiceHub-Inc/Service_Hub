import 'package:flutter/material.dart';
import 'package:servicehub/utils/widgets/retry.dart';

class CustomFutureBuilder extends StatefulWidget {
  final Widget widget;
  final Widget loader;
  final Future data;
  final Function(dynamic) response;
  final bool rebuild;
  final Future reBuilddata;

  CustomFutureBuilder({
    @required this.widget,
    @required this.data,
    @required this.response,
    this.rebuild,
    this.reBuilddata,
    this.loader,
  });
  @override
  _CustomFutureBuilderState createState() => _CustomFutureBuilderState();
}

class _CustomFutureBuilderState extends State<CustomFutureBuilder> {
  Future _data;
  @override
  void initState() {
    _data = widget.data;

    _data.then((value) {
      if (value != null) {
        widget.response(value);
      } else {
        widget.response([]);
      }
    });
    super.initState();
  }

  _retry() {
    _data.then((value) {
      if (value != null) {
        setState(() {
          widget.response(value);
        });
      } else {
        setState(() {
          widget.response([]);
        });
      }
    });
  }

  setMe() {
    setState(() {
      _data = widget.reBuilddata;
    });
    _data.then((val) {
      if (val != null) {
        setState(() {
          widget.response(val);
        });
      } else {
        setState(() {
          widget.response([]);
        });
      }
    });
  }

  callMe() async {
    print("I am called ${widget.rebuild.toString()}");
    if (widget.rebuild != null) {
      if (widget.rebuild) {
        print("setting state");
        // setMe();
        if (widget.data != null) {
          await widget.data.then((value) {
            if (value != null) {
              setState(() {
                widget.response(value);
              });
            } else {
              setState(() {
                widget.response([]);
              });
            }
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    callMe();
    return FutureBuilder(
      future: _data,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.none ||
            snapshot.connectionState == ConnectionState.active ||
            snapshot.connectionState == ConnectionState.waiting) {
          return widget.loader;
        } else if (snapshot.connectionState == ConnectionState.done) {
          // print(snapshot.data);
          if (snapshot.hasError) {
            return Expanded(child: CustomError(retry: _retry));
          } else if (snapshot.data == null) {
            print('snapshot is null');
            return Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNoData(),
                ],
              ),
            );
          } else if (snapshot.data != null) {
            if (snapshot.data == []) {
              print('snapshot is empty');
              return Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomNoData(),
                  ],
                ),
              );
            } else {
              print("I have data future__, $_data");

              return widget.widget;
            }
          } else {
            return Expanded(child: CustomError(retry: _retry));
          }
        } else {
          return Expanded(child: CustomError(retry: _retry));
        }
      },
    );
  }
}
