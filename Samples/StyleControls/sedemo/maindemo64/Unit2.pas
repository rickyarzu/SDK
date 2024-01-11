unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  se_effect, se_ani, se_form, ExtCtrls, jpeg, se_image;

type
  TSplashForm = class(TForm)
    seAnimationList1: TseAnimationList;
    seAnimationForm1: TseAnimationForm;
    seAnimation1: TseAnimation;
    seAnimation2: TseAnimation;
    seImage1: TseImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure seImage1Click(Sender: TObject);
    procedure seAnimation1Start(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

procedure TSplashForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TSplashForm.seImage1Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.seAnimation1Start(Sender: TObject);
begin
  seAnimation1.ForceControlUpdate := True;
end;

end.
