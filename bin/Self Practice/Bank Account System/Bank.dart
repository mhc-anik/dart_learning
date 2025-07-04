import 'Account.dart';

class Bank{
  
  Map<String, Account> accounts = {};
  
  void addAccount (Account account){
    accounts[account.accountNumber] = account;
    print("Account Created Sucessfully");
  }

  void removeAccount(String accountNumber){
    if(accounts.containsKey(accountNumber)){
      accounts.remove(accountNumber);
      print("Your Account Number Deleted");
    }else{
      print("Sorry ! No Account");
    }
  }
  
  void trasferMoney(String fromAccount, String toAccount, double amount){
    if(accounts.containsKey(fromAccount)&& accounts.containsKey(toAccount)){
      if(accounts[fromAccount]!.balance >= amount){
        accounts[fromAccount]!.withdraw(amount);
        accounts[toAccount]!.deposit(amount);
        accounts[fromAccount]!.transactionHistory.add("Tasferred $amount to $toAccount");
        accounts[toAccount]!.transactionHistory.add("Received $amount from $fromAccount");
        print("Money Traster Sucessfully !");
      }else{
        print("Not Sufficient Balance");
      }
    }

  }
  
}
