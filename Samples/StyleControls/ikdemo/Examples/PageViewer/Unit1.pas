unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IKControls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.ComCtrls, Vcl.Themes;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    IKPageView1: TIKPageView;
    IKPageViewPage2: TIKPageViewPage;
    ListBox1: TListBox;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    IKPageViewPage1: TIKPageViewPage;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ListView1: TListView;
    Edit2: TEdit;
    TabControl1: TTabControl;
    IKPageView2: TIKPageView;
    IKPageViewPage4: TIKPageViewPage;
    Memo2: TMemo;
    Button2: TButton;
    Panel3: TPanel;
    IKPageViewPage3: TIKPageViewPage;
    ListBox2: TListBox;
    CheckBox2: TCheckBox;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Button3: TButton;
    TreeView1: TTreeView;
    Label2: TLabel;
    Duration: TTrackBar;
    DurationLabel: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    ScrollBar1: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure DurationChange(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if IKPageView1.PageIndex = 0 then
   IKPageView1.PageIndex := 1
 else
   IKPageView1.PageIndex := 0;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  IKPageView1.TransitionKind := TIKPageViewTransitionKind(ComboBox2.ItemIndex);
  IKPageView2.TransitionKind := TIKPageViewTransitionKind(ComboBox2.ItemIndex);
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  TStyleManager.SetStyle(ComboBox3.Items[ComboBox3.ItemIndex]);
end;

procedure TForm1.DurationChange(Sender: TObject);
var
  FDuration: Single;
begin
  FDuration := Duration.Position / 1000;
  IKPageView1.TransitionDuration := FDuration;
  IKPageView2.TransitionDuration := FDuration;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox3.Items.Clear;
  ComboBox3.Items.AddStrings(TStyleManager.StyleNames);
  ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  IKPageView2.PageIndex := TabControl1.TabIndex;
end;

end.
