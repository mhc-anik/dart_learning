void main(){

  var orderList = [
    {'Name' : 'Anik', 'Amount':500, 'Address': 'Uttara'},
    {'Name' : 'Rumi', 'Amount':1000, 'Address': 'Hobigonj'},
    {'Name' : 'Manha', 'Amount':1500, 'Address': 'Adaoir'},
    {'Name' : 'Isna', 'Amount':2000, 'Address': 'Madhabpur'},
    {'Name' : 'Abit', 'Amount':2500, 'Address': 'Malai'},
  ];

  int totalOrderAmout = 0;


  for (var order in orderList) {
    totalOrderAmout +=order['Amount'] as int;
    print('Order Amount : ${order['Amount']}');
  }
  
  print('Total Order Amount : $totalOrderAmout');

}