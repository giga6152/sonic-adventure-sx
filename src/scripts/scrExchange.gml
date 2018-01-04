///scrExchange()

option = 0;

var currencyGET;
currencyGET = get_string ("What currency would you like to exchange? Use either RINGS or GEMS.", "Type of currency to exchange");


if currencyGET == "RINGS"
{
   currencyGET = get_integer ("How many rings would you like to exchange?", 0);
   
   if currencyGET >= 0 && global.totalrings[global.savedata] >= currencyGET
   {
       global.totalrings[global.savedata] -= floor(currencyGET);
       global.gems[global.savedata] += floor(currencyGET);
       audio_play_sound (sndResult, 10, false);
       exit;
   }
   else if currencyGET < 0 or global.totalrings[global.savedata] < currencyGET
   {
       show_message ("Exchange failed. Please check the value and try again.");
       exit;
   }
}
else if currencyGET == "GEMS"
{
   currencyGET = get_integer ("How many gems would you like to exchange?", 0);
   
   if currencyGET >= 0 && global.gems[global.savedata] >= currencyGET
   {
       global.totalrings[global.savedata] += floor(currencyGET);
       global.gems[global.savedata] -= floor(currencyGET);
       audio_play_sound (sndResult, 10, false);
       exit;
   }
   else if currencyGET < 0 or global.gems[global.savedata] < currencyGET
   {
       show_message ("Exchange failed. Please check the value and try again.");
       exit;
   }
}
else if currencyGET != "RINGS" && currencyGET != "GEMS"
{
   show_message ("Currency not identified properly. Please check the string name and try again.");
   exit;
}

/*if !instance_exists (objExchange)
    instance_create (view_xview[0]+80, view_yview[0]+96, objExchange);
