unit udmJanuaOraWebLog;

interface

uses
   // Embarcadero
   System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Datasnap.DBClient,
   Datasnap.DSServer, Datasnap.DSAuth,
   // Devart
   PgAccess, OraCall, Ora,
   // JanuaProject
   Janua.Core.Jpublic, Janua.Core.Http,
   Janua.Core.System, Janua.Core.Functions,
   Datasnap.Provider, Janua.Core.Classes,

   // Library Specific
   udmJanuaOraModel;

type
   TdmJanuaOraWebLog = class(TdmJanuaOraModel)
      spWebLogRecord: TOraStoredProc;
   private
      { Private declarations }
   protected
   public
      { Public declarations }
     // function recordlog(aLog: TJanuaRecordWebProfile): int64;
   end;

var
   dmJanuaOraWebLog: TdmJanuaOraWebLog;

implementation

{$R *.dfm}
{ TdmJanuaOraWebLog }

(*
function TdmJanuaOraWebLog.recordlog(aLog: TJanuaRecordWebProfile): int64;
begin

   { WEBLOGS.RECORDLOG(
     :, :, :, :, :, :,
     :, :, :, :, :, :P_RESY);
   }
   spWebLogRecord.ParamByName('P_RAWHEADERS').Value := aLog.RawHeaders; //
   spWebLogRecord.ParamByName('P_IPNUMBER').Value := aLog.ipNumber; //
   spWebLogRecord.ParamByName('P_IPADDRESS').Value := aLog.IPAddress; //
   spWebLogRecord.ParamByName('P_PATHINFO').Value := aLog.PathInfo; //
   spWebLogRecord.ParamByName('P_USERAGENT').Value := aLog.UserAgent; //
   spWebLogRecord.ParamByName('P_LANGUAGECODE').Value := aLog.LanguageCode; //
   spWebLogRecord.ParamByName('P_REMOTEADDR').Value := aLog.RemoteAddr; //
   spWebLogRecord.ParamByName('P_HOSTNAME').Value := aLog.Host; //
   if aLog.IsMobile then
      spWebLogRecord.ParamByName('P_ISMOBILE').Value := 'Y'
   else
      spWebLogRecord.ParamByName('P_ISMOBILE').Value := 'N';
   spWebLogRecord.ParamByName('P_BROWSERNAME').Value := aLog.BrowserName; //
   // spWebLogRecord.ParamByName('P_RESX').Value := aLog.; //

   spWebLogRecord.ExecProc;

   Result := spWebLogRecord.ParamByName('Result').AsLargeInt;
end;
*)

end.
