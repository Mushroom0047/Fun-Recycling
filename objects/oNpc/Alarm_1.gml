timer_satisfaction = round(random_range(_min_value_sat, _max_value_sat));

if(satisfaction_value > 8 && satisfaction_value <= 10)_max_value_sat += 100;
if(satisfaction_value < 4 && satisfaction_value > -5)_max_value_sat -= 100;