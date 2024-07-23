unit uFrmCommon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn,
  UniFSButton;

type
  TfrmCommon = class(TUniForm)
    btnOther: TUniFSButton;
    procedure btnOtherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCommon: TfrmCommon;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uFrmOther;

function frmCommon: TfrmCommon;
begin
  Result := TfrmCommon(UniMainModule.GetFormInstance(TfrmCommon));
end;

procedure TfrmCommon.btnOtherClick(Sender: TObject);
begin
  frmOther.ShowModal();
end;

end.
