main(){

  String connection = 'disconnected';

  switch(connection){
    case'connected':
      print("Connected");
    case'disconnected':
      print('disconnected');
    case'waiting':
      print('waiting');
    default:
      print('In Valid Value');
  }



}