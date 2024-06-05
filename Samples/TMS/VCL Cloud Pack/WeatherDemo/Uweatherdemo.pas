{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2013                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit Uweatherdemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudImage, Buttons, CloudBase, CloudWeather,
  AdvGDIPicture, AdvPicture, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    AdvWeather1: TAdvWeather;
    AdvWeatherLocationLookupProvider1: TAdvWeatherLocationLookupProvider;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    AdvCloudImage1: TAdvCloudImage;
    AdvCloudImage2: TAdvCloudImage;
    AdvCloudImage3: TAdvCloudImage;
    AdvCloudImage4: TAdvCloudImage;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Fore1: TLabel;
    Fore2: TLabel;
    Fore3: TLabel;
    Fore4: TLabel;
    Image1: TImage;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  Appkey = 'xxxxxxxxx';
//

{$I APPIDS.INC}

procedure TForm1.Button2Click(Sender: TObject);
var
  s, country, city: string;
  vp: integer;

  function ItemToString(fi: TWeatherForeCastItem): string;
  begin
    Result := DateToStr(fi.Date);
    Result := Result + #13 + fi.Conditions;
    Result := Result + #13 + 'Temp: ' + FloatTostr(fi.TempLowC)+'°C to '+FloatToStr(fi.TempHighC)+'°C';
    Result := Result + #13 + 'Wind: ' + FloatTostr(fi.MaxWindKmh)+ 'Kmh ' + fi.MaxWindDir;
    Result := Result + #13 + 'Humdity: ' + IntToStr(fi.AveHumidity) + '%';
  end;

begin
  if AdvWeather1.App.Key = '' then
  begin
    ShowMessage('Please request a Wundergroup key and set this to AdvWeather.App.Key');
    Exit;
  end;

  Fore1.Caption := '';
  Fore2.Caption := '';
  Fore3.Caption := '';
  Fore4.Caption := '';
  AdvCloudImage1.URL := '';
  AdvCloudImage2.URL := '';
  AdvCloudImage3.URL := '';
  AdvCloudImage4.URL := '';

  if Label1.Caption  = '' then
  begin
    ShowMessage('No location specified.');
    Exit;
  end;

  s := Label1.Caption;

  vp := pos(',',s);

  if vp > 0 then
  begin
    city := Trim(copy(s,1,vp - 1));
    country := Trim(copy(s,vp + 1,length(s)));
  end
  else
  begin
    country := '';
    city := Label1.Caption;
  end;

  AdvWeather1.GetConditions(country, city);

  AdvWeather1.GetForecast(country, city);

  if AdvWeather1.ForeCast.Count = 4 then
  begin
    AdvCloudImage1.URL := AdvWeather1.ForeCast.Items[0].IconURL;
    AdvCloudImage2.URL := AdvWeather1.ForeCast.Items[1].IconURL;
    AdvCloudImage3.URL := AdvWeather1.ForeCast.Items[2].IconURL;
    AdvCloudImage4.URL := AdvWeather1.ForeCast.Items[3].IconURL;

    Fore1.Caption := ItemToString(AdvWeather1.ForeCast.Items[0]);
    Fore2.Caption := ItemToString(AdvWeather1.ForeCast.Items[1]);
    Fore3.Caption := ItemToString(AdvWeather1.ForeCast.Items[2]);
    Fore4.Caption := ItemToString(AdvWeather1.ForeCast.Items[3]);
  end
  else
    ShowMessage('Weather forecast could not be retrieved');
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: AdvWeather1.Language := wlEnglish;
  1: AdvWeather1.Language := wlSpanish;
  2: AdvWeather1.Language := wlPortuguese;
  3: AdvWeather1.Language := wlFrench;
  4: AdvWeather1.Language := wlGerman;
  5: AdvWeather1.Language := wlDutch;
  6: AdvWeather1.Language := wlItalian;
  7: AdvWeather1.Language := wlPolish;
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  label1.Caption := Edit1.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvWeather1.App.Key := AppKey;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex >= 0 then
    Label1.Caption := ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    ListBox1.Items.Clear;
    AdvWeatherLocationLookupProvider1.Lookup(Edit1.Text, ListBox1.Items);
  end;
end;

end.
