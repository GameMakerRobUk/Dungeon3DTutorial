cx = dsin(party_dir);
cy = dcos(party_dir);

if (abs(party_x - party_target_x) < 0.1 && abs(party_y - party_target_y) < 0.1) &&
    (abs(party_dir - party_target_dir) < 0.1){
    if (keyboard_check_pressed(ord("W"))){
        party_target_x += cx;
        party_target_y += cy;
    }
    if (keyboard_check_pressed(ord("S"))){
        party_target_x -= cx;
        party_target_y -= cy;
    }
    if (keyboard_check_pressed(ord("A"))){
        party_target_x -= cy;
        party_target_y += cx;
    }
    if (keyboard_check_pressed(ord("D"))){
        party_target_x += cy;
        party_target_y -= cx;
    }
    if (keyboard_check_pressed(ord("Q"))){
        party_target_dir = (party_target_dir - 90) mod 360;
    }
    if (keyboard_check_pressed(ord("E"))){
        party_target_dir = (party_target_dir + 90) mod 360;
    }
    
    party_target_x = round(party_target_x);
    party_target_y = round(party_target_y);
    
    if (string_char_at(map[party_target_y + 1], party_target_x + 1) == "1"){
        party_target_x = party_x;
        party_target_y = party_y;
    }
}

party_x = lerp(party_x, party_target_x, 0.33);
party_y = lerp(party_y, party_target_y, 0.33);
party_dir = lerp(party_dir, party_target_dir, 0.33);

