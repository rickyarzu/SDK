//AllFeatures: Windowless,HMTML,icon-basic-window
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniListBox,
  UniMemo, UniLabel, ExtCtrls, UniPanel, ComCtrls, UniPageControl, 
  UniButton, Buttons, UniSpeedButton, uniGUIRegClasses,  uniguiclasses, uniMultiItem, UniBitBtn,
  uniGUIBaseClasses, uniSplitter;

type
  TMainForm = class(TUniForm)
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniListBox1: TUniListBox;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniPanel3: TUniPanel;
    UniSplitter1: TUniSplitter;
    UniLabel2: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    UniMemo1: TUniMemo;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    procedure UniListBox1Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniForm1.ShowModal;
end;

procedure TMainForm.UniListBox1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniListBox1.Items[UniListBox1.ItemIndex]);
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  Close;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
