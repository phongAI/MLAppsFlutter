import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
const defaultImageLink = "assets/images";
// const functionList = [
// {
//   "image_classification":"$defaultImageLink/image_classification.png",
//   "object_detection":"$defaultImageLink/object_detection.png",
// }
// ];
final headerStyle1 = GoogleFonts.lato(
  color: Colors.white,
  fontSize: 24,

);
final textStyle1 = GoogleFonts.lato(
  color: Colors.black,
  fontSize: 10,

);
const functionList = {
  "Image Generative":"$defaultImageLink/image_generative.png",
  "Object Detection":"$defaultImageLink/object_detection.png",
  "Face Recognition":"$defaultImageLink/face_recognition.gif",
  "Motion Tracking":"$defaultImageLink/motion_tracking.gif",
};