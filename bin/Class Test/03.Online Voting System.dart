/*Online Voting System

Simulate a voting system where users vote for candidates.
Store vote counts in a map. Prevent a user from voting more
than once (simulate with a set). Display winner candidate.*/


import 'dart:io';

void main() {
  // Map to hold vote counts for each candidate
  Map<String, int> voteCounts = {
    'Anik': 0,
    'Rumi': 0,
    'Manha': 0,
  };

  // Set to keep track of users who have already voted
  Set<String> votedUsers = {};

  print("=== Online Voting System ===");

  while (true) {
    stdout.write("\nEnter your username (or type 'exit' to finish voting): ");
    String? username = stdin.readLineSync();

    if (username == null || username.toLowerCase() == 'exit') {
      break;
    }

    if (votedUsers.contains(username)) {
      print("⚠️  User '$username' has already voted.");
      continue;
    }

    print("Candidates: ${voteCounts.keys.join(', ')}");
    stdout.write("Enter your vote: ");
    String? voteInput = stdin.readLineSync();

    if (voteInput != null && voteCounts.containsKey(voteInput)) {
      voteCounts[voteInput] = voteCounts[voteInput]! + 1;
      votedUsers.add(username);
      print("✅ Vote recorded for $voteInput!");
    } else {
      print("❌ Invalid candidate or empty vote.");
    }
  }

  print("\n=== Voting Results ===");
  voteCounts.forEach((candidate, count) {
    print("$candidate: $count vote(s)");
  });

  String winner = voteCounts.entries
      .reduce((a, b) => a.value >= b.value ? a : b)
      .key;
  print("\n🎉 Winner: $winner 🎉");
}