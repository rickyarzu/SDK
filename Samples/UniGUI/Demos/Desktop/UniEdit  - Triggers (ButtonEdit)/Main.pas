unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImageList,
  uniEdit, uniDBEdit, uniImage, uniDBImage, DB, DBClient;

type
  TMainForm = class(TUniForm)
    UniNativeImageList1: TUniNativeImageList;
    UniDBEdit1: TUniDBEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniDBImage1: TUniDBImage;
    procedure UniEdit1TriggerEvent(Sender: TUniFormControl; AButtonId: Integer);
    procedure UniDBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ClientDataSet1.State in dsEditModes then
      ClientDataSet1.Post;
  end;
end;

procedure TMainForm.UniEdit1TriggerEvent(Sender: TUniFormControl;
  AButtonId: Integer);
begin
  case AButtonId of
    0 :
      begin
        ClientDataSet1.Prior;
      end;

    1 :
      begin
        ClientDataSet1.Next;
      end;

    2 :
      begin
        ClientDataSet1.Edit;
      end;

    3 :
      MessageDlg('Are you sure you want to delete this record?', mtConfirmation, mbYesNoCancel,
        procedure(Sender: TComponent; AResult : Integer)
        begin
          if AResult = mrYes then
            ClientDataSet1.Delete;
        end
      );

  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
