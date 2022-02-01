
import 'package:flutter/material.dart';

class ListOfItemsModel {
  final String id;
  final String name;
  final String value;
  final String logo;
  final IconData icon;
  final String data1;
  final String data2;
  final String data3;
  final String secondLabel;
  final dynamic data4;

  ListOfItemsModel({
    this.icon,
    this.id,
    this.name,
    this.value,
    this.logo,
    this.data1,
    this.data2,
    this.data3,
    this.secondLabel,
    this.data4,
  });

  // factory ListOfItemsModel.fromQuestion(SecQuestionsList question) =>
  //     ListOfItemsModel(
  //       value: question.qCode,
  //       name: question.qDescription,
  //       id: question.qCode,
  //     );

  // factory ListOfItemsModel.fromBranch(BranchData branch) => ListOfItemsModel(
  //       value: branch.branchCode,
  //       name: branch.branchDescription,
  //       id: branch.branchCode,
  //       icon: Icons.account_balance,
  //     );

  // factory ListOfItemsModel.fromLoanProduct(LoanProductDatum branch) =>
  //     ListOfItemsModel(
  //       value: branch.code,
  //       name: branch.name,
  //       id: branch.code,
  //       icon: Icons.account_balance,
  //     );

  // factory ListOfItemsModel.fromList(List<String> list) => ListOfItemsModel(
  //       value: list[0],
  //       name: list[1],
  //       id: list[0],
  //       icon: Icons.account_balance,
  //     );
}
