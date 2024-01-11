unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAppPager, scControls,
  Vcl.StdCtrls, scImageCollection, Vcl.ImgList, Vcl.Themes, System.UITypes,
  scStyleManager, scStyledForm, scDialogs, scDrawUtils,
  scGPImages, scAdvancedControls, System.ImageList, scGPControls;

type
  TAppPagerForm = class(TForm)
    scAppPager1: TscAppPager;
    scAppPagerPage1: TscAppPagerPage;
    scAppPagerPage2: TscAppPagerPage;
    scAppPagerPage3: TscAppPagerPage;
    scAppPagerPage4: TscAppPagerPage;
    scStyledForm1: TscStyledForm;
    scGPVirtualImageList2: TscGPVirtualImageList;
    scLabel1: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scGPImageCollection1: TscGPImageCollection;
    procedure scAppPager1Items7Click(Sender: TObject);
    procedure scAppPager1Items3Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scAdvancedListBox1DblClick(Sender: TObject);
    procedure scAppPager1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure scAdvancedListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure scStyledForm1CloseUp(ADropDownForm: TCustomForm;
      ADropDownControl: TControl; AAcceptChanges: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppPagerForm: TAppPagerForm;

implementation
    Uses Unit1, MessageUnit;
{$R *.dfm}

procedure TAppPagerForm.scAdvancedListBox1DblClick(Sender: TObject);
begin
  scStyledForm1.CloseUp(True);
end;

procedure TAppPagerForm.scAdvancedListBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    scStyledForm1.CloseUp(True);
end;

procedure TAppPagerForm.scAppPager1Items3Click(Sender: TObject);
begin
  scStyledForm1.CloseUp(False);
  UWPInfoMessage('Information', 'Item can be without linked page!');
end;

procedure TAppPagerForm.scAppPager1Items7Click(Sender: TObject);
begin
  scStyledForm1.CloseUp(True);
  Form1.Close;
end;

procedure TAppPagerForm.scAppPager1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    scStyledForm1.CloseUp(False);
end;

procedure TAppPagerForm.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
end;

procedure TAppPagerForm.scStyledForm1CloseUp(ADropDownForm: TCustomForm;
  ADropDownControl: TControl; AAcceptChanges: Boolean);
begin
  if ADropDownControl is TscGPButton then
    TscGPButton(ADropDownControl).CloseUp(AAcceptChanges);
end;

end.
