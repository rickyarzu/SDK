//AllFeatures: SyncClientUpdate,SyncClientUpdate - 2,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniLabel, uniRadioGroup, uniChart, uniPanel, uniSpinEdit, uniButton,
  uniProgressBar;

type
  TMainForm = class(TUniForm)
    UniProgressBar1: TUniProgressBar;
    UniButton1: TUniButton;
    UniSpinEdit1: TUniSpinEdit;
    UniButton2: TUniButton;
    UniChart1: TUniChart;
    UniLineSeries1: TUniLineSeries;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel1: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    FSortMethod, NCnt, FProgress, FMaxCount: Integer;
    FBusy, FAbort : Boolean;
    FSortArray : array of Integer;
    procedure BubbleSort(var A: array of Integer);
    procedure QuickSort(var A: array of Integer);
    procedure UpdateSeries;
    procedure InitArray(ASize: Integer);
    procedure RefreshSeries;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

const
  UPDATE_INTERVAL = 500;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  if FBusy then Exit;

  FMaxCount := UniSpinEdit1.Value;
  InitArray(FMaxCount);

  FAbort := False;
  Fprogress := 0;


  FSortMethod := UniRadioGroup1.ItemIndex;
  UniButton1.Enabled := False;
  UniButton2.Enabled := True;


  UniSpinEdit1.Enabled := False;
  UniRadioGroup1.Enabled := False;

  FBusy := True;

  RefreshSeries;

  try
    UniSession.Synchronize;

    case FSortMethod of
      0 : BubbleSort(FSortArray);
      1 : QuickSort(FSortArray);
    end;

  finally
    if not FAbort then
      FProgress := FMaxCount;

    RefreshSeries;

    FBusy := False;
    UniButton1.Enabled := True;
    UniButton2.Enabled := False;
    UniSpinEdit1.Enabled := True;
    UniRadioGroup1.Enabled := True;
    SetLength(FSortArray, 0); // free memory

  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniButton2.Enabled := False;
  FAbort := True;
end;

procedure TMainForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  FAbort := True;
end;

procedure TMainForm.RefreshSeries;
begin
  UniProgressBar1.Position := Round((FProgress / FMaxCount) * UniProgressBar1.Max);
  UpdateSeries;
end;

procedure TMainForm.BubbleSort(var A : array of Integer);
var
  I, J, T: Integer;
begin
  for I := High(A) downto Low(A) do
  begin
    Inc(FProgress);
    if UniSession.Synchronize(UPDATE_INTERVAL) then
      RefreshSeries;

    if FAbort then Exit;

    for J := Low(A) to High(A) - 1 do
      if A[J] > A[J + 1] then
      begin
        T := A[J];
        A[J] := A[J + 1];
        A[J + 1] := T;
      end;
  end;
end;

procedure TMainForm.QuickSort(var A: array of Integer);

  procedure QSort(var A: array of Integer; iLo, iHi: Integer);
  var
    Lo, Hi, Mid, T: Integer;
  begin
    if FAbort then Exit;

    Lo := iLo;
    Hi := iHi;
    Mid := A[(Lo + Hi) div 2];
    repeat
      while A[Lo] < Mid do Inc(Lo);
      while A[Hi] > Mid do Dec(Hi);
      if Lo <= Hi then
      begin
        T := A[Lo];
        A[Lo] := A[Hi];
        A[Hi] := T;
        Inc(Lo);
        Dec(Hi);
      end;
    until Lo > Hi;
    if Hi > iLo then QSort(A, iLo, Hi);
    if Lo < iHi then QSort(A, Lo, iHi);

    if UniSession.Synchronize(UPDATE_INTERVAL) then
      RefreshSeries;
  end;

begin
  QSort(A, Low(A), High(A));
end;

procedure TMainForm.UpdateSeries;
var
  I, M : Integer;
begin
  M := Length(FSortArray) div 100;
  if M>0 then
  begin
    UniLineSeries1.Clear;
    for I := 0 to 99 do
      UniLineSeries1.Add(FSortArray[I*M], '');
  end;
end;

procedure TMainForm.InitArray(ASize: Integer);
var
  I : Integer;
begin
  SetLength(FSortArray, ASize);
  Randomize;
  for I := Low(FSortArray) to High(FSortArray) do
    FSortArray[I] := Random(1000);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
