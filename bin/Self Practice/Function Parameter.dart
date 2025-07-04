String checkBalance(int balance){
  if(balance > 0){
    return"Balance is Helthy";
  }else{
    return"Balance Poor";
  }
}

main(){
  print(checkBalance(500));
}