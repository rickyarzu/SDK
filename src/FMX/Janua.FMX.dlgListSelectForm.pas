unit Janua.FMX.dlgListSelectForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TdlgFMXListSelectForm = class(TForm)
    ListViewMain: TListView;
    procedure ListViewMainItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    FaList: TStringList;
    FSelectedItem: Integer;
    FSelectedText: string;
    procedure SetaList(const Value: TStringList);
    procedure SetSelectedItem(const Value: Integer);
    procedure SetSelectedText(const Value: string);
    { Private declarations }
  public
    procedure Setup;
  public
    { Public declarations }
    property aList: TStringList read FaList write SetaList;
    property SelectedItem: Integer read FSelectedItem write SetSelectedItem;
    property SelectedText: string read FSelectedText write SetSelectedText;
  end;

var
  dlgFMXListSelectForm: TdlgFMXListSelectForm;

implementation

{$R *.fmx}

{ TForm6 }

procedure TdlgFMXListSelectForm.ListViewMainItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  FSelectedItem := AItem.Index;
  FSelectedText := AItem.Text;
  Close;
end;

procedure TdlgFMXListSelectForm.SetaList(const Value: TStringList);
begin
  FaList := Value;
end;

procedure TdlgFMXListSelectForm.SetSelectedItem(const Value: Integer);
begin
  FSelectedItem := Value;

end;

procedure TdlgFMXListSelectForm.SetSelectedText(const Value: string);
begin
  FSelectedText := Value;
end;

procedure TdlgFMXListSelectForm.Setup;
begin

end;

end.
