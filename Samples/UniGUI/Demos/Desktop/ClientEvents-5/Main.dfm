object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 598
  ClientWidth = 788
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.ExtEvents.Strings = (
    
      'form.keydown=function form.Onkeydown(sender, key, shift)'#13#10'{'#13#10'   ' +
      'var xy=MainForm.UniPanel1.getPosition(true);'#13#10'   var x=xy[0];'#13#10' ' +
      '  var y=xy[1];'#13#10'   '#13#10'   var inc=5;'#13#10'   if (shift & 1) inc=10;   ' +
      ' // shift'#13#10'   if (shift & 4) inc=1;   // ctrl'#13#10'   if (shift & 2)' +
      ' inc=20;   // alt'#13#10'   '#13#10'   switch(key) {'#13#10'      case 40 : y+=inc' +
      '; break;          '#13#10'      case 38 : y-=inc; break;          '#13#10'  ' +
      '    case 37 : x-=inc; break;          '#13#10'      case 39 : x+=inc; ' +
      'break;          '#13#10'   }       '#13#10'   '#13#10'   if (y<0) y=0;'#13#10'   if (x<0' +
      ') x=0;'#13#10'   '#13#10'   if (y>MainForm.form.getHeight()) y=MainForm.form' +
      '.getHeight();'#13#10'   if (x>MainForm.form.getWidth()) x=MainForm.for' +
      'm.getWidth();'#13#10'   '#13#10'   MainForm.UniPanel1.setPosition(x, y);'#13#10'}')
  DesignSize = (
    788
    598)
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 240
    Top = 104
    Width = 129
    Height = 121
    Hint = ''
    Caption = 'UniPanel1'
    Color = 16744448
    TabOrder = 0
  end
  object UniLabel1: TUniLabel
    Left = 208
    Top = 16
    Width = 329
    Height = 23
    Hint = ''
    Caption = 'Use Arrow Keys + Shift, Alt or Ctrl'
    Anchors = [akTop]
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 1
  end
end
