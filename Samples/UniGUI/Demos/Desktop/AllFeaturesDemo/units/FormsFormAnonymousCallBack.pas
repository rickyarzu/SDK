// Form Anonymous CallBack = Forms
unit FormsFormAnonymousCallBack;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, uniGUIBaseClasses, uniPanel, AnonymousCallBackUnit;

type
  TUniFormsFormAnonymousCallBack = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniFormsFormAnonymousCallBack.UniButton1Click(Sender: TObject);
begin
{$ifdef COMPILER_12_UP}
  UniAnonymousCallBackForm.Show(
    procedure(Sender: TComponent; Result:Integer)
    begin
      UniMemo1.Lines.Add('Form: '+(Sender as TUniForm).Name+', Result: '+IntToStr(Result));
    end
  );
{$else}
  ShowMessage('This feature is not available in this version of Delphi');
{$endif}
end;

initialization
  RegisterClass(TUniFormsFormAnonymousCallBack);
end.
