///scrCreateQTE()

var XX;
XX=view_xview[0]+145
global.First=instance_create(XX,view_yview[0]+200,choose(objCharA,objCharB,objCharC));
XX+=75
global.Second=instance_create(XX,view_yview[0]+200,choose(objCharA,objCharB,objCharC));
XX+=75
global.Third=instance_create(XX,view_yview[0]+200,choose(objCharA,objCharB,objCharC));
ctrl=instance_create(x,y,objCharControl);
ctrl.XX=XX
