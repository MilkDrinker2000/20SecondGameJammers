//if message_progress == 0 and selected_key == "h" then {
//	current_text += "h";
//	message_progress += 1;
//};

//if message_progress == 1 and selected_key == "e" then {
//	current_text += "e";
//	message_progress += 1;
//};

//if message_progress == 2 and selected_key == "l" then {
//	current_text += "l";
///	message_progress += 1;
//	selected_key = "a";
//};
 ///if message_progress == 3 and selected_key == "l" then {
//	 current_text += "l";
//	 message_progress += 1;
 //};
 //if message_progress == 4 and selected_key == "o" then {
//	 current_text += "o";
//	 message_progress += 1;
 //};
// if message_progress == 5 and selected_key == "_" then {
//	 current_text += "_";
//	 message_progress += 1;
//};
//if message_progress == 6 and selected_key == "w" then {
//	current_text += "w";
//	message_progress += 1;
//};
//if message_progress == 7 and selected_key == "o" then {
//	current_text += "o";
//	message_progress += 1;
//};
//if message_progress == 8 and selected_key == "r" then {
//	current_text += "r";
//	message_progress += 1;
//};
//if message_progress == 9 and selected_key == "l" then {
//	current_text += "o";
//	message_progress += 1;
//};
//if message_progress == 10 and selected_key == "d" then {
//	current_text += "o";
//	message_progress += 1;
//};

if (selected_key != "") {
	var expected_key = string_char_at(final_message, message_progress + 1);
	
	if (selected_key == expected_key) {
    message_progress += 1;
    current_text = string_copy(final_message, 1, message_progress);
}
selected_key = "";
}
