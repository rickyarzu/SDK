unit Janua.Legacy.System;

interface

uses
  System.Classes, udmJanuaLegacySystem;

type
  TJanuaLegacySystem = class(TComponent)
  private
    { Private declarations }
    FApplicationName: string;
    FTestingFileName: string;
    FdmJanuaSystem: TdmJanuaLegacySystem;
    procedure SetTestingFileName(const Value: string);
    function LeggistringaRegistryOld(Stringa: string; chiave: string; default: string): string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ReadStringRegistry(strKey: string; strString: string; Machine: boolean; default: string): string;
    procedure WriteFileText(writeText: string);
    function ReadXMLString(strKey: string; strString: String; default: string): string;
    procedure PublicLoadRegistry;
    function WriteRegistryString(strKey: string; strString: string; Machine: boolean; default: string): string;
    procedure LoadREgistry;
  published
    { Published declarations }
    Property ApplicationName: String read FApplicationName write FApplicationName;
    Property TestingFileName: string read FTestingFileName write SetTestingFileName;
  end;

Type
  TJanuaWinRegistry = class
  public
    class function ReadIntegerRegistry(const strKey, strString: string; const Machine: boolean;
      default: integer): integer;
    class function WriteIntegerRegistry(const strKey, strString: string; const Machine: boolean;
      default: integer): integer;

    class function ReadStringRegistry(strKey: string; strString: string; Machine: boolean; default: string): string;
    class function WriteStringRegistry(strKey: string; strString: string; Machine: boolean; default: string): string;
  end;

implementation

uses System.SysUtils, System.Variants,
{$IFDEF MSWINDOWS}Registry, Windows, {$ENDIF MSWINDOWS}
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Comp.Client,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  Janua.Application.Framework, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions;

function TJanuaLegacySystem.LeggistringaRegistryOld(Stringa, chiave, default: string): string;
// ********************** funzione di lettura stringa dal registry *************
// questa funzione legge una stringa dal registro nell'area del programma
// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
// l'area del programma è la stringa chiave.
// ******************************************************************************
{$IFDEF MSWINDOWS}
var
  Reg: TRegistry;
  valore: string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;

    if Reg.OpenKey('\Software\Underglobe\' + FApplicationName + '\' + chiave, True) then
    begin
      valore := Reg.ReadString(Stringa);
      if valore = '' then
      begin
        Reg.WriteString(Stringa, default);
        Result := default;
      end
      else
        Result := valore;
    end
    else
    begin
      Result := default;
      Reg.CreateKey('\Software\Underglobe\' + FApplicationName + '\' + chiave);
      Reg.WriteString(Stringa, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}

begin
  Result := '';
{$ENDIF MSWINDOWS}
end;

procedure TJanuaLegacySystem.LoadREgistry;
begin
  if not assigned(FdmJanuaSystem) then
    FdmJanuaSystem := TdmJanuaLegacySystem.Create(nil);
  // carica il registro impostazioni dal file system
  if FdmJanuaSystem.Registry.Active then
    FdmJanuaSystem.Registry.Close;
  // se era caricato un registro questo viene chiuso....
  if not FileExists(ApplicationName + 'UTF8.xml') then
  begin
    FdmJanuaSystem.Registry.CreateDataSet;
    // Registry.Active := True;
    FdmJanuaSystem.Registry.SaveToFile(ApplicationName + 'UTF8' + '.xml', TFDStorageFormat.sfXML);
    FdmJanuaSystem.Registry.Tag := 1
  end;

  try
    FdmJanuaSystem.Registry.LoadFromFile(ApplicationName + 'UTF8' + '.xml');
  except
    // se non ci riesce allora lo crea ex novo......
    FdmJanuaSystem.Registry.CreateDataSet;
    // Registry.Active := True;
    FdmJanuaSystem.Registry.SaveToFile(ApplicationName + 'UTF8' + '.xml', TFDStorageFormat.sfXML);
    FdmJanuaSystem.Registry.Tag := 1;
  end;
end;

procedure TJanuaLegacySystem.PublicLoadRegistry;
begin
  if not assigned(FdmJanuaSystem) then
    FdmJanuaSystem := TdmJanuaLegacySystem.Create(nil);
  with (FdmJanuaSystem as TdmJanuaLegacySystem) do
  begin
    if not FileExists('c:\januaproject\' + FApplicationName + 'UTF8.xml') then
    begin
      // se non ci riesce allora lo crea ex novo......
      PublicRegistry.CreateDataSet;
      // Registry.Active := True;
      PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', TFDStorageFormat.sfXML);
      PublicRegistry.Tag := 1
    end;
    // carica il registro impostazioni dal file system
    if PublicRegistry.Active then
      Registry.Close;
    // se era caricato un registro questo viene chiuso....
    try
      if FileExists('c:\januaproject\' + FApplicationName + 'UTF8.xml') then
        PublicRegistry.LoadFromFile('c:\januaproject\' + FApplicationName + 'UTF8.xml')
      else
      begin
        PublicRegistry.CreateDataSet;
        // Registry.Active := True;
        PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', TFDStorageFormat.sfXML);
        PublicRegistry.Tag := 1
      end;
    except
      // se non ci riesce allora lo crea ex novo......
      PublicRegistry.CreateDataSet;
      // Registry.Active := True;
      PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', TFDStorageFormat.sfXML);
      PublicRegistry.Tag := 1
    end;
  end;

end;

function TJanuaLegacySystem.ReadStringRegistry(strKey, strString: string; Machine: boolean; default: string): string;
begin
end;

function TJanuaLegacySystem.ReadXMLString(strKey, strString, default: string): string;
var
  valore: string;
begin
  // ******************** funzione di scrittura impostazioni su file *************
  // questa funzione legge una stringa dal registro nell'area del programma
  // il programma registra i dati su un file nella sua stessa cartella .xml.
  // il difetto di questo sistema è che: rinominando l'exe si rischia di perdere
  // il contatto con xml (bisogna mantenere costante application.title).
  // ******************************************************************************
  FdmJanuaSystem := TdmJanuaLegacySystem.Create(nil);
  with (FdmJanuaSystem as TdmJanuaLegacySystem) do
  begin
    if not PublicRegistry.Active then
      PublicLoadRegistry;
    if PublicRegistry.Locate('GROUP;STRING', VarArrayOf([strKey, strString]), []) then
      valore := PublicRegistryValue.Value
    else
    begin
      // se non trova il valore di stringa
      try
        // la cerca sul registro dove la scriveva la vecchia applicazione
        valore := LeggistringaRegistryOld(strString, strKey, default);
      except
        // altrimenti ritorna il default
        valore := default;
      end;

      PublicRegistry.Append;
      PublicRegistryGROUP.Value := strKey;
      PublicRegistrySTRING.Value := strString;
      PublicRegistryValue.Value := valore;
      PublicRegistry.Post;
      // salvataggio sul file..
      PublicSaveRegistry;
    end;

    Result := valore;
  end;

end;

procedure TJanuaLegacySystem.SetTestingFileName(const Value: string);
begin
  FTestingFileName := Value;
end;

procedure TJanuaLegacySystem.WriteFileText(writeText: string);
begin
  // ***************************************************************************
  // ******* Procedura di scrittura dello unit.testing *************************
  // ***************************************************************************
  writelog(writeText, FTestingFileName);
end;

function TJanuaLegacySystem.WriteRegistryString(strKey, strString: string; Machine: boolean; default: string): string;
{$IF defined(MSWINDOWS)}
// ********************** funzione di scrittura strString dal registry *************
// questa funzione legge una strString dal registro nell'area del programma
// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\JANUAPROJECT
// l'area del programma è la strString strKey.
// ******************************************************************************
var
  Reg: TRegistry;
  // valore: string;
begin
  Reg := TRegistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Januaproject\' + FApplicationName + '\' + strKey, True) then
    begin
      Reg.WriteString(strString, default);
      Result := default;
    end
    else
    begin
      Reg.CreateKey('\Software\Januaproject\' + FApplicationName + '\' + strKey);
      Reg.WriteString(strString, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE  defined(MSWINDOWS)}

begin
  Result := default;
{$ENDIF defined(MSWINDOWS)}
end;

{ TJanuaWinRegistry }

class function TJanuaWinRegistry.ReadIntegerRegistry(const strKey, strString: string; const Machine: boolean;
  default: integer): integer;
{$IF defined(MSWINDOWS)}
var
  Reg: TRegistry;
begin
  Result := default;
  Reg := TRegistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey, True) then
    begin
      Result := Reg.ReadInteger(strString);

      if (Result = 0) then
      begin
        Result := default;
        Reg.WriteInteger(strString, Result);
      end
    end
    else
    begin
      try
        Reg.CreateKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey);
        Result := Default;
        Reg.WriteInteger(strString, Result);
      except
        Result := Default;
      end;
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE  defined(MSWINDOWS)}

begin
  Result := default;
{$ENDIF defined(MSWINDOWS)}
end;

class function TJanuaWinRegistry.ReadStringRegistry(strKey, strString: string; Machine: boolean;
  default: string): string;
// ********************** funzione di lettura strString dal registry *************
// questa funzione legge una strString dal registro nell'area del programma
// l'area di lavoro base è RootKey\SOFTWARE\Januaproject\CLIENT
// l'area del programma è la strString strKey.
// ******************************************************************************
{$IF defined(MSWINDOWS)}
var
  Reg: TRegistry;
  valore: string;
begin
  Reg := TRegistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey, True) then
    begin
      valore := Reg.ReadString(strString);

      if valore = '' then
      begin
        {
          if Machine then
          // PublicLeggistringaXML(strKey, strString,  default)
          else
          valore := ReadXMLString(strKey, strString, default);
        }
        if trim(valore) = '' then
          valore := default;
        Reg.WriteString(strString, valore);
        Result := valore;
      end
      else
        Result := valore;
    end
    else
    begin
      try
        Reg.CreateKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey);
        // valore := ReadXMLString(strKey, strString, default);
        valore := Default;
        Reg.WriteString(strString, valore);
      except
        Result := valore;
      end;
    end;
  finally
    Reg.Free;
  end;
{$ELSE  defined(MSWINDOWS)}

begin
  Result := default;
{$ENDIF defined(MSWINDOWS)}
end;

class function TJanuaWinRegistry.WriteIntegerRegistry(const strKey, strString: string; const Machine: boolean;
  default: integer): integer;
// ********************** funzione di scrittura strString dal registry *************
// questa funzione legge una strString dal registro nell'area del programma
// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\JANUAPROJECT
// l'area del programma è la strString strKey.
// ******************************************************************************
{$IF defined(MSWINDOWS)}
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Result := default;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey, True) then
    begin
      Reg.WriteInteger(strString, default);
      Result := default;
    end
    else
    begin
      Reg.CreateKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey);
      Reg.WriteInteger(strString, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE  defined(MSWINDOWS)}

begin
  Result := default;
{$ENDIF defined(MSWINDOWS)}
end;

class function TJanuaWinRegistry.WriteStringRegistry(strKey, strString: string; Machine: boolean;
  default: string): string;
// ********************** funzione di scrittura strString dal registry *************
// questa funzione legge una strString dal registro nell'area del programma
// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\JANUAPROJECT
// l'area del programma è la strString strKey.
// ******************************************************************************
{$IF defined(MSWINDOWS)}
var
  Reg: TRegistry;
  // valore: string;
begin
  Reg := TRegistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey, True) then
    begin
      Reg.WriteString(strString, default);
      Result := default;
    end
    else
    begin
      Reg.CreateKey('\Software\Januaproject\' + TJanuaApplication.AppName + '\' + strKey);
      Reg.WriteString(strString, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE  defined(MSWINDOWS)}

begin
  Result := default;
{$ENDIF defined(MSWINDOWS)}
end;

end.
