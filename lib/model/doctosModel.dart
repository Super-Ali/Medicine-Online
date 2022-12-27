class DoctorModel{
  String? doc_name ;
  String ? doc_img;
  DoctorModel({this.doc_name,this.doc_img});
}
List<DoctorModel> doct_view=[
  DoctorModel(
doc_img: "assets/images/doctor1.jpg",
doc_name: "Bilal Nair"
  ),
   DoctorModel(
doc_img: "assets/images/doctor2.jpg",
doc_name: "Abdul Wahab"
  ),
   DoctorModel(
doc_img: "assets/images/doctor1.jpg",
doc_name: "Usama"
  ),
   DoctorModel(
doc_img: "assets/images/doctor2.jpg",
doc_name: "Israr Ali"
  ),
];