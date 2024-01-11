//Labels = Form Controls
unit FormControlsLabels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsLabels = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    procedure UniLabel8DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniFormControlsLabels.UniLabel8DblClick(Sender: TObject);

begin
  UniLabel8.Caption := 'It''s Clicked';

end;

initialization
  RegisterClass(TUniFormControlsLabels);

end.
