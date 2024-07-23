unit uFrmCapLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm;

type
  TfrmCapLancamento = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCapLancamento: TfrmCapLancamento;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCapLancamento: TfrmCapLancamento;
begin
  Result := TfrmCapLancamento(UniMainModule.GetFormInstance(TfrmCapLancamento));
end;

end.
