unit Janua.Controls.Dialogs.Intf;

interface

uses System.UITypes, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Controls.Forms.Intf,
  Janua.Core.DB.Intf, Janua.Core.Classes.Intf;

type
  TJanuaDialogType = (jdtWarning, jdtError, jdtMessage);

  TJanuaDialogResult = (jdrOk, jdrCancel, jdrRetry, jdrNone);

  TButtonClickEvent = procedure(Sender: TObject) of object;

type
  IJanuaCustomDialog = interface
    ['{0918607A-DC93-4542-84C8-0B456126C4D8}']
    procedure SetText(const Value: string);
    procedure SetTitle(const Value: string);
    function GetTitle: string;
    function GetText: string;
    function Execute: boolean;
    property Title: string read GetTitle write SetTitle;
    property Text: string read GetText write SetText;
  end;

type
  IJanuaCustomDialogForm = interface(IJanuaForm)
    ['{72195977-67E1-462E-9AAD-BD53B35018EF}']
    function GetText: string;
    procedure SetText(const Value: string);
    property Title: string read GetCaption write SetCaption;
    property Text: string read GetText write SetText;
    function Execute: boolean;
  end;

{$REGION 'DialogDate'}

type
  /// <summary> Interface of 'component' Definition with backward compatibility </summary>
  IJanuaDialogDate = interface(IJanuaCustomDialog)
    ['{AF6389C5-6188-438D-93D7-DF5646BD89EE}']
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    /// <summary> Specific Date property added to Standard Dialog Control procedures </summary>
    property Date: TDateTime read GetDate write SetDate;
    /// <summary> points to standard Text property for Backward Compatibility </summary>
    property DisplayText: string read GetText write SetText;
    /// <summary> points to standard Text property for Backward Compatibility </summary>
    property Caption: string read GetTitle write SetTitle;
  end;

type
  IJanuadlgInputDate = interface(IJanuaCustomDialogForm)
    ['{AE5E8117-A0C9-4651-BE19-8DC1A5BCBB42}']
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    property Date: TDateTime read GetDate write SetDate;
  end;

type
  /// <summary> Framework 'specific' interface for VCL Legacy Applications </summary>
  IJanuaVCLdlgInputDate = interface(IJanuadlgInputDate)
    ['{F0AF133D-B4EE-4246-8075-554609FEB266}']
  end;

type
  /// <summary> Framework 'specific' interface for TMS Legacy Applications </summary>
  IJanuaTMSdlgInputDate = interface(IJanuadlgInputDate)
    ['{2C857AE4-35E4-4E0F-BEEE-264CC6F594FF}']
  end;

type
  IJanuaFMXdlgInputDate = interface(IJanuadlgInputDate)
    ['{ADEA75A7-B327-4DEB-8530-972969FBEC80}']
  end;

{$ENDREGION 'DialogDate'}

type
  IJanuaDialog = interface(IJanuaCustomDialog)
    ['{76B79B77-40EE-46A2-B748-4740FFB80C89}']
    procedure SetSelectedFile(const Value: TFileName);
    procedure SetDialogType(const Value: TJanuaDialogType);
    function GetDialogType: TJanuaDialogType;
    function GetSelectedFile: TFileName;
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean;
    function JMessageDlgExt(smessage, button1, button2: string): boolean;
    function JOpenPicture: boolean; overload;
    function JOpenPicture(aDirectory: string): boolean; overload;
    // System Error mostra errori di sistema ed indica True se l'utente decide di Uscire.
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean;
    function SelectDirectory(const aCaption, aRoot: string): boolean;
    { Published declarations }
    property DialogType: TJanuaDialogType read GetDialogType write SetDialogType;
    property SelectedFile: TFileName read GetSelectedFile write SetSelectedFile;
    function SelectMultiString(const Caption: string; const a: array of string;
      const b: array of integer): integer;
  end;

  /// <summary>
  /// this is used to retrieve the 'default' Dialog Text Form (a Mock for test or Visual Fraemwork)
  /// </summary>
type
  IJanuaDlgInputTextForm = interface(IJanuaForm)
    ['{AF666A66-F447-4F5D-A0F1-79B0A4336FF5}']
    { Private declarations }
    function GetText: string;
    function GetLabelCaption: string;
    function GetFormCaption: string;
    procedure SetFormCaption(const Value: string);
    procedure SetLabelCaption(const Value: string);
    procedure SetText(const Value: string);
    { Public declarations }
    property Text: string Read GetText write SetText;
    property FormCaption: string Read GetFormCaption write SetFormCaption;
    property LabelCaption: string Read GetLabelCaption write SetLabelCaption;
  end;

  IJanuaFMXInputTextForm = interface(IJanuaForm)
    ['{642F72C1-1168-434E-9D6A-9CF11922B2B4}']
  end;

  IJanuaVCLInputTextForm = interface(IJanuaForm)
    ['{9AFEC0DE-2915-44EA-9603-2098D83445B5}']
  end;

  IJanuaTMSInputTextForm = interface(IJanuaForm)
    ['{31B623BE-B6A0-4FA0-BEA9-75E0D125B735}']
  end;

  IJanuaDialogText = interface(IJanuaCustomDialog)
    ['{95757EC8-394A-49E5-9610-5237CA6E55E2}']
    { Protected declarations }
    function GetCaption: String;
    function GetDisplayText: String;
    function GetCharCase: TEditCharCase;
    procedure SetCaption(const Value: String);
    procedure SetDisplayText(const Value: String);
    procedure SetCharCase(const Value: TEditCharCase);
    { Public declarations }
    function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string;
    { Published declarations }
    property Caption: String read GetCaption write SetCaption;
    property DisplayText: String read GetDisplayText write SetDisplayText;
    property CharCase: TEditCharCase read GetCharCase write SetCharCase;
  end;

type
  /// <summary>This interface represents the skeleton of a login Dialog Form called by login Dialog </summary>
  IJanuaLoginDialogForm = interface(IJanuaForm)
    ['{964E59B3-B508-4A9E-8083-3C4DDFE7C05B}']
  end;

  IJanuaLoginDialog = interface(IJanuaCustomDialog)
    ['{C299866A-8350-4893-BF94-41528AFE7728}']
    function GetPassword: string;
    function GetUsername: string;
    function GetLogoImage: TJanuaBlob;
    procedure SetLogoImage(const Value: TJanuaBlob);
    function GetSelectedServer: string;
    function GetSelectServer: boolean;
    function GetServerList: TStrings;
    function GetSetServer: boolean;
    function GetJanuaServerSession: TJanuaServerSession;
    function GetShowServerButton: boolean;
    function GetShowCancelButton: boolean;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetSelectedServer(const Value: string);
    procedure SetServerList(const Value: TStrings);
    procedure SetSetServer(const Value: boolean);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetShowServerButton(const Value: boolean);
    procedure SetShowCancelButton(const Value: boolean);
    procedure SetSelectServer(const Value: boolean);
    // Properties
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property LogoImage: TJanuaBlob read GetLogoImage write SetLogoImage;
    property ServerList: TStrings read GetServerList write SetServerList;
    property SelectedServer: string read GetSelectedServer write SetSelectedServer;
    property SelectServer: boolean read GetSelectServer write SetSelectServer;
  end;

  IJanuaServerDialog = interface(IJanuaCustomDialog)
    ['{53790BDC-71C1-4035-98A3-532D29F52B40}']
    procedure SetServerRecordConf(const Value: TJanuaServerRecordConf);
    function GetServerRecordConf: TJanuaServerRecordConf;
    procedure SetJanuaDBConnection(const Value: IJanuaDBConnection);
    function GetJanuaDBConnection: IJanuaDBConnection;

    property JanuaDBConnection: IJanuaDBConnection read GetJanuaDBConnection write SetJanuaDBConnection;
    property ServerConf: TJanuaServerRecordConf read GetServerRecordConf write SetServerRecordConf;

    { function GetJanuaServerSession: TJanuaServerSession;
      procedure SetJanuaServerSession(const Value: TJanuaServerSession);
      property JanuaServerSession: TJanuaServerSession read GetJanuaServerSession write SetJanuaServerSession; }
  end;

type
  /// <summary>This interface represents the skeleton of a login Dialog Form called by integer </summary>
  IJanuaDlgIntegerForm = interface(IJanuaForm)
    ['{4B4ACC82-52FF-4A0F-8641-01D15D57C2BE}']
    { Protected declarations }
    function GetCaption: String;
    function GetNumber: Int64;
    function GetDisplayText: String;
    procedure SetCaption(const Value: String);
    procedure SetNumber(const Value: Int64);
    procedure SetDisplayText(const Value: String);
    { Public declarations }
    { Published declarations }
    property Number: Int64 read GetNumber write SetNumber;
    property Caption: String read GetCaption write SetCaption;
    property DisplayText: String read GetDisplayText write SetDisplayText;
    function Execute: boolean;
  end;

type
  IJanuaDialogInteger = interface(IJanuaCustomDialog)
    ['{F7ADFDAC-115B-4D24-83A0-7925FF98A368}']
    { Protected declarations }
    function GetNumber: Int64;
    procedure SetNumber(const Value: Int64);
    { Published declarations }
    property Number: Int64 read GetNumber write SetNumber;
    function InputInteger(const InputText: string; const aDefault: integer = 0): integer;
  end;

type
  IDlgInputDateForm = interface(IJanuaForm)
    ['{739A0ADE-D00F-4AB9-9315-1B217D8828B0}']
    procedure AdvSpinEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure PlannerMaskDatePicker1KeyPress(Sender: TObject; var Key: Char);
    // protected
    function GetDate: TDateTime;
    function GetJCaption: string;
    function GetInputText: string;
    procedure SetDate(const Value: TDateTime);
    procedure SetJCaption(const Value: string);
    procedure SetInputText(const Value: string);
    { Public declarations }
    property Date: TDateTime read GetDate write SetDate;
    property Caption: string read GetJCaption write SetJCaption;
    property InputText: string read GetInputText write SetInputText;
  end;

  IJanuaOpenFileDialog = interface(IJanuaInterface)
    ['{45684AE5-0140-4969-A741-4D96488E11D8}']
    function GetFileExtension: string;
    function GetFilename: String;
    function GetInitialDir: string;
    procedure SetFilename(const Value: String);
    procedure SetInitialDir(const Value: string);
    function GetDirectoryName: string;
    function GetFileNameNoExt: string;
    function OpenFile: boolean;
    function OpenDirectory(const aInitialDir: string = ''): string;
    // public properties
    property Filename: String read GetFilename write SetFilename;
    property FileNameNoExt: string read GetFileNameNoExt;
    property InitialDir: string read GetInitialDir write SetInitialDir;
    property FileExtension: string read GetFileExtension;
  end;

implementation

end.
