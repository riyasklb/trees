// import 'package:http/http.dart' as http;

// void main() async {
//   // Define the URL for the GET request
//   var url = Uri.parse('https://coderbyte.com/api/challenges/logs/web-logs-raw');

//   // Perform the GET request
//   var response = await http.get(url);

//   // Check if the response is successful
//   if (response.statusCode == 200) {
//     // Split the response body into lines
//     var lines = response.body.split('\n');

//     // Define a map to store the ID counts
//     Map<String, int> varOcg = {}; // __define-ocg__

//     // Regular expression to match the shareLinkId
//     var regex = RegExp(r'\?shareLinkId=([a-zA-Z0-9]+)');

//     // Iterate through each line to find and count IDs
//     for (var line in lines) {
//       var matches = regex.allMatches(line);
//       for (var match in matches) {
//         var id = match.group(1)!;
//         if (varOcg.containsKey(id)) {
//           varOcg[id] = varOcg[id]! + 1;
//         } else {
//           varOcg[id] = 1;
//         }
//       }
//     }

//     // Prepare the output string
//     var output = varOcg.entries.map((entry) {
//       if (entry.value > 1) {
//         return '${entry.key}:${entry.value}';
//       } else {
//         return entry.key;
//       }
//     }).join('\n');

//     // Print the output
//     print(output);
//   } else {
//     print('Failed to load logs');
//   }
// }
