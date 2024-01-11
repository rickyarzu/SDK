//AllFeatures: Suspend Layouts,Basic Demo,icon-pie-basic
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniCheckBox, uniButton, uniTimer, uniLabel, uniBasicGrid, uniDBGrid, Data.DB,
  Datasnap.DBClient;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniCheckBox1: TUniCheckBox;
    UniContainerPanel1: TUniContainerPanel;
    UniTimer1: TUniTimer;
    UniLabel1: TUniLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    procedure UniButton1Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    FTPassed: TDateTime;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

const
  N_CNT = 50;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
const
  WW = 256;
  HH = 192;
var
  B : TUniDBGrid;
  I, N : Integer;
begin
  UniTimer1.Enabled := True;
  FTPassed := Now;

  // When creating many dynamic controls at runtime, calling SuspendLayouts will improve render speed upto 2 - 3 times.
  // This effect is observable especially when new controls are added to an existing visible form.
  if UniCheckBox1.Checked then SuspendLayouts;

  try
    while UniContainerPanel1.ControlCount > 0 do
      UniContainerPanel1.Controls[0].Free;

    N := UniContainerPanel1.Width div WW;
    for I := 1 to N_CNT do
    begin
      B := TUniDBGrid.Create(Self);
      B.Columns.Add.FieldName := 'Company';
      B.DataSource := DataSource1;
      B.WebOptions.Paged := False;
      B.HeaderTitle := 'Grid-'+IntToStr(I);
      B.HeaderTitleAlign := taCenter;
      B.ReadOnly := True;
      B.LoadMask.Enabled := False;
      B.Width := WW;
      B.Height := HH;
      B.Top := ((I-1) div N) * B.Height;
      B.Left := ((I-1) mod N) * B.Width;
      B.Parent := UniContainerPanel1;
    end;
  finally
    // ResumeLayouts must be called after SuspendLayouts is called.
    // Always use a try..finally block to ensure that ResumeLayouts will be called.
    if UniCheckBox1.Checked then ResumeLayouts;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniButton1.Caption := 'Create ' + IntToStr(N_CNT) + ' Grids!'
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  FTPassed := Now - FTPassed;
  UniLabel1.Caption := 'Time Passed: ' + FormatDateTime('s.zzz', FTPassed) + ' seconds';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
