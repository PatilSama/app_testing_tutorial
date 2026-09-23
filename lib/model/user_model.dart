class UserModel {
  final int id;
  final String name;

  const UserModel({required this.id,required this.name});

  factory UserModel.fromJson(Map<String,dynamic> data){
    return UserModel(id: data['id'] , name: data['name']);
  }

  Map<String,dynamic> toJson(){
    // first type for add data
    Map<String,dynamic> data = {'id':id,'name':name};
    // // Second type.
    // data['id']=id;
    // data['name'] = name;
    // // Third type
    // data = {'id':id,'name':name};
    // Forth type.
    // return {'id':id,'name':name};
    return data;
  }

  UserModel copyWith(int? id,String? name){
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }



}