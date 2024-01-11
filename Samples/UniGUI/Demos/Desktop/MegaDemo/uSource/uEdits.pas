unit uEdits;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniEdit, ExtCtrls,
  UniDateTimePicker, UniSpinEdit, UniComboBox, UniButton,
  UniMemo, ComCtrls, UniCalendar, Spin, uniMultiItem, uniGUIBaseClasses,
  uniGUIClasses;
                                                          
type                                                      
  TuEditsFrame = class(TUniFrame)
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniSpinEdit1: TUniSpinEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDateTimePicker3: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniCalendar1: TUniCalendar;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private                                                 
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuEditsFrame.UniButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniEdit1.Text);
  UniMemo1.Lines.Add(UniEdit2.Text);
  UniMemo1.Lines.Add(UniSpinEdit1.Text);
  UniMemo1.Lines.Add(UniDateTimePicker1.Text);
  UniMemo1.Lines.Add(UniDateTimePicker2.Text);
  UniMemo1.Lines.Add(UniDateTimePicker3.Text);
  UniMemo1.Lines.Add(UniComboBox1.Text);
  UniMemo1.Lines.Add(DateToStr(UniCalendar1.Date));
  UniMemo1.Lines.Add('');
end;

procedure TuEditsFrame.UniButton2Click(Sender: TObject);
begin
  UniMemo1.Clear;
end;

end.
