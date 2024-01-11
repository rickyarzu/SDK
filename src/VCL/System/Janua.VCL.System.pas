unit Janua.VCL.System;

interface

uses
  System.SysUtils, System.Classes, Registry, Windows, Variants, DBClient,
  Data.DB, Janua.Core.Classes, Janua.Core.System, udmJanuaVCLSystem,
  VCL.Controls, VCL.StdCtrls,
  Janua.Core.CustomControls;

type
  /// <summary>
  /// Classe Componente di Sistema per il Framework VCL.
  /// </summary>
  TJanuaVCLSystem = class(TJanuaCoreComponent)
  private
    { Private declarations }
    class function LeggistringaRegistryOld(Stringa: string; chiave: string; default: string): string;
  protected
    { Protected declarations }
  public
    class function GetApplicationName: String;
    class function GetTestingFileName: string;
    class procedure SetApplicationName(const Value: String);
    class procedure SetTestingFileName(const Value: string);
    { Public declarations }
    /// <summary>
    /// <para>
    /// funzione di lettura strString dal registry questa funzione legge
    /// una Stringa dal registro nell'area del programma l'area di lavoro
    /// base è RootKey\SOFTWARE\Januaproject\CLIENT
    /// </para>
    /// <para>
    /// l'area del programma è la strString strKey.
    /// </para>
    /// </summary>
    /// <param name="strKey">
    /// Chiave di Registro
    /// </param>
    /// <param name="strString">
    /// Stringa della Variabile da leggere
    /// </param>
    /// <param name="Machine">
    /// Se livello Macchina o Utente
    /// </param>
    /// <param name="default">
    /// Valore di Default
    /// </param>
    class function ReadStringRegistry(strKey: string; strString: string; Machine: boolean;
      default: string): string;

    /// <summary>
    /// Procedura di scrittura dello unit.testing
    /// </summary>
    /// <param name="writeText">
    /// Stringa di Test
    /// </param>
    class procedure WriteFileText(writeText: string);
    // function ReadXMLString ( strKey: string; strString: String; default: string): string;

    /// <summary>
    /// <para>
    /// questa funzione scrive una Strigna dal registro nell'area del programma
    /// </para>
    /// <para>
    /// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\JANUAPROJECT
    /// l'area del programma è la strString strKey.
    /// </para>
    /// </summary>
    /// <param name="strKey">
    /// Chiave del Registro
    /// </param>
    /// <param name="strString">
    /// Stringa di Ricerca Valore
    /// </param>
    /// <param name="Machine">
    /// Indica se a livello Sistema o Utente (True, False)
    /// </param>
    /// <param name="default">
    /// Valore di Default Ritornato
    /// </param>
    class function WriteRegistryString(strKey: string; strString: string; Machine: boolean; default: string)
      : string; virtual;
  published
    { Published declarations }
    Property ApplicationName: String read GetApplicationName write SetApplicationName;
    Property TestingFileName: string read GetTestingFileName write SetTestingFileName;
  end;

type
  /// <summary>
  /// Legacy compliant System Component to mantain older Delphi
  /// compatibilities
  /// </summary>
  TJanuaSystem = class(TJanuaVCLSystem)
  private
  protected
    class function LeggistringaRegistryOld(Stringa: string; chiave: string; default: string): string;
  public
    class function GetClientName: string;
    class function ReadStringRegistry(strKey: string; strString: string; Machine: boolean;
      default: string): string;
    class procedure WriteFileText(writeText: string);
    class function ReadXMLString(strKey: string; strString: String; default: string): string;
    class procedure PublicLoadRegistry;
    class function WriteRegistryString(strKey: string; strString: string; Machine: boolean; default: string)
      : string; override;
    class procedure LoadRegistry;
  published
    property ClientName: string read GetClientName;
  end;

function PublicdmJanuaSystem: TdmJanuaSystem;

var
  FApplicationName: string;
  FTestingFileName: string;

implementation

uses Janua.Application.Framework, Janua.Core.Functions;

var
  FDmJanuaSystem: TdmJanuaSystem;

function PublicdmJanuaSystem: TdmJanuaSystem;
begin
  if not Assigned(FDmJanuaSystem) then
    try
      FDmJanuaSystem := TdmJanuaSystem.Create(nil);
    except
      on e: exception do
        raise exception.Create('VCL.System.PublicdmJanuaSystem ' + e.Message);
    end;
  Result := FDmJanuaSystem;

end;

{ TJanuaSystem }

class function TJanuaVCLSystem.GetApplicationName: String;
begin
  Result := FApplicationName;
end;

class function TJanuaVCLSystem.GetTestingFileName: string;
begin
  Result := FTestingFileName;
end;

class function TJanuaVCLSystem.LeggistringaRegistryOld(Stringa, chiave, default: string): string;
var
  Reg: TRegistry;
  valore: string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

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
end;

class function TJanuaVCLSystem.ReadStringRegistry(strKey, strString: string; Machine: boolean;
  default: string): string;
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
    if Reg.OpenKey('\Software\Januaproject\' + FApplicationName + '\' + strKey, True) then
    begin
      valore := Reg.ReadString(strString);
      if valore = '' then
      begin
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
        Reg.CreateKey('\Software\Januaproject\' + FApplicationName + '\' + strKey);
        Reg.WriteString(strString, valore);
      except
        Result := valore;
      end;
    end;
  finally
    Reg.Free;
    inherited;
  end;
end;

class procedure TJanuaVCLSystem.WriteFileText(writeText: string);
begin
  TJanuaCoreOs.WriteFileText(writeText, FTestingFileName);
end;

class function TJanuaVCLSystem.WriteRegistryString(strKey, strString: string; Machine: boolean;
  default: string): string;
var
  Reg: TRegistry;
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
end;

class function TJanuaSystem.GetClientName: string;
begin
  Result := self.ReadStringRegistry('CLIENTNAME', '\Volatile Environment', False, 'Console');
end;

class function TJanuaSystem.LeggistringaRegistryOld(Stringa, chiave, default: string): string;
// ********************** funzione di lettura stringa dal registry *************
// questa funzione legge una stringa dal registro nell'area del programma
// l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
// l'area del programma è la stringa chiave.
// ******************************************************************************
var
  Reg: TRegistry;
  valore: string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

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
  end;
end;

class procedure TJanuaSystem.LoadRegistry;
begin

  with PublicdmJanuaSystem do
  begin
    // carica il registro impostazioni dal file system
    if Registry.Active then
      Registry.Close;
    // se era caricato un registro questo viene chiuso....
    if not FileExists(ApplicationName + 'UTF8.xml') then
    begin
      Registry.CreateDataSet;
      // Registry.Active := True;
      Registry.SaveToFile(ApplicationName + 'UTF8' + '.xml', dfXMLUTF8);
      Registry.Tag := 1
    end;

    try
      Registry.LoadFromFile(ApplicationName + 'UTF8' + '.xml');
    except
      // se non ci riesce allora lo crea ex novo......
      Registry.CreateDataSet;
      // Registry.Active := True;
      Registry.SaveToFile(ApplicationName + 'UTF8' + '.xml', dfXMLUTF8);
      Registry.Tag := 1
    end;
  end;

end;

class procedure TJanuaSystem.PublicLoadRegistry;
begin
  with PublicdmJanuaSystem do
  begin
    if not FileExists('c:\januaproject\' + FApplicationName + 'UTF8.xml') then
    begin
      // se non ci riesce allora lo crea ex novo......
      PublicRegistry.CreateDataSet;
      // Registry.Active := True;
      PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', dfXMLUTF8);
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
        PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', dfXMLUTF8);
        PublicRegistry.Tag := 1
      end;
    except
      // se non ci riesce allora lo crea ex novo......
      PublicRegistry.CreateDataSet;
      // Registry.Active := True;
      PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', dfXMLUTF8);
      PublicRegistry.Tag := 1
    end;
  end;

end;

class function TJanuaSystem.ReadStringRegistry(strKey, strString: string; Machine: boolean;
  default: string): string;
// ********************** funzione di lettura strString dal registry *************
// questa funzione legge una strString dal registro nell'area del programma
// l'area di lavoro base è RootKey\SOFTWARE\Januaproject\CLIENT
// l'area del programma è la strString strKey.
// ******************************************************************************
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
    if Reg.OpenKey('\Software\Januaproject\' + FApplicationName + '\' + strKey, True) then
    begin
      valore := Reg.ReadString(strString);
      if valore = '' then
      begin
        if Machine then
          // PublicLeggistringaXML(strKey, strString,  default)
        else
          valore := ReadXMLString(strKey, strString, default);
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
        Reg.CreateKey('\Software\Januaproject\' + FApplicationName + '\' + strKey);
        valore := ReadXMLString(strKey, strString, default);
        Reg.WriteString(strString, valore);
      except
        Result := valore;
      end;
    end;
  finally
    Reg.Free;
    inherited;
  end;
end;

class function TJanuaSystem.ReadXMLString(strKey, strString, default: string): string;
var
  valore: string;
begin
  // ******************** funzione di scrittura impostazioni su file *************
  // questa funzione legge una stringa dal registro nell'area del programma
  // il programma registra i dati su un file nella sua stessa cartella .xml.
  // il difetto di questo sistema è che: rinominando l'exe si rischia di perdere
  // il contatto con xml (bisogna mantenere costante application.title).
  // ******************************************************************************
  with PublicdmJanuaSystem do
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

class procedure TJanuaVCLSystem.SetApplicationName(const Value: String);
begin
  FApplicationName := Value;
end;

class procedure TJanuaVCLSystem.SetTestingFileName(const Value: string);
begin
  FTestingFileName := Value;
end;

class procedure TJanuaSystem.WriteFileText(writeText: string);
begin
  // ***************************************************************************
  // ******* Procedura di scrittura dello unit.testing *************************
  // ***************************************************************************
  TJanuaCoreOs.WriteFileText(FTestingFileName, writeText);
  // writelog(writeText, FTestingFileName);
end;

class function TJanuaSystem.WriteRegistryString(strKey, strString: string; Machine: boolean;
  default: string): string;
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
end;

initialization


finalization

if Assigned(FDmJanuaSystem) then
  FDmJanuaSystem.Free;


end.
