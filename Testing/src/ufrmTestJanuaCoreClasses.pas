unit ufrmTestJanuaCoreClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Rtti, System.JSON,
  // tms ....................................................................................
  advmjson, AdvmCSS, AdvMemo, AdvSpin,
  // DB
  Data.DB, DBAccess, Uni, MemDS,
  // Janua Libraries .........................................................................
  Janua.Core.Types, Janua.Mime.Types, Janua.Orm.Types,
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.DB, Janua.Core.Cloud,
  // VCL Libraries ...........................................................................
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Graphics, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, CRGrid, Advmxml;

type
  TfrmTestJanuaCoreClasses = class(TForm)
    PageControl1: TPageControl;
    tabEnumerators: TTabSheet;
    TabSheet1: TTabSheet;
    Procedures: TTabSheet;
    rgMime: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Memo1: TMemo;
    ListBox1: TListBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    AdvSpinEdit1: TAdvSpinEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    CheckBox1: TCheckBox;
    SpeedButton9: TSpeedButton;
    Panel2: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Resources: TTabSheet;
    Schemas: TTabSheet;
    MVCServer: TTabSheet;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    JvDateEdit1: TJvDateEdit;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    JvCalcEdit1: TJvCalcEdit;
    AdvSpinEdit2: TAdvSpinEdit;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    Tables: TTabSheet;
    PageControl2: TPageControl;
    tabTestProcedure: TTabSheet;
    Panel4: TPanel;
    btnTestProcedureCreate: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edTestProcedure: TLabeledEdit;
    calcEdTestProcedure: TJvCalcEdit;
    spinTestProcedure: TAdvSpinEdit;
    DateEditTestProcedure: TJvDateEdit;
    memTestProcedure: TAdvMemo;
    Panel6: TPanel;
    btnTestProcedureClone: TSpeedButton;
    ComboBox1: TComboBox;
    TestStoredProcedure: TTabSheet;
    memTestProcedureOutput: TAdvMemo;
    tabTestQuery: TTabSheet;
    btnTestProcedure: TSpeedButton;
    btnTestQuery: TSpeedButton;
    PgConnection1: TJanuaUniConnection;
    PgQuery1: TUniQuery;
    PgQuery1db_schema_id: TIntegerField;
    PgQuery1db_schema_name: TStringField;
    PgQuery1schema_des: TStringField;
    PgQuery1personal: TBooleanField;
    PgQuery1db_schema_key: TStringField;
    PgQuery1country_id: TSmallintField;
    PgQuery1language_id: TSmallintField;
    PgQuery1default_user_id: TIntegerField;
    SpeedButton18: TSpeedButton;
    PgQuery1data: TDateField;
    PgQuery1intero: TIntegerField;
    PgQuery1stringa: TMemoField;
    PgQuery1numero: TFloatField;
    Panel3: TPanel;
    btnTestResource: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabeledEdit1: TLabeledEdit;
    edTestResourceFloat: TJvCalcEdit;
    edTestResourceInteger: TAdvSpinEdit;
    JvDateEdit2: TJvDateEdit;
    memTargetResource: TAdvMemo;
    Panel5: TPanel;
    btnTestResourceClone: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    ComboBox2: TComboBox;
    memTestResource: TAdvMemo;
    ComboBox3: TComboBox;
    Label7: TLabel;
    SpeedButton24: TSpeedButton;
    btnCloneJsonObject: TSpeedButton;
    btnTestResourceCloneJsonTxt: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    Panel7: TPanel;
    btnTestSchema: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    LabeledEdit2: TLabeledEdit;
    JvCalcEdit2: TJvCalcEdit;
    AdvSpinEdit3: TAdvSpinEdit;
    JvDateEdit3: TJvDateEdit;
    ComboBox4: TComboBox;
    memTestSchema: TAdvMemo;
    Panel8: TPanel;
    SpeedButton20: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    ComboBox5: TComboBox;
    memTargetSchema: TAdvMemo;
    Panel9: TPanel;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    AdvMemo3: TAdvMemo;
    AdvMemo4: TAdvMemo;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    CRDBGrid2: TCRDBGrid;
    SpeedButton19: TSpeedButton;
    tabJanuaCoreOS: TTabSheet;
    Panel10: TPanel;
    Button1: TButton;
    memTestCoreOS: TMemo;
    memCoreOSLog: TMemo;
    memCoreOSJson: TAdvMemo;
    btnJanuaCoreOSParams: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rgMimeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure AdvSpinEdit2Change(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure btnTestProcedureCreateClick(Sender: TObject);
    procedure btnTestProcedureCloneClick(Sender: TObject);
    procedure btnTestProcedureClick(Sender: TObject);
    procedure btnTestQueryClick(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure btnTestResourceClick(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure btnTestResourceCloneClick(Sender: TObject);
    procedure btnCloneJsonObjectClick(Sender: TObject);
    procedure btnTestResourceCloneJsonTxtClick(Sender: TObject);
    procedure btnTestSchemaClick(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnJanuaCoreOSParamsClick(Sender: TObject);
  private
    { Private declarations }
    FJanuaMime: Janua.Core.Classes.TJanuaMime;
    FParams: Janua.Core.Classes.TJanuaParams;
    FTargetParams: Janua.Core.Classes.TJanuaParams;
    FTestProcedure: Janua.Core.Classes.TJanuaProcedure;
    FTestResource: Janua.Core.Classes.TJanuaResource;
    FTestSchema: Janua.Core.Classes.TJanuaSchema;
    FTargetProcedure: Janua.Core.Classes.TJanuaProcedure;
    FTargetResource: Janua.Core.Classes.TJanuaResource;
    FTargetSchema: Janua.Core.Classes.TJanuaSchema;
    procedure JsonOutput;
    procedure SetResource(var aResource: TJanuaResource);

  public
    { Public declarations }
    procedure SetProcedure(var aProcedure: TJanuaProcedure);
    procedure SetProcedureArray(var aProcedure: TJanuaProcedure);
    procedure SetProcedureResource(var aProcedure: TJanuaProcedure);
    procedure ProcedureExecute(var pIn, pOut: TJanuaParams; var vContent: TJanuaContent;
      var aResult: boolean);
    procedure ProcedureExecuteDataSet(var pIn, pOut: TJanuaParams; var vContent: TJanuaContent;
      var aResult: boolean);

  end;

var
  frmTestJanuaCoreClasses: TfrmTestJanuaCoreClasses;

implementation

{$R *.dfm}

procedure TfrmTestJanuaCoreClasses.AdvSpinEdit2Change(Sender: TObject);
begin
  self.JvCalcEdit1.DecimalPlaces := self.AdvSpinEdit2.Value
end;

procedure TfrmTestJanuaCoreClasses.btnTestProcedureCloneClick(Sender: TObject);
begin
  if not Assigned(self.FTestProcedure) then
    self.btnTestProcedureCreateClick(self.btnTestProcedureClone);

  if Assigned(FTargetProcedure) then
    FTargetProcedure.Free;

  FTargetProcedure := TJanuaProcedure.Create(self.FTestProcedure);

  memTestProcedureOutput.Lines.Clear;
  memTestProcedureOutput.Lines.Add(self.FTargetProcedure.AsJson);

end;

procedure TfrmTestJanuaCoreClasses.FormCreate(Sender: TObject);
begin
  FJanuaMime := Janua.Core.Classes.TJanuaMime.Create;
  self.rgMime.Items.Assign(self.FJanuaMime.MimeList);

end;

procedure TfrmTestJanuaCoreClasses.FormDestroy(Sender: TObject);
begin
  FJanuaMime.Free;
end;

procedure TfrmTestJanuaCoreClasses.rgMimeClick(Sender: TObject);
begin
  self.FJanuaMime.MimeString := self.rgMime.Items[self.rgMime.ItemIndex];
  self.ListBox1.Items.Add(Ord(FJanuaMime.MimeType).ToString + ':' + self.FJanuaMime.MimeString);
end;

procedure TfrmTestJanuaCoreClasses.SetProcedure(var aProcedure: TJanuaProcedure);
var
  LDateTime: TDateTime;
begin
  aProcedure.Name := 'TestProcedure';
  aProcedure.Slug := 'testprocedure';
  aProcedure.Description := 'Procedura di Test';
  aProcedure.ProcedureType := TJanuaProcedureType.jprProcedure;
  // procedurea contenuto = Json e CharSet jcsUTF8 ................
  aProcedure.MimeType.MimeType := TJanuaMimeType.jmtApplicationJson;
  aProcedure.MimeType.Charset := TJanuaCharsetType.jcsUTF8;
  aProcedure.ClearParams; // ripulisce i parametri in ed out per poterli riprogrammare.
  // Aggiungo i Parametri 'in' della procedura (l'ouput pu? anche essere poi in json).
  aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
  aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
  LDateTime := self.DateEditTestProcedure.Date;
  aProcedure.ParamsIN.Add('Data', LDateTime);
  aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);

  aProcedure.ParamsOUT.Add('String', TJanuaFieldType.jptString, '');
  aProcedure.ParamsOUT.Add('NumeroVirgola', TJanuaFieldType.jptFloat, 0.0);
  aProcedure.ParamsOUT.Add('Data', TJanuaFieldType.jptDate, Date());
  aProcedure.ParamsOUT.Add('Intero', TJanuaFieldType.jptInteger, 0);

  aProcedure.OnProcedureExecute := ProcedureExecute;
end;

procedure TfrmTestJanuaCoreClasses.SetProcedureArray(var aProcedure: TJanuaProcedure);
begin

end;

procedure TfrmTestJanuaCoreClasses.SetProcedureResource(var aProcedure: TJanuaProcedure);
var
  LDateTime: TDateTime;
begin
  { aProcedure.Name := 'TestProcedure';
    aProcedure.Slug := 'testprocedure';
    aProcedure.Description := 'Procedura di Test';
    aProcedure.ProcedureType := TJanuaProcedureType.jprProcedure; }
  // procedurea contenuto = Json e CharSet jcsUTF8 ................
  aProcedure.MimeType.MimeType := TJanuaMimeType.jmtApplicationJson;
  aProcedure.MimeType.Charset := TJanuaCharsetType.jcsUTF8;
  aProcedure.ClearParams; // ripulisce i parametri in ed out per poterli riprogrammare.
  // Aggiungo i Parametri 'in' della procedura (l'ouput pu? anche essere poi in json).
  aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
  aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
  LDateTime := self.DateEditTestProcedure.Date;
  aProcedure.ParamsIN.Add('Data', LDateTime);
  aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);

  aProcedure.ParamsOUT.Add('String', TJanuaFieldType.jptString, '');
  aProcedure.ParamsOUT.Add('NumeroVirgola', TJanuaFieldType.jptFloat, 0.0);
  aProcedure.ParamsOUT.Add('Data', TJanuaFieldType.jptDate, Date());
  aProcedure.ParamsOUT.Add('Intero', TJanuaFieldType.jptInteger, 0);

  aProcedure.OnProcedureExecute := ProcedureExecute;

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton10Click(Sender: TObject);
begin
  // Aggiorna l'output del memo
  self.AdvMemo1.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo1.Lines.Add(JsonPretty(FParams.AsJsonObject, True));

  if Assigned(self.FParams) then
  begin
    if not Assigned(FTargetParams) then
      self.FTargetParams := TJanuaParams.Create(self.FParams)
    else
      self.FTargetParams.Assign(self.FParams);
  end;

  self.AdvMemo2.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo2.Lines.Add(JsonPretty(FParams.AsJsonObject, True));
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton11Click(Sender: TObject);
begin
  // Aggiorna l'output del memo
  self.AdvMemo1.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo1.Lines.Add(JsonPretty(FParams.AsJsonObject, True));

  if Assigned(FTargetParams) then
    FreeAndNil(FTargetParams);

  if Assigned(self.FParams) then
  begin
    if not Assigned(FTargetParams) then
      self.FTargetParams := TJanuaParams.Create(self.FParams.AsJsonObject)
    else
      self.FTargetParams.AsJsonObject := self.FParams.AsJsonObject;
  end;

  self.AdvMemo2.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo2.Lines.Add(JsonPretty(FParams.AsJsonObject, True));
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton12Click(Sender: TObject);
begin
  self.AdvMemo1.Lines.Clear;
  self.AdvMemo1.Lines.Add(FParams.AsJsonString);

  if Assigned(FTargetParams) then
    FreeAndNil(FTargetParams);

  if Assigned(self.FParams) then
  begin
    if not Assigned(FTargetParams) then
      self.FTargetParams := TJanuaParams.Create(self.FParams.AsJsonString)
    else
      self.FTargetParams.AsJsonString := self.FParams.AsJsonString;
  end;

  self.AdvMemo2.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo2.Lines.Add((FParams.AsJsonString));

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton13Click(Sender: TObject);
begin
  self.AdvMemo1.Lines.Add('');
  self.AdvMemo1.Lines.Add(FParams.AsJsonPretty);

  if Assigned(FTargetParams) then
    FreeAndNil(FTargetParams);

  if Assigned(self.FParams) then
  begin
    if not Assigned(FTargetParams) then
      self.FTargetParams := TJanuaParams.Create(self.FParams.AsJsonRaw)
    else
      self.FTargetParams.AsJsonString := self.FParams.AsJsonString;
  end;

  self.AdvMemo2.Lines.Clear;
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo2.Lines.Add((FParams.AsJsonPretty));

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton14Click(Sender: TObject);
var
  LDateTime: TDateTime;
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if not self.FParams.Find('date') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    LDateTime := self.JvDateEdit1.Date;
    self.FParams.Add('date', LDateTime);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton15Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if self.FParams.Find('date') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.SelectedParam.Value := TValue(self.JvDateEdit1.Date);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton16Click(Sender: TObject);
var
  aParam: TJanuaParam;
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if not self.FParams.Find('Double') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    aParam := FParams.Add('Double', self.JvCalcEdit1.Value);
    aParam.Precision := self.AdvSpinEdit2.Value;
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton17Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if self.FParams.Find('Double') then
  begin
    self.FParams.SelectedParam.AsFloat := self.JvCalcEdit1.Value;
    self.FParams.SelectedParam.Precision := self.AdvSpinEdit2.Value;
    JsonOutput
  end
  else
  begin
    ShowMessage('Parametro non trovato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton18Click(Sender: TObject);
begin
  FTestProcedure.Unset;
  self.memTestProcedure.Lines.Clear;
  self.memTestProcedure.Lines.Add(self.FTestProcedure.AsJson);

  self.memTestProcedureOutput.Lines.Clear;

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton19Click(Sender: TObject);
var
  source, dest: TJanuaJsonDacDataset;
begin

end;

procedure TfrmTestJanuaCoreClasses.btnTestResourceClick(Sender: TObject);
begin
  if Assigned(self.FTestResource) then
    FreeAndNil(FTestResource);

  FTestResource := TJanuaResource.Create('TestResource', 'Test Resource', 'test');
  SetResource(FTestResource);

  self.memTestResource.Lines.Clear;
  // questa procedura mostra la struttura della procedura in formato Json ......
  memTestResource.Lines.Add(self.FTestResource.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.btnTestResourceCloneClick(Sender: TObject);
begin
  if not Assigned(self.FTestResource) then
    self.btnTestProcedureCreateClick(self.btnTestResource);

  if Assigned(self.FTargetResource) then
    FTargetResource.Free;

  FTargetResource := TJanuaResource.Create(self.FTestResource);

  self.memTargetResource.Lines.Clear;
  memTargetResource.Lines.Add(self.FTargetResource.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.btnTestResourceCloneJsonTxtClick(Sender: TObject);
begin
  self.memTargetResource.Lines.Clear;
  if not Assigned(self.FTestResource) then
    self.btnTestResourceClick(self.btnTestProcedureCreate);

  if Assigned(self.FTargetResource) then
    FreeAndNil(FTargetResource);

  FTargetResource := TJanuaResource.Create(self.FTestResource.AsJson);

  memTargetResource.Lines.Clear;
  memTargetResource.Lines.Add(self.FTargetResource.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.btnTestSchemaClick(Sender: TObject);
var
  aResource: TJanuaResource;
begin
  if Assigned(self.FTestSchema) then
    FreeAndNil(FTestSchema);

  FTestSchema := TJanuaSchema.Create('TestSchema', 'Test Schema', 'test');

  FTestSchema.AddResource('One', 'first resource', 'one');
  aResource := FTestSchema.SelectedResource;
  SetResource(aResource);

  FTestSchema.AddResource('Two', 'second resource', 'two');
  aResource := FTestSchema.SelectedResource;
  SetResource(aResource);

  FTestSchema.AddResource('Three', 'third resource', 'three');
  aResource := FTestSchema.SelectedResource;
  SetResource(aResource);

  self.memTestSchema.Lines.Clear;
  // questa procedura mostra la struttura della procedura in formato Json ......
  memTestSchema.Lines.Add(self.FTestSchema.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.Button1Click(Sender: TObject);
var
  aCoreOS: TJanuaCoreOS;
begin
  self.memTestCoreOS.Lines.Clear;
  self.memTestCoreOS.Lines.Add('Creo JanuaCoreOS');
  aCoreOS:= TJanuaCoreOS.Create(self);
  try
    aCoreOS.AppName := 'JanuaTest';
    aCoreOS.UseCurrentDir := True;
    aCoreOS.Name := 'aCoreOS1';
    aCoreOS.Activate;
    self.memCoreOSLog.Lines.Clear;
    // self.memCoreOSLog.Lines.AddStrings(aCoreOS.Log);
   // aCoreOS.
  finally
    aCoreOS.Free;
  end;
end;

procedure TfrmTestJanuaCoreClasses.btnCloneJsonObjectClick(Sender: TObject);
begin
  self.memTargetResource.Lines.Clear;
  if not Assigned(self.FTestResource) then
    self.btnTestResourceClick(self.btnTestProcedureCreate);

  if Assigned(self.FTargetResource) then
    FreeAndNil(FTargetResource);

  FTargetResource := TJanuaResource.Create(self.FTestResource.AsJsonObject);

  memTargetResource.Lines.Clear;
  memTargetResource.Lines.Add(self.FTargetResource.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.btnJanuaCoreOSParamsClick(Sender: TObject);
var
  aCoreOS: TJanuaCoreOS;
begin
  self.memTestCoreOS.Lines.Clear;
  self.memTestCoreOS.Lines.Add('Creo JanuaCoreOS');
  aCoreOS:= TJanuaCoreOS.Create(self);
  try
    aCoreOS.AppName := 'JanuaTest';
    aCoreOS.UseCurrentDir := True;
    aCoreOS.Name := 'aCoreOS1';
    aCoreOS.Activate;
    self.memCoreOSLog.Lines.Clear;
    // self.memCoreOSLog.Lines.AddStrings(aCoreOS.Log);
   // aCoreOS.

  self.memCoreOSLog.Lines.Add('test string: Ciao');
  aCoreOS.WriteParam('Test', 'String', 'Ciao');
  self.memCoreOSLog.Lines.Add('test bool: True');
  aCoreOS.WriteParam('Test', 'Bool', True);
  self.memCoreOSLog.Lines.Add('test Integer: 1');
  aCoreOS.WriteParam('Test', 'Integer', 1);
  self.memCoreOSLog.Lines.Add('test Double: 1.1');
  aCoreOS.WriteParam('Test', 'Double', 1.1);
  self.memCoreOSLog.Lines.Add('test DateTime: Now()');
  aCoreOS.WriteDateTimeParam('Test', 'DateTime', Now());

  self.memCoreOSJson.Lines.Clear;
  self.memCoreOSJson.Lines.Add(aCoreOS.JsonConf);


  finally
    aCoreOS.Free;
  end;

end;

procedure TfrmTestJanuaCoreClasses.btnTestProcedureClick(Sender: TObject);
begin
  if not Assigned(self.FTestProcedure) then
    self.btnTestProcedureCreateClick(self.btnTestProcedure);

  self.FTestProcedure.Unset;

  self.FTestProcedure.OnProcedureExecute := ProcedureExecute;

  {
    aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
    aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
    LDateTime := self.DateEditTestProcedure.Date;
    aProcedure.ParamsIN.Add('Data', LDateTime);
    aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);
  }

  if self.FTestProcedure.ParamsIN.Find('String') then
    self.FTestProcedure.ParamsIN.ParamByName('Stringa').AsString := 'Ciao';

  if self.FTestProcedure.ParamsIN.Find('NumeroVirgola') then
    self.FTestProcedure.ParamsIN.ParamByName('NumeroVirgola').AsFloat := 134.21;

  if self.FTestProcedure.ParamsIN.Find('Data') then
    self.FTestProcedure.ParamsIN.ParamByName('Data').AsDateTime := Now();

  if self.FTestProcedure.ParamsIN.Find('Intero') then
    self.FTestProcedure.ParamsIN.ParamByName('Intero').AsInteger := 10;

  if FTestProcedure.Execute then
  begin
    self.memTestProcedure.Lines.Clear;
    self.memTestProcedure.Lines.Add(self.FTestProcedure.AsJson);

    memTestProcedureOutput.Lines.Clear;
    memTestProcedureOutput.Lines.Add(self.FTestProcedure.Content.AsString);
  end;

end;

procedure TfrmTestJanuaCoreClasses.btnTestProcedureCreateClick(Sender: TObject);
var
  LDateTime: TDateTime;
begin
  if Assigned(self.FTestProcedure) then
    FreeAndNil(FTestProcedure);

  FTestProcedure := TJanuaProcedure.Create;

  SetProcedure(self.FTestProcedure);

  memTestProcedure.Lines.Clear;
  // questa procedura mostra la struttura della procedura in formato Json ......
  memTestProcedure.Lines.Add(self.FTestProcedure.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.btnTestQueryClick(Sender: TObject);
begin
  if not Assigned(self.FTestProcedure) then
    self.btnTestProcedureCreateClick(self.btnTestProcedure);

  self.FTestProcedure.Unset;

  self.FTestProcedure.OnProcedureExecute := self.ProcedureExecuteDataSet;

  {
    aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
    aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
    LDateTime := self.DateEditTestProcedure.Date;
    aProcedure.ParamsIN.Add('Data', LDateTime);
    aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);
  }

  if self.FTestProcedure.ParamsIN.Find('String') then
    self.FTestProcedure.ParamsIN.ParamByName('Stringa').AsString := 'Ciao';

  if self.FTestProcedure.ParamsIN.Find('NumeroVirgola') then
    self.FTestProcedure.ParamsIN.ParamByName('NumeroVirgola').AsFloat := 134.21;

  if self.FTestProcedure.ParamsIN.Find('Data') then
    self.FTestProcedure.ParamsIN.ParamByName('Data').AsDateTime := Now();

  if self.FTestProcedure.ParamsIN.Find('Intero') then
    self.FTestProcedure.ParamsIN.ParamByName('Intero').AsInteger := 10;

  if FTestProcedure.Execute then
  begin
    self.memTestProcedure.Lines.Clear;
    self.memTestProcedure.Lines.Add(self.FTestProcedure.AsJson);

    memTestProcedureOutput.Lines.Clear;
    memTestProcedureOutput.Lines.Add(self.FTestProcedure.Content.AsString);
  end;

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton1Click(Sender: TObject);
begin
  if not Assigned(FParams) then
    FParams := Janua.Core.Classes.TJanuaParams.Create;

  self.AdvMemo1.Lines.AddStrings(self.FParams.AsJsonRaw);

end;

procedure TfrmTestJanuaCoreClasses.SpeedButton20Click(Sender: TObject);
begin
  if not Assigned(self.FTestSchema) then
    self.btnTestSchemaClick(self.btnTestSchema);

  if Assigned(self.FTargetSchema) then
    FTargetSchema.Free;

  FTargetSchema := TJanuaSchema.Create(self.FTestSchema);

  self.memTargetSchema.Lines.Clear;
  memTargetSchema.Lines.Add(self.FTargetSchema.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton25Click(Sender: TObject);
begin
  memTestProcedureOutput.Lines.Clear;
  if not Assigned(self.FTestProcedure) then
    self.btnTestProcedureCreateClick(self.btnTestProcedureClone);

  if Assigned(FTargetProcedure) then
    FreeAndNil(FTargetProcedure);

  FTargetProcedure := TJanuaProcedure.Create(self.FTestProcedure.AsJsonObject);

  memTestProcedureOutput.Lines.Clear;
  memTestProcedureOutput.Lines.Add(self.FTargetProcedure.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton26Click(Sender: TObject);
begin
  memTestProcedureOutput.Lines.Clear;
  if not Assigned(self.FTestProcedure) then
    self.btnTestProcedureCreateClick(self.btnTestProcedureClone);

  if Assigned(FTargetProcedure) then
    FreeAndNil(FTargetProcedure);

  FTargetProcedure := TJanuaProcedure.Create(self.FTestProcedure.AsJson);

  memTestProcedureOutput.Lines.Clear;
  memTestProcedureOutput.Lines.Add(self.FTargetProcedure.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton2Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if not self.FParams.Find('string') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.Add('string', self.Edit1.Text);
    JsonOutput
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton31Click(Sender: TObject);
begin
  self.memTargetSchema.Lines.Clear;
  if not Assigned(self.FTestSchema) then
    self.btnTestSchemaClick(self.btnTestSchema);

  if Assigned(self.FTargetSchema) then
    FreeAndNil(FTargetSchema);

  FTargetSchema := TJanuaSchema.Create(self.FTestSchema.AsJsonObject);

  memTargetSchema.Lines.Clear;
  memTargetSchema.Lines.Add(self.FTargetSchema.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton32Click(Sender: TObject);
begin
  self.memTargetSchema.Lines.Clear;
  if not Assigned(self.FTestSchema) then
    self.btnTestSchemaClick(self.btnTestSchema);

  if Assigned(self.FTargetSchema) then
    FreeAndNil(FTargetSchema);

  FTargetSchema := TJanuaSchema.Create(self.FTestSchema.AsJson);

  memTargetSchema.Lines.Clear;
  memTargetSchema.Lines.Add(self.FTargetSchema.AsJson);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton3Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if self.FParams.Find('string') then
  begin
    // la funzione Find si occupa anche di impostare il valore SelectedParam all'interno della class
    self.FParams.SelectedParam.Value := TValue(self.Edit1.Text);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro non trovato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton4Click(Sender: TObject);
begin
  self.AdvMemo1.Lines.Add('');
  self.AdvMemo1.Lines.Add(self.FParams.AsJsonPretty);
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton5Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if not self.FParams.Find('integer') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.Add('integer', self.AdvSpinEdit1.Value);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton6Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if self.FParams.Find('integer') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.SelectedParam.Value := TValue(self.AdvSpinEdit1.Value);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton7Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if not self.FParams.Find('boolean') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.Add('boolean', self.CheckBox1.Checked);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton8Click(Sender: TObject);
begin
  if not Assigned(self.FParams) then
    self.FParams := TJanuaParams.Create;

  if self.FParams.Find('boolean') then
  begin
    // Aggiunge un parametro Stringa ai parametri.
    self.FParams.SelectedParam.Value := TValue(self.CheckBox1.Checked);
    JsonOutput;
  end
  else
  begin
    ShowMessage('Parametro gi? registrato');
  end;
end;

procedure TfrmTestJanuaCoreClasses.SpeedButton9Click(Sender: TObject);
begin
  self.AdvMemo1.Lines.Add('');
  self.AdvMemo1.Lines.Add(FParams.AsJsonString);
end;

procedure TfrmTestJanuaCoreClasses.JsonOutput;
begin
  self.AdvMemo1.Lines.Clear;
  // Aggiorna l'output del memo
  self.AdvMemo1.Lines.Add('');
  self.AdvMemo1.Lines.Add('Impostato parametro' + FParams.SelectedParam.Key + ', checked = ' +
    FParams.SelectedParam.Checked.ToString + ': ');
  self.AdvMemo1.Lines.Add(JsonPretty(FParams.SelectedParam.AsJsonObject, True));
  // Aggiorna l'output del memo
  self.AdvMemo1.Lines.Add('');
  self.AdvMemo1.Lines.Add('Array Params:');
  // Recupera il Json 'Raw' cio? non formattato in modalit? Json
  self.AdvMemo1.Lines.Add(JsonPretty(FParams.AsJsonObject, True));
end;

procedure TfrmTestJanuaCoreClasses.ProcedureExecute(var pIn, pOut: TJanuaParams; var vContent: TJanuaContent;
  var aResult: boolean);
var
  aDateTime: TDateTime;
  aFloat: Extended;
  aInteger: Integer;
  aString: String;
  aJsonObject: TJsonObject;
begin
  aResult := True;
  Try
    {
      aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
      aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
      LDateTime := self.DateEditTestProcedure.Date;
      aProcedure.ParamsIN.Add('Data', LDateTime);
      aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);
    }
    if pIn.Find('Stringa') then
      aString := pIn.ParamByName('Stringa').AsString;
    if pIn.Find('NumeroVirgola') then
      aFloat := pIn.ParamByName('NumeroVirgola').AsFloat;
    if pIn.Find('Data') then
      aDateTime := pIn.ParamByName('Data').AsDateTime;
    if pIn.Find('Intero') then
      aInteger := pIn.ParamByName('Intero').AsInteger;

    aJsonObject := TJsonObject.Create;
    try
      Janua.Core.Json.JsonPair(aJsonObject, 'Stringa', aString);
      Janua.Core.Json.JsonPair(aJsonObject, 'NumeroVirgola', aFloat);
      Janua.Core.Json.JsonPair(aJsonObject, 'Data', aDateTime);
      Janua.Core.Json.JsonPair(aJsonObject, 'Intero', aInteger);
      vContent.ContentType := TJanuaContentType.jctJsonObject;
      vContent.MimeType.MimeType := TJanuaMimeType.jmtApplicationJson;
      vContent.AsJsonObject := aJsonObject;
    finally
      aJsonObject.Free;
    end;

  Except
    on e: exception do
    begin
      aResult := False;
    end;
  End;
end;

procedure TfrmTestJanuaCoreClasses.ProcedureExecuteDataSet(var pIn, pOut: TJanuaParams;
  var vContent: TJanuaContent; var aResult: boolean);
var
  aDateTime: TDateTime;
  aFloat: Extended;
  aInteger: Integer;
  aString: String;
  aJsonObject: TJsonObject;
begin
  aResult := True;
  {
    aProcedure.ParamsIN.Add('Stringa', self.edTestProcedure.Text);
    aProcedure.ParamsIN.Add('NumeroVirgola', self.calcEdTestProcedure.Value);
    LDateTime := self.DateEditTestProcedure.Date;
    aProcedure.ParamsIN.Add('Data', LDateTime);
    aProcedure.ParamsIN.Add('Intero', self.spinTestProcedure.Value);

    :data::date as data, :intero::integer intero,
    :stringa::varchar stringa, :numero::real numero,
  }
  if pIn.Find('Stringa') then
    aString := pIn.ParamByName('Stringa').AsString;
  if pIn.Find('NumeroVirgola') then
    aFloat := pIn.ParamByName('NumeroVirgola').AsFloat;
  if pIn.Find('Data') then
    aDateTime := pIn.ParamByName('Data').AsDateTime;
  if pIn.Find('Intero') then
    aInteger := pIn.ParamByName('Intero').AsInteger;

  self.PgConnection1.Connect;
  PgQuery1.Close;
  self.PgQuery1.ParamByName('stringa').AsString := aString;
  self.PgQuery1.ParamByName('intero').AsInteger := aInteger;
  self.PgQuery1.ParamByName('data').AsDateTime := aDateTime;
  self.PgQuery1.ParamByName('numero').AsFMTBCD := aFloat;
  PgQuery1.Open;

  // vContent.LoadFromDevartDataset(self.PgQuery1);

end;

procedure TfrmTestJanuaCoreClasses.SetResource(var aResource: TJanuaResource);
var
  SelectedProcedure: TJanuaProcedure;
begin
  aResource.AddProcedure('uno', 'prima procedura json', 'one', TJanuaMimeType.jmtApplicationJson);
  SelectedProcedure := aResource.SelectedProcedure;
  SetProcedureResource(SelectedProcedure);
  aResource.SelectedProcedure.OnProcedureExecute := self.ProcedureExecute;
  aResource.AddProcedure('due', 'seconda procedura dataset', 'two', TJanuaMimeType.jmtApplicationJson);
  SelectedProcedure := aResource.SelectedProcedure;
  SetProcedureResource(SelectedProcedure);
  aResource.SelectedProcedure.OnProcedureExecute := self.ProcedureExecuteDataSet;
  aResource.AddProcedure('tre', 'terza procedura json', 'three', TJanuaMimeType.jmtApplicationJson);
  SelectedProcedure := aResource.SelectedProcedure;
  SetProcedureResource(SelectedProcedure);
  aResource.SelectedProcedure.OnProcedureExecute := self.ProcedureExecute;
end;

end.
