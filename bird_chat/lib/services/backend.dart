import 'dart:convert';


class NotOverwritten implements Exception {
  String cause;
  NotOverwritten(this.cause);
}


abstract class Serializable{

  Map<String, dynamic> toJson(){
    throw new NotOverwritten("fromJason Method must be Overwritten");
    
  }

}

class HTMLHandler{

  static final HTMLHandler _singleton = HTMLHandler._internal();

  factory HTMLHandler() {
    return _singleton;
  }

  HTMLHandler._internal();
  
  
  send(Serializable a){
    var json = jsonEncode(a.toJson());
    print("sending json\n");
    print(json);
  }

  Serializable get(){
    //TODO
  }

}