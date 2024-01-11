unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, System.Actions, Vcl.ActnList, uniMainMenu,
  uniMemo, uniImageList, Data.DB, Datasnap.DBClient;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniActionList1: TUniActionList;
    UniMemo1: TUniMemo;
    UniNativeImageList1: TUniNativeImageList;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure UniFormToolClick(Sender: TUniCustomButtonItem);
    procedure UniDBGrid1ToolClick(Sender: TUniCustomButtonItem);
    procedure Action1Execute(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
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

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  UniMemo1.Lines.Add('Action Exceuted: ' + (Sender as TAction).Name);
end;

procedure TMainForm.UniDBGrid1ToolClick(Sender: TUniCustomButtonItem);
begin
  case Sender.ButtonId of
    0 : UniDBGrid1.Refresh;
    1 : ClientDataSet1.Insert;
    2 : MessageDlg('Are you sure to delete this record?', mtConfirmation, mbYesNoCancel,
                    procedure(Sender: TComponent; Result: Integer)
                    begin
                      if Result = mrYes then
                        ClientDataSet1.Delete;
                    end
                  );
    3 : ClientDataSet1.Prior;
    4 : ClientDataSet1.Next;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Clear;
end;

procedure TMainForm.UniFormToolClick(Sender: TUniCustomButtonItem);
begin
  UniMemo1.Lines.Add('Button Id: ' + IntToStr(Sender.ButtonId));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
