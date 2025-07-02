/// Exception Handaling
/// try, catch, on , stack-trace, finally


main(){

  try {
    var result = 10 % 0;
    print(result);
  } on IntegerDivisionByZeroException{
    print('Your cannot do this ! ');
  }
  catch(e){
    print(e);
  }finally{
    print('All Time Executed');
  }

}