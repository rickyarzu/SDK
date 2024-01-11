unit JanuaSystem;

interface

uses
  SysUtils, Classes, Registry,  Windows, udmJanuaSystem, Variants, DBClient
  , MidasLib, Janua.Core.Functions;

type
  TJanuaSystem = class(TComponent)
  private
    { Private declarations }
    FApplicationName: string;
    FTestingFileName: string;
    FdmJanuaSystem: TdmJanuaSystem;
    procedure SetTestingFileName(const Value: string);
    function  LeggistringaRegistryOld(Stringa: string; chiave: string; default:string): string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ReadStringRegistry( strKey: string; strString: string;
                                 Machine: boolean;  default:string): string;
    procedure WriteFileText(writeText: string);
    function ReadXMLString ( strKey: string; strString: String; default: string): string;
    procedure PublicLoadRegistry;
    function WriteRegistryString( strKey: string; strString: string; Machine: boolean;  default:string): string;
    procedure LoadREgistry; 
  published
    { Published declarations }
    Property ApplicationName: String read FApplicationName write FApplicationName;
    Property TestingFileName: string read FTestingFileName write SetTestingFileName;
  end;

procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('Samples', [TJanuaSystem]);
end;

{ TJanuaSystem }


function TJanuaSystem.LeggistringaRegistryOld(Stringa, chiave,
  default: string): string;
// ********************** funzione di lettura stringa dal registry *************
//    questa funzione legge una stringa dal registro nell'area del programma
//    l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
//    l'area del programma è la stringa chiave.
//******************************************************************************
var
   Reg: TRegistry;
   valore: string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;

    if Reg.OpenKey('\Software\Underglobe\' + FApplicationName + '\' + chiave, True)
    then
    begin
         valore := Reg.ReadString(Stringa);
         if valore = '' then begin
            Reg.WriteString(Stringa, default);
            Result := default;
         end
         else Result := valore;
    end
    else
    begin
        Result  := default;
        Reg.CreateKey('\Software\Underglobe\' + FApplicationName + '\' + chiave);
        Reg.WriteString(Stringa, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
end;




procedure TJanuaSystem.LoadREgistry;
begin
 if not assigned(FdmJanuaSystem) then FdmJanuaSystem := TdmJanuaSystem.Create(nil);
 with FdmJanuaSystem do
  begin
  // carica il registro impostazioni dal file system
  if Registry.Active then Registry.Close;
  // se era caricato un registro questo viene chiuso....
  if not FileExists(ApplicationName + 'UTF8.xml') then
  begin
       Registry.CreateDataSet;
       // Registry.Active := True;
       Registry.SaveToFile(ApplicationName   + 'UTF8' +'.xml', dfXMLUTF8);
       Registry.Tag := 1
  end;

  try
      Registry.LoadFromFile(ApplicationName + 'UTF8' + '.xml');
  except
  // se non ci riesce allora lo crea ex novo......
       Registry.CreateDataSet;
       // Registry.Active := True;
       Registry.SaveToFile(ApplicationName   + 'UTF8' +'.xml', dfXMLUTF8);
       Registry.Tag := 1
  end;
 end;

end;

procedure TJanuaSystem.PublicLoadRegistry;
begin
  if not assigned(FdmJanuaSystem) then FdmJanuaSystem := TdmJanuaSystem.Create(nil);
  with FdmJanuaSystem do
  begin
  if not FileExists('c:\januaproject\' + FApplicationName + 'UTF8.xml') then
  begin
      // se non ci riesce allora lo crea ex novo......
       PublicRegistry.CreateDataSet;
       // Registry.Active := True;
       PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName  + 'UTF8.xml', dfXMLUTF8);
       PublicRegistry.Tag := 1
  end;
  // carica il registro impostazioni dal file system
  if PublicRegistry.Active then Registry.Close;
  // se era caricato un registro questo viene chiuso....
  try
     if FileExists('c:\januaproject\' + FApplicationName + 'UTF8.xml') then
         PublicRegistry.LoadFromFile('c:\januaproject\' + FApplicationName + 'UTF8.xml')
     else
     begin
       PublicRegistry.CreateDataSet;
       // Registry.Active := True;
       PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName  + 'UTF8.xml', dfXMLUTF8);
       PublicRegistry.Tag := 1
     end;
  except
  // se non ci riesce allora lo crea ex novo......
       PublicRegistry.CreateDataSet;
       // Registry.Active := True;
       PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName  + 'UTF8.xml', dfXMLUTF8);
       PublicRegistry.Tag := 1
  end;
  end;

end;

function TJanuaSystem.ReadStringRegistry(strKey, strString: string;
  Machine: boolean; default: string): string;
// ********************** funzione di lettura strString dal registry *************
//    questa funzione legge una strString dal registro nell'area del programma
//    l'area di lavoro base è RootKey\SOFTWARE\Januaproject\CLIENT
//    l'area del programma è la strString strKey.
//******************************************************************************
var
   Reg: TRegistry;
   valore: string;
begin
  Reg := TRegistry.Create;
  try
    if Machine then Reg.RootKey := HKEY_LOCAL_MACHINE
        else Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Januaproject\' + FApplicationName + '\' + strKey, True)
    then
    begin
         valore := Reg.ReadString(strString);
         if valore = '' then begin
            if Machine then
             // PublicLeggistringaXML(strKey, strString,  default)
            else
              valore := ReadXMLString(strKey, strString,  default);
            if trim(valore) = '' then valore := default;            
            Reg.WriteString(strString, valore);
            Result  := valore;
         end
         else Result := valore;
    end
    else
    begin
      try
        Reg.CreateKey('\Software\Januaproject\' + FApplicationName + '\' + strKey);
        valore := ReadXMLString(strKey, strString,  default);
        Reg.WriteString(strString, valore);
      except
        Result  := valore;
      end;
    end;
  finally
    Reg.Free;
    inherited;
  end;
end;

function TJanuaSystem.ReadXMLString(strKey, strString, default: string): string;
var
   valore: string;
begin
// ******************** funzione di scrittura impostazioni su file *************
//    questa funzione legge una stringa dal registro nell'area del programma
//    il programma registra i dati su un file nella sua stessa cartella .xml.
//    il difetto di questo sistema è che: rinominando l'exe si rischia di perdere
//    il contatto con xml (bisogna mantenere costante application.title).
//******************************************************************************
   FdmJanuaSystem := TdmJanuaSystem.Create(nil);
   with FdmJanuaSystem do
   begin
     if not PublicRegistry.Active then PublicLoadRegistry;
     if PublicRegistry.Locate('GROUP;STRING', VarArrayOf([strKey,strString]), []) then
       valore := PublicRegistryValue.Value
     else
     begin
        // se non trova il valore di stringa
        try
          // la cerca sul registro dove la scriveva la vecchia applicazione
           valore := LeggistringaRegistryold( strString, strKey, default);
        except
           // altrimenti ritorna il default
           valore := default;
        end;

        PublicRegistry.Append;
        PublicRegistryGROUP.Value := strKey;
        PublicRegistrySTRING.Value := strString;
        PublicRegistryVALUE.Value := valore;
        PublicRegistry.Post;
        //salvataggio sul file..
        PublicSaveRegistry;
     end;

   Result := valore;
   end;

end;



procedure TJanuaSystem.SetTestingFileName(const Value: string);
begin
  FTestingFileName := Value;
end;

procedure TJanuaSystem.WriteFileText(writeText: string);
begin
   //***************************************************************************
   //******* Procedura di scrittura dello unit.testing *************************
   //***************************************************************************
  writelog(writeText, FTestingFileName) ;
end;

function TJanuaSystem.WriteRegistryString(strKey, strString: string;
  Machine: boolean; default: string): string;
// ********************** funzione di scrittura strString dal registry *************
//    questa funzione legge una strString dal registro nell'area del programma
//    l'area di lavoro base è HKE_LOCAL_MACHINE\SOFTWARE\JANUAPROJECT
//    l'area del programma è la strString strKey.
//******************************************************************************
var
   Reg: TRegistry;
 //  valore: string;
begin
  Reg := TRegistry.Create;
  try
    if Machine then Reg.RootKey := HKEY_LOCAL_MACHINE
        else Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Januaproject\' + FApplicationName + '\' + strKey, True)
    then
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

end.
