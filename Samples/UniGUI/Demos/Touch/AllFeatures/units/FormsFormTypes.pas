//Form Types = Forms
unit FormsFormTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, FullScreenUnit, ModalUnit, NonModalUnit, ScrollableUnit;

type
  TUniFormsFormTypes = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormsFormTypes.UnimButton1Click(Sender: TObject);
begin
  UniFullScreenForm.Show();
end;

procedure TUniFormsFormTypes.UnimButton2Click(Sender: TObject);
begin
  UniModalForm.ShowModal();
end;

procedure TUniFormsFormTypes.UnimButton3Click(Sender: TObject);
begin
  UnimFormnonModal.Show();
end;

procedure TUniFormsFormTypes.UnimButton4Click(Sender: TObject);
begin
  UniScrollForm.Show();
end;

initialization
  RegisterClass(TUniFormsFormTypes);
end.
