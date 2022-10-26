import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/models/area.dart';

class Client {
  final Area area;
  final Street street;
  final House house;
  final Entrance entrance;
  final Flat flat;
   
  Client({
    required this.area,
    required this.street,
    required this.house,
    required this.entrance,
    required this.flat,
 
  });
}
