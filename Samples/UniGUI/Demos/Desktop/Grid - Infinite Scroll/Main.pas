unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, DBClient,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, uniLabel;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniLabel1: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, uniStrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
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
  UniLabel1.Caption := 'Total Records: ' + IntToStr(ClientDataSet1.RecordCount);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
