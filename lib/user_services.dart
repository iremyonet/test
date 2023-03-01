import 'dart:convert';
import 'models/dataModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String url = "https://4001.hoteladvisor.net";
  Future<dataModel> fetchData() async {
    final response = await http.post(Uri.parse(url), headers: {
      "Accept": "Application/json"
    }, body: {
      "Action": "Select",
      "Object": "QA_EASYPMS_MEALCONTROL",
      "Select": [
        "ID",
        "DATE",
        "ADULT",
        "CHD1",
        "CHD2",
        "BABY",
        "BOARDTYPE",
        "ROOMNO",
        "ACCOMTYPE",
        "CHECKIN",
        "CHECKOUT",
        "RESSTATE",
        "AGENCYNAME",
        "NATIONALITY",
        "GUESTNAMES",
        "CHECKINDATE",
        "CHECKOUTDATE",
        "PAXBREAKFAST",
        "PAXLUNCH",
        "PAXDINNER",
        "HADBREAKFAST",
        "HADLUNCH",
        "HADDINNER",
        "ROOMCOUNT",
        "ROOMCOUNTTYPE"
      ],
      "Where": [
        {"Column": "ADULT", "Operator": ">", "Value": 0, "IsNull": 0},
        {"Column": "ROOMCOUNTTYPE", "Operator": "<", "Value": 3, "IsNull": 0},
        {"Column": "DATE", "Operator": "=", "Value": "2023-03-01"},
        {"Column": "HOTELID", "Operator": "=", "Value": 24204}
      ],
      "OrderBy": [
        {"Column": "ROOMNO", "Direction": "ASC"}
      ],
      "Paging": {"Current": 1, "ItemsPerPage": 10000},
      "Joins": [],
      "LoginToken":
      "b72ffb0cb651c423b71f704e8b235d946de6c987e47d6d51a754ab3f45797d335a23b4badb7b2747a9370c9d89ba4135358aac9f187f4eecba9734bc348d9a666626d2387e9d8a69f8eeffaca0d4e9438d9170c0a304786a65aef88ce1585656873c9977d0a0aa0323d267705f5ca739b770cda1457831d372fe49b3858b998ef30e0cbc1fae3356bf880cf7a5adfc5d85531a72e88d3218e7d58cdd26c52ead73befceb6f46afaba81f9ca75a1f91ec0dc2d19fe4b495a0e3323835995cf3526103fe55e63d667f81f8b17958e7efcda17ba13162977ab00c798d04be030a85"
    });
    print('Body: ${response.body}');
    var convertedDatatoJson=jsonDecode(response.body);

    return convertedDatatoJson;
  }

}
