unit uDialogs;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniButton,
  UniLabel, UniCalendar, uniGUIBaseClasses, uniGUIClasses;
                                                          
type                                                      
  TuDialogsFrame = class(TUniFrame)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniLabel1: TUniLabel;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniCalendarDialog1: TUniCalendarDialog;
    UniLabel2: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniCalendarDialog1Confirm(Sender: TObject);
  private                                                 
    { Private declarations }
    procedure _Confirm(Sender: TComponent; AResult:Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UniGUIDialogs;

procedure TuDialogsFrame._Confirm(Sender: TComponent; AResult:Integer);
begin
  case AResult of
    mrYes :
      begin
        UniLabel1.Caption:='Yes';
        UniLabel1.Font.Color:=clLime;
      end;

    mrNo :
      begin
        UniLabel1.Caption:='No';
        UniLabel1.Font.Color:=clRed;
      end;
  end;
end;

procedure TuDialogsFrame.UniButton1Click(Sender: TObject);
begin
  PByte(0)^:=0;
end;

procedure TuDialogsFrame.UniButton2Click(Sender: TObject);
begin
  MessageDlg('Proceed?', mtConfirmation, mbYesNo, _Confirm);
end;

procedure TuDialogsFrame.UniButton3Click(Sender: TObject);
begin
  MessageDlg('Warning Text', mtWarning, [mbOK]);
end;

procedure TuDialogsFrame.UniButton4Click(Sender: TObject);
begin
  UniCalendarDialog1.Execute;
end;

procedure TuDialogsFrame.UniCalendarDialog1Confirm(Sender: TObject);
begin
  UniLabel2.Caption:=DateToStr(UniCalendarDialog1.Date);
end;

end.
