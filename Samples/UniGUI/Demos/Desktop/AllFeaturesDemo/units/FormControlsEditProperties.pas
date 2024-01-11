//Edit Properties = Form Controls
unit FormControlsEditProperties;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniGUIBaseClasses, uniPanel, uniLabel;

type
  TUniFormControlsEditProperties = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniEdit5: TUniEdit;
    UniLabel5: TUniLabel;
    UniEdit6: TUniEdit;
    UniLabel6: TUniLabel;
    UniEdit7: TUniEdit;
    UniLabel7: TUniLabel;
    UniEdit8: TUniEdit;
    UniLabel8: TUniLabel;
    UniEdit9: TUniEdit;
    UniLabel9: TUniLabel;
    UniEdit10: TUniEdit;
    UniLabel10: TUniLabel;
    UniEdit11: TUniEdit;
    UniLabel11: TUniLabel;
    UniEdit12: TUniEdit;
    UniLabel12: TUniLabel;
    UniEdit13: TUniEdit;
    UniLabel13: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}

 procedure TUniFormControlsEditProperties.UniFrameCreate(Sender: TObject);
begin

  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

initialization
  RegisterClass(TUniFormControlsEditProperties);

end.
