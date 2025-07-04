
import 'Account.dart';
import'Bank.dart';

main() {
 Account act = Account("12345", "shisir", 0);

 act.deposit(5000);
 act.withdraw(1000);
 act.displayBalance();
 act.displayTrasction();

 Bank myBank = Bank();

 myBank.addAccount(act);



}