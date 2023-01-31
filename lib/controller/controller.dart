import 'package:assignment/model/candidate_model.dart';
import 'package:assignment/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiController extends ChangeNotifier {
  bool _isLoading = false;
  bool _isBack = false;

  get isBack => _isBack;
  get isLoading => _isLoading;

  // verify with otp
  Future<void> postData(body, context, controller) async {
    _isLoading = true;
    notifyListeners();

    await ApiServices.postOtp(body, context, controller);
    _isLoading = false;

    notifyListeners();
  }

  // user logged in
  Candidate? candidate;
  Future<void> loggedInData(body, context) async {
    _isLoading = true;
    notifyListeners();

    candidate = await ApiServices.loggedInUser(body, context);
    _isLoading = false;

    notifyListeners();
  }

  // updata current user infromation
  // Future<void> updataUser(body, context) async {
  //   _isLoading = true;
  //   await ApiServices.updateCurrentUser(body, context);
  //   _isLoading = false;

  //   notifyListeners();
  // }

  // fetch data of current user
  // GetUserData? userData;
  // Future<void> getUser(context) async {
  //   _isLoading = true;
  //   notifyListeners();

  //   userData = await ApiServices.fetchUserData(context);
  //   _isLoading = false;

  //   notifyListeners();
  // }

  Future setToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString("token", candidate!.data.token);
  }

  var token;
  getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString("token");
    return getToken;
  }

  /// imagePicker
  dynamic get image => _image;

  var _image;

  /// from camera
  Future imagePickerFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      this._image = image.path;
      // uploadImage();
      notifyListeners();
    }
  }

  /// from gallery
  Future imagePickerFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    if (image != null) {
      this._image = image.path;
      // uploadImage();
      notifyListeners();
    }
  }

  /// bottomSheet
  showBottomSheet({
    required context,
  }) {
    // var controller = ScrollController();
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        elevation: 15,
        context: context,
        builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.2,
            maxChildSize: 0.6,
            expand: false,
            snap: true,
            builder: (_, controller) => SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      Icon(Icons.remove),
                      ListTile(
                        onTap: () {
                          imagePickerFromGallery();

                          Navigator.pop(context);
                        },
                        leading: Icon(Icons.collections),
                        title: Text("Open Gallery"),
                      ),
                      ListTile(
                        onTap: () {
                          imagePickerFromCamera();
                          Navigator.pop(context);
                        },
                        leading: Icon(Icons.camera),
                        title: Text("Open Camera"),
                      ),
                    ],
                  ),
                )));
  }
}
