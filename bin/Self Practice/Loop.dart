main(){

  /// For Loop Example for List

  List A = [
    '1234456',
    '2324234',
    '2342343',
    '2345444',
    '5454544'
  ];

  for(int i=0; i<A.length; i++){
  print(A[i]);}

  print('-----------------xxx----------------------');

  /// For Loop Example
  for(int i = 0; i<=5; i++){
    print(i);
  }

  print('-----------------xxx----------------------');

  /// For Loop Example [Break]
  for(int i = 0; i<=10; i++) {if (i> 5) {break;}
    print(i);
  }

print('-----------------xxx----------------------');
  
  /// For Loop Example [continue]
  for(int i = 0; i<=10; i++) {if (i< 5) {continue;}
  print(i);
  }

  print('-----------------xxx----------------------');

  /// For In Loop | Example 1

  List B = ['A','B','C','D','E'];

  for(var C in B){
    print(C);
  }

  print('-----------------xxx----------------------');
  /// For In Loop | Example 2

  List B1 = [
    '1234456',
    '2324234',
    '2342343',
    '2345444',
    '5454544'
  ];

  for(var C1 in B1){
    print(C1);
  }




}