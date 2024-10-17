import 'package:buenavista/system/global_var.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db=FirebaseFirestore.instance;
Future <List> getHabitaciones() async{
  List habitaciones=[];
  CollectionReference collectionReferenceHabitacion=db.collection(DBTablaHabitacion.nombreTabla);
  QuerySnapshot queryhabitacion=await collectionReferenceHabitacion.get();
  queryhabitacion.docs.forEach((documento){
    habitaciones.add(documento.data());
  });
  return habitaciones;
}