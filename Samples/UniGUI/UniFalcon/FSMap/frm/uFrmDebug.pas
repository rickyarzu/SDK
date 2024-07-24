unit uFrmDebug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniMemo, uniButton, uniBitBtn,
  uniPanel;

type
  TfrmDebug = class(TUniForm)
    memDebug: TUniMemo;
    pnlBottom: TUniPanel;
    btnClear: TUniBitBtn;
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmDebug: TfrmDebug;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmDebug: TfrmDebug;
begin
  Result := TfrmDebug(UniMainModule.GetFormInstance(TfrmDebug));
end;

procedure TfrmDebug.btnClearClick(Sender: TObject);
begin
  memDebug.Lines.Clear;
end;

end.
