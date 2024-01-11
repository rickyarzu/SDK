unit JanuaSettings;

interface

uses
  SysUtils, Classes, JanuaCore;

type
  TJanuaSettings = class(TComponent)
  private
    FAdminOnly: boolean;
    FSettingsGroup: WideString;
    FSettingsKey: WideString;
    FDefaultLanguage: TJanuaisoLanguages;
    FIsGroup: boolean;
    FSettingsValue: Widestring;
    procedure SetAdminOnly(const Value: boolean);
    procedure SetDefaultLanguage(const Value: TJanuaisoLanguages);
    procedure SetIsGroup(const Value: boolean);
    procedure SetSettingsGroup(const Value: WideString);
    procedure SetSettingsKey(const Value: WideString);
    procedure SetSettingsValue(const Value: Widestring);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ReadValue(sGroup: WideString;  sKey: WideString;
                       sDefault: Widestring; sLanguage: TJanuaisoLanguage): WideString;
    function WriteValue(sGroup: WideString;  sKey: WideString;
                        sValue: WideString; sLanguage: TJanuaisoLanguage): WideString;
    function getVAlue: WideString;
    function setValue: boolean;
  published
    { Published declarations }
    property SettingsGroup: WideString read FSettingsGroup write SetSettingsGroup;
    property SettingsValue: Widestring read FSettingsValue write SetSettingsValue;
    property SettingsKey: WideString read FSettingsKey write SetSettingsKey;
    property DefaultLanguage: TJanuaisoLanguages read FDefaultLanguage write SetDefaultLanguage;
    property IsGroup: boolean read FIsGroup write SetIsGroup;
    property AdminOnly: boolean read FAdminOnly write SetAdminOnly;

  end;

procedure Register;

implementation

uses udmSettings;

procedure Register;
begin
  RegisterComponents('Janua Oracle', [TJanuaSettings]);
end;

{ TJanuaSettings }

function TJanuaSettings.getVAlue: WideString;
var
  a: TDmSettings;
begin
  a := TDmSettings.Create(nil);
  try
     a.SettingsValue := FSettingsVAlue;
     a.settingKey := FSettingsKey;
     a.SettingsGroup := FSettingsGroup;
     a.DefaultLang := FDefaultLanguage;
  finally
    FreeAndNil(a); 
  end;

end;

function TJanuaSettings.ReadValue(sGroup, sKey, sDefault: Widestring;
  sLanguage: TJanuaisoLanguage): WideString;
begin

end;

procedure TJanuaSettings.SetAdminOnly(const Value: boolean);
begin
  FAdminOnly := Value;
end;

procedure TJanuaSettings.SetDefaultLanguage(const Value: TJanuaisoLanguages);
begin
  FDefaultLanguage := Value;
end;

procedure TJanuaSettings.SetIsGroup(const Value: boolean);
begin
  FIsGroup := Value;
end;

procedure TJanuaSettings.SetSettingsGroup(const Value: WideString);
begin
  FSettingsGroup := Value;
end;

procedure TJanuaSettings.SetSettingsKey(const Value: WideString);
begin
  FSettingsKey := Value;
end;

procedure TJanuaSettings.SetSettingsValue(const Value: Widestring);
begin
  FSettingsValue := Value;
end;

function TJanuaSettings.setValue: boolean;
begin

end;

function TJanuaSettings.WriteValue(sGroup, sKey, sValue: WideString;
  sLanguage: TJanuaisoLanguage): WideString;
begin

end;

end.
