// Form CallBack = Forms
unit FormsFormCallBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniGUIBaseClasses, uniPanel, CallBackFormUnit;

type
  TUniFormsFormCallBack = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowCallBack(Sender: TComponent; AResult:Integer);
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniFormsFormCallBack.ShowCallBack(Sender: TComponent; AResult: Integer);
begin
  UniMemo1.Lines.Add('Form: '+(Sender as TuniForm).Name+', Result: '+IntToStr(AResult));
end;

procedure TUniFormsFormCallBack.UniButton1Click(Sender: TObject);
begin
  UniCallBackFormUnit.Show(ShowCallBack);
end;

procedure TUniFormsFormCallBack.UniButton2Click(Sender: TObject);
begin
  UniCallBackFormUnit.ShowModal(ShowCallBack);
end;

initialization
  RegisterClass(TUniFormsFormCallBack);
end.
