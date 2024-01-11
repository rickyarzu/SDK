//Submit-Cancel = Forms
unit FormsSubmitCancel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, SubmitCancelUnit;

type
  TUniFormsSubmitCancel = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormsSubmitCancel.UniButton1Click(Sender: TObject);
begin
  UniForm1.ShowModal;
end;

initialization
  RegisterClass(TUniFormsSubmitCancel);
end.
