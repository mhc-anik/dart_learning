import 'dart:io';

class Account {
  String accountNumber;
  String accountHolderName;
  double balance;
  List<String> transactionHistory = [];

  Account(this.accountNumber, this.accountHolderName, this.balance) {
    transactionHistory.add('Account created with initial balance: $balance');
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      transactionHistory.add('Deposited: $amount');
      print('$amount টাকা জমা হয়েছে। নতুন ব্যালেন্স: $balance');
    } else {
      print('অবৈধ পরিমাণ!');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      transactionHistory.add('Withdrawn: $amount');
      print('$amount টাকা উত্তোলন করা হয়েছে। নতুন ব্যালেন্স: $balance');
    } else {
      print('অপর্যাপ্ত ব্যালেন্স বা অবৈধ পরিমাণ!');
    }
  }

  void displayBalance() {
    print('অ্যাকাউন্ট হোল্ডার: $accountHolderName');
    print('বর্তমান ব্যালেন্স: $balance');
  }

  void displayTransactions() {
    print('\nট্রানজেকশন হিস্ট্রি:');
    for (var transaction in transactionHistory) {
      print(transaction);
    }
  }
}

class Bank {
  Map<String, Account> accounts = {};

  void addAccount(Account account) {
    accounts[account.accountNumber] = account;
    print('অ্যাকাউন্ট সফলভাবে যোগ হয়েছে!');
  }

  void removeAccount(String accountNumber) {
    if (accounts.containsKey(accountNumber)) {
      accounts.remove(accountNumber);
      print('অ্যাকাউন্ট ডিলিট করা হয়েছে!');
    } else {
      print('অ্যাকাউন্ট খুঁজে পাওয়া যায়নি!');
    }
  }

  void transferMoney(String fromAccount, String toAccount, double amount) {
    if (accounts.containsKey(fromAccount) && accounts.containsKey(toAccount)) {
      if (accounts[fromAccount]!.balance >= amount) {
        accounts[fromAccount]!.withdraw(amount);
        accounts[toAccount]!.deposit(amount);
        accounts[fromAccount]!.transactionHistory.add('Transferred $amount to $toAccount');
        accounts[toAccount]!.transactionHistory.add('Received $amount from $fromAccount');
        print('টাকা সফলভাবে ট্রান্সফার করা হয়েছে!');
      } else {
        print('পর্যাপ্ত ব্যালেন্স নেই!');
      }
    } else {
      print('এক বা একাধিক অ্যাকাউন্ট খুঁজে পাওয়া যায়নি!');
    }
  }

  void displayAllAccounts() {
    print('\nসমস্ত অ্যাকাউন্টের তালিকা:');
    accounts.forEach((key, account) {
      print('অ্যাকাউন্ট নম্বর: ${account.accountNumber}, হোল্ডার: ${account.accountHolderName}, ব্যালেন্স: ${account.balance}');
    });
  }
}

void main() {
  Bank myBank = Bank();

  while (true) {
    print('\nব্যাংক ম্যানেজমেন্ট সিস্টেম');
    print('1. নতুন অ্যাকাউন্ট খুলুন');
    print('2. টাকা জমা করুন');
    print('3. টাকা উত্তোলন করুন');
    print('4. ব্যালেন্স চেক করুন');
    print('5. টাকা ট্রান্সফার করুন');
    print('6. সকল অ্যাকাউন্ট দেখুন');
    print('7. ট্রানজেকশন হিস্ট্রি দেখুন');
    print('8. প্রোগ্রাম বন্ধ করুন');
    print('আপনার পছন্দ ইনপুট করুন: ');

    var choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        createAccount(myBank);
        break;
      case 2:
        performTransaction(myBank, 'deposit');
        break;
      case 3:
        performTransaction(myBank, 'withdraw');
        break;
      case 4:
        checkBalance(myBank);
        break;
      case 5:
        transferMoney(myBank);
        break;
      case 6:
        myBank.displayAllAccounts();
        break;
      case 7:
        showTransactionHistory(myBank);
        break;
      case 8:
        print('প্রোগ্রাম বন্ধ করা হচ্ছে...');
        return;
      default:
        print('অবৈধ ইনপুট! আবার চেষ্টা করুন।');
    }
  }
}

void createAccount(Bank bank) {
  print('অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var accNumber = stdin.readLineSync() ?? '';
  print('অ্যাকাউন্ট হোল্ডারের নাম ইনপুট করুন: ');
  var holderName = stdin.readLineSync() ?? '';
  print('প্রাথমিক জমা পরিমাণ ইনপুট করুন: ');
  var initialBalance = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  var newAccount = Account(accNumber, holderName, initialBalance);
  bank.addAccount(newAccount);
}

void performTransaction(Bank bank, String type) {
  print('অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var accNumber = stdin.readLineSync() ?? '';

  if (bank.accounts.containsKey(accNumber)) {
    print('পরিমাণ ইনপুট করুন: ');
    var amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

    if (type == 'deposit') {
      bank.accounts[accNumber]!.deposit(amount);
    } else {
      bank.accounts[accNumber]!.withdraw(amount);
    }
  } else {
    print('অ্যাকাউন্ট খুঁজে পাওয়া যায়নি!');
  }
}

void checkBalance(Bank bank) {
  print('অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var accNumber = stdin.readLineSync() ?? '';

  if (bank.accounts.containsKey(accNumber)) {
    bank.accounts[accNumber]!.displayBalance();
  } else {
    print('অ্যাকাউন্ট খুঁজে পাওয়া যায়নি!');
  }
}

void transferMoney(Bank bank) {
  print('প্রেরকের অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var fromAcc = stdin.readLineSync() ?? '';
  print('গ্রহীতার অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var toAcc = stdin.readLineSync() ?? '';
  print('পরিমাণ ইনপুট করুন: ');
  var amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  bank.transferMoney(fromAcc, toAcc, amount);
}

void showTransactionHistory(Bank bank) {
  print('অ্যাকাউন্ট নম্বর ইনপুট করুন: ');
  var accNumber = stdin.readLineSync() ?? '';

  if (bank.accounts.containsKey(accNumber)) {
    bank.accounts[accNumber]!.displayTransactions();
  } else {
    print('অ্যাকাউন্ট খুঁজে পাওয়া যায়নি!');
  }
}