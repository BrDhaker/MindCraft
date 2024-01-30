import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/custom/main_logo/main_logo_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainLogo component.
  late MainLogoModel mainLogoModel;
  // State field(s) for nom widget.
  TextEditingController? nomController;
  String? Function(BuildContext, String?)? nomControllerValidator;
  // State field(s) for prenom widget.
  TextEditingController? prenomController;
  String? Function(BuildContext, String?)? prenomControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for confimPassword widget.
  TextEditingController? confimPasswordController;
  late bool confimPasswordVisibility;
  String? Function(BuildContext, String?)? confimPasswordControllerValidator;
  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for etablissement widget.
  String? etablissementValue;
  FormFieldController<String>? etablissementValueController;
  // State field(s) for niveau widget.
  String? niveauValue;
  FormFieldController<String>? niveauValueController;
  // State field(s) for subscription widget.
  String? subscriptionValue;
  FormFieldController<List<String>>? subscriptionValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
    passwordVisibility = false;
    confimPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    mainLogoModel.dispose();
    nomController?.dispose();
    prenomController?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    confimPasswordController?.dispose();
    phoneNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
