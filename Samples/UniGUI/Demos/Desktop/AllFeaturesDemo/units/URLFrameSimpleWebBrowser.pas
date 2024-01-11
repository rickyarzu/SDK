// Simple Web Browser = URLFrame
unit URLFrameSimpleWebBrowser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, Menus,
  uniMainMenu, uniStatusBar, uniButton, uniBitBtn, uniMultiItem, uniComboBox,
  uniURLFrame, uniLabel, uniPanel, uniPageControl, uniImageList;

type
  TUniURLFrameSimpleWebBrowser = class(TUniFrame)
    UniMainContainer: TUniContainerPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniURLFrame1: TUniURLFrame;
    UniNativeImageList1: TUniNativeImageList;
    UniComboBox1: TUniComboBox;
    procedure UniComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniTabSheetClose(Sender: TObject; var AllowClose: Boolean);
    procedure UniComboBox1Select(Sender: TObject);
    procedure UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
  private
    TabClosing : TUniTabSheet;
    procedure GoURL(url: string; URLFrame: TUniURLFrame);
    Procedure PreGoURL(Go : Boolean);
    procedure OnTabClose(Sender: TComponent; AResult:Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  MainModule;

{$R *.dfm}

procedure TUniURLFrameSimpleWebBrowser.GoURL(url: string; URLFrame: TUniURLFrame);
begin
  URLFrame.URL := url;
  UniPageControl1.ActivePage.Caption := url;
end;

procedure TUniURLFrameSimpleWebBrowser.PreGoURL(Go: Boolean);
var
  Frame: TUniURLFrame;
  URL, TabExt: string;
  ComboBox : TUniComboBox;
begin
  TabExt := IntToStr(UniPageControl1.ActivePageIndex + 1);
  ComboBox := (Self.FindComponent('uniComboBox'+TabExt) as TUniComboBox);
  Frame := (Self.FindComponent('uniUrlFrame'+TabExt) as TUniURLFrame);

  if Go then
  begin
    URL := ComboBox.Text;
    if ComboBox.Items.IndexOf(URL)<0 then ComboBox.Items.Add(URL);

    GoURL(URL, Frame);
  end;
end;


procedure TUniURLFrameSimpleWebBrowser.UniComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  URL:string;
  UrlFrame: TUniURLFrame;
  ComboBox : TUniComboBox;
begin
  if Key = 13 then
  begin
    ComboBox := (Sender as TUniComboBox);
    URL := ComboBox.Text;
    if ComboBox.Items.IndexOf(URL) < 0 then ComboBox.Items.Add(URL);

    UrlFrame := (Self.FindComponent('uniUrlFrame'+Copy(ComboBox.Name, 12, MaxInt)) as TUniURLFrame);
    GoURL(URL, UrlFrame);
  end;
end;

procedure TUniURLFrameSimpleWebBrowser.UniComboBox1Select(Sender: TObject);
begin
  PreGoURL(True);
end;

procedure TUniURLFrameSimpleWebBrowser.UniComboBox1TriggerEvent(
  Sender: TUniCustomComboBox; AButtonId: Integer);
var
  NewTab, ControlTab: TUniTabSheet;
  Combo: TUniComboBox;
  UrlFrame : TUniURLFrame;
  Extension : string;
begin
  case AButtonId of
    0 :
      begin
        ControlTab := UniPageControl1.Pages[UniPageControl1.PageCount-1];
        Extension :=  IntToStr(StrToInt(Copy(ControlTab.Name, 12, MaxInt)) + 1);

        NewTab := TUniTabSheet.Create(Self);
        NewTab.Name := 'UniTabSheet'+Extension;
        NewTab.Caption := 'NewTab'+Extension;
        NewTab.PageControl := UniPageControl1;
        NewTab.Closable := True;
        NewTab.OnClose := UniTabSheetClose;

        Combo := TUniComboBox.Create(Self);
        Combo.Parent := NewTab;
        Combo.Name := 'uniComboBox'+ Extension;
        Combo.Text := 'http://';
        Combo.Align := alTop;
        Combo.Items := UniComboBox1.Items;
        Combo.Images := UniComboBox1.Images;
        Combo.HideDefaultTrigger := UniComboBox1.HideDefaultTrigger;
        Combo.ClearButton := UniComboBox1.ClearButton;
        Combo.Triggers := UniComboBox1.Triggers;
        Combo.OnKeyDown := UniComboBox1KeyDown;
        Combo.OnSelect := UniComboBox1Select;
        Combo.OnTriggerEvent := UniComboBox1TriggerEvent;

        UrlFrame := TUniURLFrame.Create(Self);
        UrlFrame.Parent := NewTab;
        UrlFrame.Name := 'uniUrlFrame'+Extension;
        UrlFrame.Align := alClient;

        UniPageControl1.ActivePage := NewTab;
      end;
    1 :
      begin
        PreGoURL(True);
      end;
  end;
end;

procedure TUniURLFrameSimpleWebBrowser.OnTabClose(Sender: TComponent; AResult:Integer);
begin
  if AResult = mrYes then
  begin
    FreeAndNil(TabClosing);
  end;
end;

procedure TUniURLFrameSimpleWebBrowser.UniTabSheetClose(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose := False;
  TabClosing := (Sender as TUniTabSheet);
  MessageDlg('Close Tab?', mtConfirmation, mbYesNo, OnTabClose);
end;

initialization
  RegisterClass(TUniURLFrameSimpleWebBrowser);
end.
