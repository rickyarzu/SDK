unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniCheckBox, unimCheckBox,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, uniFileUpload,
  unimFileUpload, unimButton, uniTimer, unimTimer, unimToggle;

type
  TUnimForm1 = class(TUnimForm)
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
    UnimCheckBox1: TUnimToggle;
    UnimFileUpload1: TUnimFileUpload;
    UnimBitBtn4: TUnimBitBtn;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UnimBitBtn4Click(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MediaFile : string;
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.UnimBitBtn1Click(Sender: TObject);
begin
  UnimFileUpload1.Accept:='image';
  if UnimCheckBox1.Toggled then
    UnimFileUpload1.Capture:='camera'
  else
    UnimFileUpload1.Capture:='';

  UnimFileUpload1.Execute;
end;

procedure TUnimForm1.UnimBitBtn2Click(Sender: TObject);
begin
  UnimFileUpload1.Accept:='video';
  if UnimCheckBox1.Toggled then
    UnimFileUpload1.Capture:='camcorder'
  else
    UnimFileUpload1.Capture:='';

  UnimFileUpload1.Execute;
end;

procedure TUnimForm1.UnimBitBtn3Click(Sender: TObject);
begin
  UnimFileUpload1.Accept:='audio';
  if UnimCheckBox1.Toggled then
    UnimFileUpload1.Capture:='microphone'
  else
    UnimFileUpload1.Capture:='';

  UnimFileUpload1.Execute;
end;

procedure TUnimForm1.UnimBitBtn4Click(Sender: TObject);
begin
  UnimFileUpload1.Accept:='';
  UnimFileUpload1.Capture:='';

  UnimFileUpload1.Execute;
end;

procedure TUnimForm1.UnimFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  MediaFile := (Sender as TUnimFileUpload).FileName;
  ModalResult := mrOK;
end;

procedure TUnimForm1.UnimTimer1Timer(Sender: TObject);
begin
//
end;

end.
