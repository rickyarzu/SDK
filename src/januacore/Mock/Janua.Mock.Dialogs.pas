unit Janua.Mock.Dialogs;

interface

uses System.Classes, Janua.Controls.Dialogs.Intf, Janua.Controls.Dialogs.Impl,
  Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.Core.Types;

type
  /// <summary> Template Class for IJanuaDialog Implementations </summary>
  TJanuaMockDialog = class(TJanuaCustomDialog, IJanuaDialog)
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean; override;
    function JMessageDlgExt(smessage, button1, button2: string): boolean; override;
    function JOpenPicture: boolean; overload; override;
    function JOpenPicture(aDirectory: string): boolean; overload; override;
    // System Error mostra errori di sistema ed indica True se l'utente decide di Uscire.
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean; override;
    function SelectDirectory(const aCaption, aRoot: string): boolean; override;
    function SelectMultiString(const Caption: string; const a: array of string; const b: array of integer)
      : integer; override;
  end;

type
  TJanuaMockStyleManager = class(TJanuaInterfacedObject, IJanuaStyleManager)
  private
    FStyleName: string;
    FStyleList: TStrings;
    function TrySetStyle(const AStyleName: string): boolean;
    procedure WriteStyleLocal;
  protected
    function GetStyleName: string;
    procedure SetStyleName(const Value: string);
    function GetScreenFontName: string;
    function GetStyleList: TStrings;
    function GetScreenFontHeight: integer;
  public
    function InternalActivate: boolean; override;
    procedure ShowSelectThemStyler;
{$IFNDEF AUTOREFCOUNT}
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
{$ENDIF}
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

{ TJanuaMockDialog }

function TJanuaMockDialog.JMessageDlg(smessage: string; const sExtra: string): boolean;
begin
  Result := True
end;

function TJanuaMockDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
begin
  Result := True
end;

function TJanuaMockDialog.JOpenPicture(aDirectory: string): boolean;
begin
  Result := True
end;

function TJanuaMockDialog.JOpenPicture: boolean;
begin
  Result := True
end;

procedure TJanuaMockDialog.JShowError(smessage, sExtra, sHelp: string);
begin
  inherited;

end;

procedure TJanuaMockDialog.JShowMessage(smessage, sExtra, sHelp: string);
begin
  inherited;

end;

function TJanuaMockDialog.JShowSystemError(sTitle, sContent, sExtra: string): boolean;
begin
  Result := True
end;

procedure TJanuaMockDialog.JShowWarning(smessage, sExtra, sHelp: string);
begin
  inherited;

end;

function TJanuaMockDialog.SelectDirectory(const aCaption, aRoot: string): boolean;
begin
  Result := True
end;

function TJanuaMockDialog.SelectMultiString(const Caption: string; const a: array of string;
  const b: array of integer): integer;
begin
  Result := 1;
end;

{ TJanuaMockStyleManager }

procedure TJanuaMockStyleManager.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaMockStyleManager.BeforeDestruction;
begin
  inherited;

end;

constructor TJanuaMockStyleManager.Create;
begin
  inherited;
  FStyleList := TStringList.Create;
end;

destructor TJanuaMockStyleManager.Destroy;
begin
  FStyleList.Free;
  inherited;
end;

function TJanuaMockStyleManager.GetScreenFontHeight: integer;
begin
  Result := 11
end;

function TJanuaMockStyleManager.GetScreenFontName: string;
begin
  Result := 'Segoe UI'
end;

function TJanuaMockStyleManager.GetStyleList: TStrings;
begin
  Result := self.FStyleList
end;

function TJanuaMockStyleManager.GetStyleName: string;
begin
  Result := 'Windows';
end;

function TJanuaMockStyleManager.InternalActivate: boolean;
begin
  Result := True;
end;

procedure TJanuaMockStyleManager.SetStyleName(const Value: string);
begin

end;

procedure TJanuaMockStyleManager.ShowSelectThemStyler;
begin

end;

function TJanuaMockStyleManager.TrySetStyle(const AStyleName: string): boolean;
begin
  Result := True;
end;

procedure TJanuaMockStyleManager.WriteStyleLocal;
begin

end;

end.
