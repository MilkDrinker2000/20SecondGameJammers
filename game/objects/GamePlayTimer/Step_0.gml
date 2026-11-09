// automatically change the string that gets drawn, remaining on the last one once reached
time_timer--;
if (time_timer <= 0){
    time_selected++;
    if (time_selected == array_length(timer)){
        time_selected = array_length(timer) - 1;
    }
    time_timer = time_change * 60;
}
