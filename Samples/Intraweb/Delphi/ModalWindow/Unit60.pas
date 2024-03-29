unit Unit60;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompEdit, IWCompListbox, Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, jpeg,
  IWCompLabel, IWCompRectangle, IWHTMLControls;

type
  TIWForm60 = class(TIWAppForm)
    IWModalWindow1: TIWModalWindow;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWRegion1: TIWRegion;
    IWButton3: TIWButton;
    IWListbox1: TIWListbox;
    IWEdit1: TIWEdit;
    IWButton4: TIWButton;
    IWImage1: TIWImage;
    IWButton5: TIWButton;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    IWLabel1: TIWLabel;
    IWRectangle1: TIWRectangle;
    IWEdit2: TIWEdit;
    IWEdit3: TIWEdit;
    IWLink1: TIWLink;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton5AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton6AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure WindowDoOnAsyncClick(Sender: TObject; EventParams: TStringList);
  public
    procedure ShowPdfReport(const ATitle: string);
    procedure ShowRegion(const ATitle: string; ARegion: TIWRegion);
    procedure ShowIWImage(const ATitle: string; AImage: TIWImage);
    procedure ShowImageFile(const ATitle, AFileName: string);
    procedure ShowEmpty(const ATitle: string);
    procedure ShowSite(const ATitle: string; URL: string);
  end;

implementation

{$R *.dfm}

uses
  IWMimeTypes;

procedure TIWForm60.WindowDoOnAsyncClick(Sender: TObject; EventParams: TStringList);
var
  BtnCaption: string;
begin
  if IWModalWindow1.ButtonIndex >= 0 then begin
    BtnCaption := IWModalWindow1.ButtonCaption[IWModalWindow1.ButtonIndex]; // First ButtonIndex is 1, not 0
    WebApplication.ShowMessage('You clicked on button: ' + BtnCaption);
  end;
end;

procedure TIWForm60.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowPdfReport('Sample report');
end;

procedure TIWForm60.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowRegion('IWRegion in modal dialog!', IWRegion1);
end;

procedure TIWForm60.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if Trim(IWEdit1.Text) <> '' then begin
    IWListBox1.Items.Add(IWEdit1.Text);
  end;
  IWEdit1.Clear;
end;

procedure TIWForm60.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowIWImage('IWImage (Drag me)', IWImage1);
end;

// Image File
procedure TIWForm60.IWButton5AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowImageFile('Graphic file', 'img.jpg');
end;

procedure TIWForm60.IWButton6AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowEmpty('Empty window. Notice that "I give up" won''t close it');
end;

procedure TIWForm60.IWButton7AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowSite('This is Atozed''s Blog', 'http://atozed.com/IntraWeb/Blog/index.EN.aspx');
end;

procedure TIWForm60.ShowIWImage(const ATitle: string; AImage: TIWImage);
begin
  with IWModalWindow1 do begin
    Reset;
    Buttons.CommaText := '&OK';
    Title := ATitle;
    ContentElement := AImage;
    DragConstraint := True;
    OnAsyncClick := nil;
    Show;
  end;
end;

procedure TIWForm60.ShowPdfReport(const ATitle: string);
begin
  with IWModalWindow1 do begin
    Reset;
    Autosize := False;
    Title := ATitle;
    Draggable := False;
    WindowWidth := 95;
    WindowHeight := 95;
    Src := 'sample.pdf';
    OnAsyncClick := nil;
    Show;
  end;
end;

procedure TIWForm60.ShowRegion(const ATitle: string; ARegion: TIWRegion);
begin
  with IWModalWindow1 do begin
    Reset;
    Buttons.CommaText := '&OK,&Cancel';
    Title := ATitle;
    ContentElement := ARegion;
    OnAsyncClick := WindowDoOnAsyncClick;
    FriendlyName := 'mydlg';
    CloseButtonVisible := False;
    CloseOnEscKey := False;
    Show;
  end;
end;

procedure TIWForm60.ShowSite(const ATitle: string; URL: string);
begin
  with IWModalWindow1 do begin
    Reset;
    Title := ATitle;
    Autosize := False;
    Draggable := False;
    WindowWidth := 800;
    WindowHeight := 600;
    WindowLeft := 200;
    WindowTop := 100;
    SizeUnit := suPixel;
    Src := URL;
    Show;
  end;
end;

procedure TIWForm60.ShowEmpty(const ATitle: string);
begin
  with IWModalWindow1 do begin
    Reset;
    Buttons.CommaText := '&Yes,&No,&Cancel,"I give &up|NoClose"';
    Title := ATitle;
    Autosize := False;
    WindowWidth := 500;
    WindowHeight := 400;
    SizeUnit := suPixel;
    OnAsyncClick := WindowDoOnAsyncClick;
    Show;
  end;
end;

procedure TIWForm60.ShowImageFile(const ATitle, AFileName: string);
begin
  with IWModalWindow1 do begin
    Reset;
    Title := ATitle;
    Autosize := True;
    Draggable := False;
    Src := AFileName;       // only file name. In this case this file MUST be inside wwwroot folder (no subfolder!)
    OnAsyncClick := nil;
    Show;
  end;
end;

initialization
  TIWForm60.SetAsMainForm;


end.
