// Get-Set Cookies = Cookies
unit CookiesGetSetCookies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniDateTimePicker, uniEdit, uniLabel,
  uniButton, uniPanel, uniGUIBaseClasses;

type
  TUniCookiesGetSetCookies = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniPanel3: TUniPanel;
    UniLabel3: TUniLabel;
    UniButton3: TUniButton;
    UniEdit3: TUniEdit;
    UniPanel4: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel4: TUniLabel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniButton2: TUniButton;
    UniDateTimePicker1: TUniDateTimePicker;
    UniMemo1: TUniMemo;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}

 procedure TUniCookiesGetSetCookies.UniButton1Click(Sender: TObject);
var
  I : Integer;
begin
  if UniApplication.Cookies.Count>0 then
    for I := 0 to UniApplication.Cookies.Count - 1 do
      UniMemo1.Lines.Add('>'+UniApplication.Cookies[I])
  else
    UniMemo1.Lines.Add('>No Cookies found!');
end;

procedure TUniCookiesGetSetCookies.UniButton2Click(Sender: TObject);
begin
  UniApplication.Cookies.SetCookie(UniEdit1.Text, UniEdit2.Text, UniDateTimePicker1.DateTime);
end;

procedure TUniCookiesGetSetCookies.UniButton3Click(Sender: TObject);
begin
  UniMemo1.Lines.Add('>'+UniApplication.Cookies.Values[UniEdit3.Text]);
end;

procedure TUniCookiesGetSetCookies.UniFrameCreate(Sender: TObject);
begin
  UniDateTimePicker1.DateTime:=Now+(30.0/1440.0);  // now +30 mins
end;

initialization
  RegisterClass(TUniCookiesGetSetCookies);

end.
