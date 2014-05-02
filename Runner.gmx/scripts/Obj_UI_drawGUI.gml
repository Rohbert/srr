//Draw Level GUI
draw_set_halign(fa_left);
draw_sprite(Spr_coinRed,0,10,10);
draw_set_font(Font_UI);
drawTextOutline(50,16,2,"X "+string(coinCount));

draw_text(300,10,"Click anywhere to Jump, Press Back key / backspace to restart
Current Area: "+currentArea);

draw_set_font(Font_actionButton);
drawTextOutline(10,view_hview[0]-100,3,action1String);
draw_set_halign(fa_right);
drawTextOutline(room_width-100,view_hview[0]-100,3,action2String);//Offset more to the left due to phone soft buttons
draw_set_halign(fa_left);

//debug draw
draw_set_font(Font_debug);
draw_set_color(c_red);

draw_line(buttonDivider,200,buttonDivider,400);

if(instance_exists(Obj_playerBase)){
        draw_text(50,view_hview[0]-200,"1 Held: "+string(Obj_playerBase.actionButton1Held)
                                    +"# 2 Held: "+string(Obj_playerBase.actionButton2Held));

        draw_text(view_wview[0]-300,view_hview[0]-200," Power State: "+string(Obj_playerBase.powerState)
                                                    +"# Power CDM: "+string(Obj_playerBase.powerCooldownMax)
                                                    +"# Power CD : "+string(Obj_playerBase.powerCooldown)
                                                    +"# Power Dur: "+string(Obj_playerBase.powerDuration)
                                                    +"# Power Trk: "+string(Obj_playerBase.powerTracker)
                                                    );
}

