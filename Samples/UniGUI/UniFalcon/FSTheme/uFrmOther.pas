unit uFrmOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm;

type
  TfrmOther = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmOther: TfrmOther;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmOther: TfrmOther;
begin
  Result := TfrmOther(UniMainModule.GetFormInstance(TfrmOther));
end;

end.
