// ButtonEdit (Triggers) = Form Controls
unit ButtonEditTriggers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniGUIBaseClasses,
  uniImageList, uniImage, uniDBImage, uniEdit, uniDBEdit, uniPanel;

type
  TUniButtonEditTriggers = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBEdit1: TUniDBEdit;
    UniDBImage1: TUniDBImage;
    UniNativeImageList1: TUniNativeImageList;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UniDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure UniDBEdit1TriggerEvent(Sender: TUniFormControl;
      AButtonId: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniButtonEditTriggers.UniDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ClientDataSet1.State in dsEditModes then
      ClientDataSet1.Post;
  end;
end;

procedure TUniButtonEditTriggers.UniDBEdit1TriggerEvent(Sender: TUniFormControl;
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
  RegisterClass(TUniButtonEditTriggers);

end.
