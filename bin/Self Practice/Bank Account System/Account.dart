class Account{
  String accountNumber;
  String accountHolderName;
  double balance;
  List<String> transactionHistory = [];

  Account(this.accountNumber,this.accountHolderName,this.balance){
    transactionHistory.add("Account created with initial balance : $balance");
  }

  void deposit(double amount){
    if (amount > 0){
      balance += amount;
      transactionHistory.add("Deposited Amount BDT : $amount");
      print("$amount BDT added, New Balance BDT : $balance");
    }else{
      print("Invalid Amount");
    }
  }

  void withdraw(double amount){
    if(amount > 0 && amount <= balance){
      balance -= amount;
      transactionHistory.add("Withdraw Amount BDT : $amount");
      print("$amount is withdraw, New Balane is $balance");
    }else{
      print("You have not enough balance");
    }
  }

  void displayBalance(){
    print("Account Holder : $accountHolderName");
    print("Current Balance :$balance");
}

  void displayTrasction(){
    print("\nTrasction Histry :");
    for (var trasaction in transactionHistory){
      print(trasaction);
    }
  }

}
