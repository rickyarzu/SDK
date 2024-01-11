unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniGroupBox, uniButton,
  uniEdit, uniLabel;

type
  TUniForm1 = class(TUniForm)
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;
    UniEdit8: TUniEdit;
    UniEdit9: TUniEdit;
    UniEdit10: TUniEdit;
    UniLabel1: TUniLabel;
    procedure UniFormCancel(Sender: TObject);
    procedure UniFormSubmit(Sender: TObject);
  private
    { Private declarations }
    procedure mCallBack(Sender: TComponent;ARes: Integer);
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.mCallBack(Sender: TComponent;ARes: Integer);
begin
  if ARes = mrYes then
    ModalResult := mrCancel;
end;

procedure TUniForm1.UniFormCancel(Sender: TObject);
begin
  MessageDlg('All changes will be discarded.'^M'Are you sure?', mtConfirmation, mbYesNoCancel, mCallBack);
end;

procedure TUniForm1.UniFormSubmit(Sender: TObject);
begin
  ModalResult := mrOK;
end;

end.
