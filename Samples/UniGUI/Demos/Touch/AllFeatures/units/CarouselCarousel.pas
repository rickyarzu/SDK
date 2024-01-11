//Carousel = Carousel
unit CarouselCarousel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniTimer, unimTimer,
  jpeg, uniMemo, unimMemo, uniMultiItem, unimSelect, uniImage,
  unimImage, uniButton, unimButton, uniLabel, unimLabel, uniDateTimePicker,
  unimDatePicker, unimCarousel, uniGUImJSForm, ServerModule, unimPanel,
  uniStrUtils;

type
  TUniCarouselCarousel = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimDatePicker1: TUnimDatePicker;
    UnimLabel1: TUnimLabel;
    UnimButton1: TUnimButton;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimButton2: TUnimButton;
    UnimImage1: TUnimImage;
    UnimButton3: TUnimButton;
    UnimCarouselPage3: TUnimCarouselPage;
    UnimSelect1: TUnimSelect;
    UnimMemo1: TUnimMemo;
    UnimCarouselPage4: TUnimCarouselPage;
    UnimCarousel2: TUnimCarousel;
    UnimCarouselPage5: TUnimCarouselPage;
    UnimImage2: TUnimImage;
    UnimCarouselPage6: TUnimCarouselPage;
    UnimImage3: TUnimImage;
    UnimCarouselPage7: TUnimCarouselPage;
    UnimImage4: TUnimImage;
    UnimButton4: TUnimButton;
    UnimTimer1: TUnimTimer;
    UnimTimer2: TUnimTimer;
    UnimPanel1: TUnimPanel;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimSelect1Change(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
    procedure UnimTimer2Timer(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
   II,Page : Integer;
   function DayFound(DayNumber:Integer):string;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



function TUniCarouselCarousel.DayFound(DayNumber: Integer): string;
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

procedure TUniCarouselCarousel.UniFrameCreate(Sender: TObject);
begin
  UnimCarousel1.ActivePage := UnimCarouselPage1;
end;

procedure TUniCarouselCarousel.UnimButton1Click(Sender: TObject);
begin
  UnimLabel1.Caption := DayFound(DayOfWeek(UnimDatePicker1.Date));
end;

procedure TUniCarouselCarousel.UnimButton2Click(Sender: TObject);
begin
  UnimTimer1.Enabled:=True;
end;

procedure TUniCarouselCarousel.UnimButton3Click(Sender: TObject);
begin
  UnimTimer1.Enabled:=False;
end;

procedure TUniCarouselCarousel.UnimButton4Click(Sender: TObject);
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

procedure TUniCarouselCarousel.UnimSelect1Change(Sender: TObject);
begin
  case UnimSelect1.ItemIndex of
    0:
      UnimMemo1.Text := '';
    1 :
      UnimMemo1.Text :='Delphi ''s compilers use their own Object Pascal dialect of Pascal'+
      ' and generate native code for 32- and 64-bit Windows operating systems, as well as 32-bit Mac OS X, iOS and Android.';
    2:
      UnimMemo1.Text := 'uniGUI framework extends Web application development experience'+
       ' to a new dimension. UniGUI enables developers to create, design and debug their Delphi'+
       ' projects as a regular desktop application and then choose one of the available options for'+
       ' deployment. Such as, Windows Service, standalone or ISAPI.';
  end;
end;

procedure TUniCarouselCarousel.UnimTimer1Timer(Sender: TObject);
var
  FolderPath: string;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  UnimImage1.Picture.LoadFromFile(FolderPath+'images\'+IntToStr(II)+'.jpg');
  Inc(II);
  II:=II mod 5;
end;

procedure TUniCarouselCarousel.UnimTimer2Timer(Sender: TObject);
begin
  UnimCarousel2.ActivePage := UnimCarousel2.Pages[Page];
  Inc(Page);
  Page := Page mod 3;
end;

initialization
  RegisterClass(TUniCarouselCarousel);

end.
