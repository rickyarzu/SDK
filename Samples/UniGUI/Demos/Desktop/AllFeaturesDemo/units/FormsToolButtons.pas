// Tool Buttons = Form Controls
unit FormsToolButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, DB,
  DBClient, uniImageList, Actions, ActnList, uniMainMenu,
  uniMemo, uniBasicGrid, uniDBGrid;

type
  TUniFormsToolButtons = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniMemo1: TUniMemo;
    UniActionList1: TUniActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    UniNativeImageList1: TUniNativeImageList;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure Action1Execute(Sender: TObject);
    procedure UniDBGrid1ToolClick(Sender: TUniCustomButtonItem);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormsToolButtons.Action1Execute(Sender: TObject);
begin
  UniMemo1.Lines.Add('Action Exceuted: ' + (Sender as TAction).Name);
end;

procedure TUniFormsToolButtons.UniDBGrid1ToolClick(
  Sender: TUniCustomButtonItem);
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

procedure TUniFormsToolButtons.UniFrameCreate(Sender: TObject);
begin
  UniMemo1.Clear;
end;

initialization
  RegisterClass(TUniFormsToolButtons);

end.
