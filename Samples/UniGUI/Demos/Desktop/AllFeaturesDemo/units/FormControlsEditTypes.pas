//Edit Types = Form Controls
unit FormControlsEditTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniGUIBaseClasses, uniPanel, uniSpinEdit,
  uniSyntaxEditor, uniLabel, uniButton, uniMemo;

type
  TUniFormControlsEditTypes = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniNumberEdit1: TUniNumberEdit;
    UniNumberEdit2: TUniNumberEdit;
    UniSpinEdit1: TUniSpinEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel4: TUniLabel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}

procedure TUniFormControlsEditTypes.UniButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniEdit1.Text);
  UniMemo1.Lines.Add(UniNumberEdit1.Text);
  UniMemo1.Lines.Add(UniNumberEdit2.Text);
  UniMemo1.Lines.Add(UniSpinEdit1.Text);

end;

procedure TUniFormControlsEditTypes.UniFrameCreate(Sender: TObject);
begin

  (OwnerForm as TUniForm).ActiveControl := UniNumberEdit1;
end;

initialization
  RegisterClass(TUniFormControlsEditTypes);

end.
