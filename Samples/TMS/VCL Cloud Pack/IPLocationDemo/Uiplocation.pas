unit Uiplocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudBase, CloudIPLoc;

type
  TForm5 = class(TForm)
    Button1: TButton;
    AdvIPLocation1: TAdvIPLocation;
    Button2: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button3: TButton;
    Edit2: TEdit;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillMemo(memo: TMemo);
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  if AdvIPLocation1.GetIPLocation then
    FillMemo(memo1)
  else
    memo1.Lines.Text := 'Error determining IP location';
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  if AdvIPLocation1.GetIPLocation(edit1.Text) then
    FillMemo(memo2)
  else
    memo2.Lines.Text := 'Error determining IP location';

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  if AdvIPLocation1.GetIPLocationFromServer(edit2.Text) then
    FillMemo(memo3)
  else
    memo3.Lines.Text := 'Error determining IP location';
end;

procedure TForm5.FillMemo(memo: TMemo);
begin
  memo.Lines.Add('IP: '+ AdvIPLocation1.IPInfo.IP);
  memo.Lines.Add('Country code: '+ AdvIPLocation1.IPInfo.CountryCode);
  memo.Lines.Add('Country name: '+ AdvIPLocation1.IPInfo.CountryName);
  memo.Lines.Add('Region code: '+ AdvIPLocation1.IPInfo.RegionCode);
  memo.Lines.Add('Region name: '+ AdvIPLocation1.IPInfo.RegionName);
  memo.Lines.Add('City: '+ AdvIPLocation1.IPInfo.City);
  memo.Lines.Add('ZIP code: '+ AdvIPLocation1.IPInfo.ZIPCode);
  memo.Lines.Add('Metro code: '+ AdvIPLocation1.IPInfo.MetroCode);
  memo.Lines.Add('Area code: '+ AdvIPLocation1.IPInfo.AreaCode);
  memo.Lines.Add('Longitude: '+ FloatToStr(AdvIPLocation1.IPInfo.Longitude));
  memo.Lines.Add('Latitude: '+ FloatToStr(AdvIPLocation1.IPInfo.Latitude));
end;

end.
