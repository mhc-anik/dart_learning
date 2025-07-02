
int number (int a, int b) => a+b;

String grade(int marks) =>
  marks >= 80 ? 'A+':
  marks >= 70 ? 'A':
  marks >= 60 ? 'A-': 'F';

createBankAccount(String name, int NID, int phoneNumber, String address){
  print("$name Your Account Number : 121 212 220");
}


main(){
  print('A+B : ${number(10, 20)}');
  print('C+D : ${number(30, 20)}');
  print('Marks : ${grade(80)}');
  print(createBankAccount('Anik', 121, 121, 'Uttara'));

}


