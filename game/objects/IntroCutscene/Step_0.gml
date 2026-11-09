// automatically change the string that gets drawn, remaining on the last one once reached
time_timer--;
if (time_timer <= 0){
    string_selected++;
    if (string_selected == array_length(strings)){
        string_selected = array_length(strings) - 1;
    }
    time_timer = time_change * 60;
}
