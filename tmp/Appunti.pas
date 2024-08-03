var
  backgroundColor: TColor;
  FontColor: TColor;
  FontStyles: VCL.Graphics.TFontStyles;
  Image: Integer; 
const 
  green = 0;
  red = 1;
  orange = 2; 
  blue = 3; 
begin
   // if not FieldByName('APPUNTAMENTO_DATA').IsNull then
   //   backgroundColor := clWebBeige;

    if (FieldByName('STATO').AsInteger < 0) then
      Image := red;
    if (FieldByName('STATO').AsInteger in [1, 6]) then
    begin
      image := blue;
      FontStyles := [fsBold];
    end;
	
    if (FieldByName('STATO').AsInteger = 4) then
      image := orange;
	  
    if (FieldByName('STATO').AsInteger in [5, 6]) then
      image := green;

    if not FieldByName('APPUNTAMENTO_DATA').IsNull and (FieldByName('APPUNTAMENTO_DATA').AsDateTime < Date)
    then
      image := red;

    
 end;