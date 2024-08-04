unit Janua.Core.WebServer;
...

Type
  TJanuaWebServer = class
  public
    constructor Create; overload;
    /// <summary> Create Class imposta la class Var FPort. Variabile 'unica' in tutta l'applicazione </summary>
    class Constructor CreateClass;
  private
    class var FPort: Integer;
  private
    FLogProc: TMessageLogProc;
  public
    class function GetPort(aDefault: Integer): Integer; overload;
    procedure StartServer; overload; virtual; abstract;
    procedure StopServer; overload; virtual; abstract;
    procedure WriteStatus; virtual; abstract;
  public
    property IsActive: Boolean read GetIsActive write SetIsActive;
    property LogProc: TMessageLogProc read FLogProc write SetLogProc;
    class property Port: Integer read GetPort write SetPort;
  end;