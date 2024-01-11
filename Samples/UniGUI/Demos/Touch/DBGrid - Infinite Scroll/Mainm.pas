unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  DB, DBClient;

type
  TMainmForm = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, uniStrUtils;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  F : TFileStream;
  FolderPath : string;
begin
  FolderPath := TranslateFullPath(UniServerModule.StartPath, '..\..\CommonData\');

  F := TFileStream.Create(FolderPath + 'EmployeeLarge.cds', fmShareDenyNone);
  try
    ClientDataSet1.LoadFromStream(F);
  finally
    F.Free;
  end;
  Self.Caption := 'Total Records: ' + IntToStr(ClientDataSet1.RecordCount);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
