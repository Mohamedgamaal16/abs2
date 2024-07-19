//TODO: add your model class here
class SchoolInfoModel {
  final String schoolName;
  final String schoolAddress;
  final String studentsNo;
  final String teachersNo;

  SchoolInfoModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.studentsNo,
    required this.teachersNo,
  });

  factory SchoolInfoModel.fromJson(Map<String, dynamic> json) {
    return SchoolInfoModel(
      schoolName: json['School Name'],
      schoolAddress: json['School Address'],
      studentsNo: json['Number of Students'],
      teachersNo: json['Number of Teachers'],
    );
  }
}
