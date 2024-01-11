unit udmSettings;

interface

uses
  SysUtils, Classes, DB, DBClient, MemDS, DBAccess, Ora, JanuaSessionSource,
  JanuaCore;

type
  TdmSettings = class(TDataModule)
    cdsImpostazioneParametri: TClientDataSet;
    cdsImpostazioneParametriGRUPPO: TWideStringField;
    cdsImpostazioneParametriCHIAVE: TWideStringField;
    cdsImpostazioneParametriVALORE: TWideStringField;
    cdsImpostazioneParametriINSERT_DATE: TDateTimeField;
    cdsImpostazioneParametriUPDATE_DATE: TDateTimeField;
    cdsImpostazioneParametriINS_ID: TFloatField;
    cdsImpostazioneParametriUPD_ID: TFloatField;
    cdsImpostazioneParametriUSERGROUP: TWideStringField;
    cdsImpostazioneParametriLANG: TWideStringField;
    cdsImpostazioneParametriADMINONLY: TWideStringField;
    cdsImpostazioneParametriISGROUP: TWideStringField;
    cdsImpostazioneParametriUSER_INSERT: TWideStringField;
    cdsImpostazioneParametriUSER_UPDATE: TWideStringField;
    cdsImpostazioneParametriLOCAL: TWideStringField;
    qryImpostazioniParametri: TUniQuery;
    qryImpostazioniParametriGRUPPO: TWideStringField;
    qryImpostazioniParametriCHIAVE: TWideStringField;
    qryImpostazioniParametriVALORE: TWideStringField;
    qryImpostazioniParametriINSERT_DATE: TDateTimeField;
    qryImpostazioniParametriUPDATE_DATE: TDateTimeField;
    qryImpostazioniParametriINS_ID: TFloatField;
    qryImpostazioniParametriUPD_ID: TFloatField;
    qryImpostazioniParametriUSERGROUP: TWideStringField;
    qryImpostazioniParametriLANG: TWideStringField;
    qryImpostazioniParametriADMINONLY: TWideStringField;
    qryImpostazioniParametriISGROUP: TWideStringField;
    qryImpostazioniParametriUSER_INSERT: TWideStringField;
    qryImpostazioniParametriUSER_UPDATE: TWideStringField;
    qryImpostazioniParametriLOCAL: TWideStringField;
    sesTest: TJanuaUniConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    FSessionSource: TJanuaSessionSource;
    FSettingsValue: WideString;
    FsettingKey: WideString;
    FDefaultLang: TJanuaisoLanguages;
    FIsGroup: Boolean;
    FValue: WideString;
    FError: WideString;
    FRecordCount: integer;
    Fusername: string;
    FSettingsGroup: WideString;
    procedure SetSessionSource(const Value: TJanuaSessionSource);
    procedure SetsettingKey(const Value: WideString);
    procedure SetSettingsValue(const Value: WideString);
    procedure SetDefaultLang(const Value: TJanuaisoLanguages);
    procedure SetIsGroup(const Value: Boolean);
    procedure SetError(const Value: WideString);
    procedure SetRecordCount(const Value: integer);
    procedure Setusername(const Value: string);
    procedure SetSettingGroup(const Value: WideString);
    function GetValueInternal(Default: WideString): boolean;
    function GetValueSQLInternal(Default: WideString): boolean;
    { Private declarations }
    {
      Questo componente Gestisce la lettura scrittura di impostazioni sul server
      GetValue recupera il valore di una voce chiave-valore.
      nota: in questo momento NON imposta il valore sul db creando la chiave se non trovata
      SetValue: se GetValue = False o se si deve cambiare il valore impostando le proprietà
      SettingsGroup
      SettingKey
      IsGroup
      SettingsVAlue
    }
  public
    { Public declarations }
    function GetValue(Default: WideString): boolean;
    function SetValue: Boolean;
  published
     property SessionSource: TJanuaSessionSource read FSessionSource write SetSessionSource;
     property settingKey: WideString read FsettingKey write SetsettingKey;
     property SettingsValue: WideString read FSettingsValue write SetSettingsValue;
     property DefaultLang: TJanuaisoLanguages read FDefaultLang write SetDefaultLang default jilItaliano_Italia;
     property IsGroup: Boolean read FIsGroup write SetIsGroup;
     property Error: WideString read FError write SetError;
     property RecordCount: integer read FRecordCount write SetRecordCount;
     property username: string read Fusername write Setusername;
     property SettingsGroup: WideString read FSettingsGroup write SetSettingGroup;
  end;

var
  dmSettings: TdmSettings;

implementation

{$R *.dfm}

{ TDataModule3 }

procedure TdmSettings.DataModuleCreate(Sender: TObject);
begin
   FDefaultLang := jilItaliano_Italia;
   FIsGroup := False;
end;



function TdmSettings.GetValue(Default: WideString): boolean;
begin
  Result := GetValueInternal(Default);
  if not Result then Result := GetValueSQLInternal(Default);
end;

function TdmSettings.GetValueInternal(Default: WideString): boolean;
begin
   Result := True;
end;

function TdmSettings.GetValueSQLInternal(Default: WideString): boolean;
begin
  try
     qryImpostazioniParametri.Close;
     qryImpostazioniParametri.ParamByName('chiave').Value := FsettingKey;
     qryImpostazioniParametri.ParamByName('gruppo').Value := FSettingsGroup;
     qryImpostazioniParametri.ParamByName('USERGROUP').Value := Fusername;
     qryImpostazioniParametri.Open;
     cdsImpostazioneParametri.Filtered := False;

     //CloneDataset(; 

     FRecordCount := qryImpostazioniParametri.RecordCount;

     if FRecordCount = 1 then
        FSettingsValue := qryImpostazioniParametriValore.AsString
     else
        FSettingsValue := Default; 
     

  except on e: exception do
  begin
     Result := False;
     Error := e.Message;
  end;

  end;
end;

procedure TdmSettings.SetDefaultLang(const Value: TJanuaisoLanguages);
begin
  FDefaultLang := Value;
end;

procedure TdmSettings.SetError(const Value: WideString);
begin
  FError := Value;
end;

procedure TdmSettings.SetIsGroup(const Value: Boolean);
begin
  FIsGroup := Value;
end;

procedure TdmSettings.SetRecordCount(const Value: integer);
begin
  FRecordCount := Value;
end;

procedure TdmSettings.SetSessionSource(const Value: TJanuaSessionSource);
begin
  FSessionSource := Value;
  if Assigned(FSessionSource) then
      qryImpostazioniParametri.Session := FSessionSource.Orasession
  else
     qryImpostazioniParametri.Session := nil;
end;

procedure TdmSettings.SetSettingGroup(const Value: WideString);
begin
  FSettingsGroup := Value;
end;

procedure TdmSettings.SetsettingKey(const Value: WideString);
begin
  FsettingKey := Value;
end;


procedure TdmSettings.SetSettingsValue(const Value: WideString);
begin
  FSettingsValue := Value;
end;

procedure TdmSettings.Setusername(const Value: string);
begin
  Fusername := Value;
end;

function TdmSettings.SetValue: Boolean;
begin
  try
     qryImpostazioniParametri.Close;
     qryImpostazioniParametri.ParamByName('chiave').Value := FsettingKey;
     qryImpostazioniParametri.ParamByName('gruppo').Value := FSettingsGroup;
     qryImpostazioniParametri.ParamByName('USERGROUP').Value := Fusername;
     qryImpostazioniParametri.Open;

     FRecordCount := qryImpostazioniParametri.RecordCount;

     if FRecordCount = 1 then  qryImpostazioniParametri.Edit else qryImpostazioniParametri.Append;

     qryImpostazioniParametriLANG.AsWideString := 'ITA';
     qryImpostazioniParametriGRUPPO.AsWideString := FSettingsGroup;
     qryImpostazioniParametriCHIAVE.AsWideString := FsettingKey;
     qryImpostazioniParametriVALORE.AsWideString := FSettingsValue;
     qryImpostazioniParametriUSERGROUP.Value := FUsername;
     qryImpostazioniParametriADMINONLY.Value := 'N';
     qryImpostazioniParametriISGROUP.Value := 'N';

     qryImpostazioniParametri.Post;

     
     qryImpostazioniParametri.Close;
     
  except on e: exception do
  begin
     Result := False;
     Error := e.Message;
  end;

  end;
end;

end.
