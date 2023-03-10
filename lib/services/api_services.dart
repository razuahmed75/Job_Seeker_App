import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:assignment/model/candidate_model.dart';
import 'package:assignment/model/profile_model.dart';
import 'package:assignment/view/bottom_nav/profile_screen/main_profile.dart';
import 'package:assignment/view/otp/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../key.dart';
import '../view/bottom_nav/BottomNavController.dart';

class ApiServices {
  static var baseUrl = "https://bringin.io/api";
  static var token;
  final box = GetStorage();

  // postOTP
  static Future postOtp(data, context, phoneController) async {
    final url = Uri.parse(baseUrl + "/sendOTP");
    final headers = {
      HttpHeaders.contentTypeHeader: "application/json",
    };

    final response =
        await http.post(url, headers: headers, body: jsonEncode(data));

    try {
      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: "SMS Submitted Successfully");
        var routes = MaterialPageRoute(
            builder: (_) => VerifyScreen(phoneNumber: phoneController));

        Navigator.of(context).push(routes);
      }
    } catch (e) {
      return Fluttertoast.showToast(msg: e.toString());
    }
  }

  // user logged in
  static Future<Candidate?> loggedInUser(data, context) async {
    Candidate? result;

    final url = Uri.parse(baseUrl + "/setLoginWithOTP");
    final headers = {
      HttpHeaders.contentTypeHeader: "application/json",
    };

    final response =
        await http.post(url, headers: headers, body: jsonEncode(data));

    try {
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        result = Candidate.fromJson(res);

        token = result.data.token;

        Fluttertoast.showToast(msg: "Success");
        var routes = MaterialPageRoute(builder: (_) => BottomNavPage());

        Navigator.of(context).push(routes);
      }
    } catch (e) {
      log(e.toString());
    }
    return result;
  }

  // update current user profile
  static Future updateCurrentUser(data, context) async {
    final url = Uri.parse(baseUrl + "/seekerProfileUpdate");
    final headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response =
        await http.post(url, headers: headers, body: jsonEncode(data));

    try {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("  updated value is $data");
        Fluttertoast.showToast(msg: "Successfully updated");
        var routes = MaterialPageRoute(builder: (_) => MainProfile());

        Navigator.of(context).push(routes);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  // fetch current user profile

  Future fetchUserData(context) async {
    final url = Uri.parse(baseUrl + "/getSeekerInfo");
    final headers = {
      'Authorization': 'Bearer $token',
    };

    final res = await http.get(
      url,
      headers: headers,
    );

    var response;
    if (res.statusCode == 200) {
      response = jsonDecode(res.body);

      GetUserData getUserData = GetUserData.fromJson(response["data"]);
      print("name is ${getUserData.name}");
      box.write(Keys.name, getUserData.name);
    }
  }
}
