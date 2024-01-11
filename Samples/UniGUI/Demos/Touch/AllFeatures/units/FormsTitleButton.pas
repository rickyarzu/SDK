//Title Button = Forms
unit FormsTitleButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, TitleFormUnit;

type
  TUniFormsTitleButton = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormsTitleButton.UnimButton1Click(Sender: TObject);
begin
  TitleForm.Show();
end;

initialization
  RegisterClass(TUniFormsTitleButton);
end.
