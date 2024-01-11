unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniLabel, unimLabel,
  uniDateTimePicker, unimDatePicker, unimCarousel, uniGUIBaseClasses, uniButton,
  unimButton, uniTimer, unimTimer, uniImage, unimImage, uniGUImJSForm,
  uniMultiItem, unimSelect, uniMemo, unimMemo, jpeg, uniStrUtils;

type
  TMainmForm = class(TUnimForm)
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimCarouselPage3: TUnimCarouselPage;
    UnimDatePicker1: TUnimDatePicker;
    UnimLabel1: TUnimLabel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimImage1: TUnimImage;
    UnimTimer1: TUnimTimer;
    UnimButton3: TUnimButton;
    UnimSelect1: TUnimSelect;
    UnimMemo1: TUnimMemo;
    UnimCarouselPage4: TUnimCarouselPage;
    UnimCarousel2: TUnimCarousel;
    UnimCarouselPage5: TUnimCarouselPage;
    UnimCarouselPage6: TUnimCarouselPage;
    UnimCarouselPage7: TUnimCarouselPage;
    UnimImage2: TUnimImage;
    UnimButton4: TUnimButton;
    UnimTimer2: TUnimTimer;
    UnimImage3: TUnimImage;
    UnimImage4: TUnimImage;
      function DayFound(DayNumber:Integer):string;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimSelect1Change(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimTimer2Timer(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
      II,Page : Integer;
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

function TMainmForm.DayFound(DayNumber: Integer): string;
begin
  if DayNumber = 1 then
    Result := 'Sunday'
  else if DayNumber = 2 then
    Result := 'Monday'
  else if DayNumber = 3 then
    Result := 'Tuesday'
  else if DayNumber = 4 then
    Result := 'Wednesday'
  else if DayNumber = 5 then
    Result := 'Thursday'
  else if DayNumber = 6 then
    Result := 'Friday'
  else if DayNumber = 7 then
    Result := 'Saturday';
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimLabel1.Caption := DayFound(DayOfWeek(UnimDatePicker1.Date));
end;

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  UnimTimer1.Enabled:=True;
end;

procedure TMainmForm.UnimButton3Click(Sender: TObject);
begin
  UnimTimer1.Enabled:=False;
end;

procedure TMainmForm.UnimButton4Click(Sender: TObject);
begin
  Page := UnimCarousel2.PageIndex;
  if UnimTimer2.Enabled then
  begin
    UnimTimer2.Enabled := False;
    UnimButton4.Caption := 'Start Slide Show';
  end
  else
  begin
    UnimTimer2.Enabled := True;
    UnimButton4.Caption := 'Stop Slide Show';
  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  UnimCarousel1.ActivePage := UnimCarouselPage1;
  UnimDatePicker1.Date := now;
  UnimLabel1.Caption := '';
end;

procedure TMainmForm.UnimSelect1Change(Sender: TObject);
begin
  case UnimSelect1.ItemIndex of
    0 :
      UnimMemo1.Text :='Delphi ''s compilers use their own Object Pascal dialect of Pascal'+
      ' and generate native code for 32- and 64-bit Windows operating systems, as well as 32-bit Mac OS X, iOS and Android.';
    1:
      UnimMemo1.Text := 'uniGUI framework extends Web application development experience'+
       ' to a new dimension. UniGUI enables developers to create, design and debug their Delphi'+
       ' projects as a regular desktop application and then choose one of the available options for'+
       ' deployment. Such as, Windows Service, standalone or ISAPI.';
  end;
end;

procedure TMainmForm.UnimTimer1Timer(Sender: TObject);
var
  FolderPath: string;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  UnimImage1.Picture.LoadFromFile(FolderPath+'images\'+IntToStr(II)+'.jpg');
  Inc(II);
  II:=II mod 5;
end;

procedure TMainmForm.UnimTimer2Timer(Sender: TObject);
begin
  UnimCarousel2.ActivePage := UnimCarousel2.Pages[Page];
  Inc(Page);
  Page := Page mod 3;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
