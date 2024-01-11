unit Janua.VCL.Grids;

interface

uses
  Winapi.Windows, System.Classes, VCL.Graphics, VCL.Grids, VCL.DBGrids,
  // Janua
  Janua.VCL.EnhDBGrid, Janua.Core.Functions, Janua.Core.Classes, Janua.Bindings.Intf, Janua.Core.Classes.Intf,
  Janua.VCL.EnhCRDBGrid;

type
  TEventColorNeed = procedure(var aColor: TColor) of object;

  TJanuaGridController = class(TJanuaCoreComponent, IJanuaBindable)
  private
    FDBGrid: TCustomDBGrid;
    FOnNeedColor: TEventColorNeed;
    procedure SetDBGrid(const Value: TCustomDBGrid);
    procedure SetOnNeedColor(const Value: TEventColorNeed);
  public
    // these are the Events overriders ..................................................................
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridCellClick(Column: TColumn);
  published
    property DBGrid: TCustomDBGrid read FDBGrid write SetDBGrid;
    property OnNeedColor: TEventColorNeed read FOnNeedColor write SetOnNeedColor;
  end;

implementation

uses
  Data.DB, System.Variants;

{ This is the workhorse routine that does the drawing. }
procedure DrawField(const Value: String; const Rect: TRect; vCanvas: TCanvas; vFont: TFont; vAlignment: TAlignment;
  FontStyle: TFontStyles; FontColor: TColor; BGColor: TColor);
var
  I: Integer;
begin
  I := 0;

  // First, fill in the background color of the cell
  vCanvas.Brush.Color := BGColor;
  vCanvas.FillRect(Rect);
  // SetBkMode ensures that the background is transparent
  SetBkMode(vCanvas.Handle, TRANSPARENT);

  // Set the passed font properties
  vCanvas.Font := vFont;
  vCanvas.Font.Color := FontColor;
  vCanvas.Font.Style := vCanvas.Font.Style + FontStyle;

  // Set Text Alignment
  case vAlignment of
    taRightJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_RIGHT);
        I := Rect.Right - 2;
      end;

    taLeftJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_LEFT);
        I := Rect.Left + 2;
      end;

    taCenter:
      begin
        SetTextAlign(vCanvas.Handle, TA_CENTER);
        I := (Rect.Right + Rect.Left) DIV 2;
      end;
  end; { case }

  // Draw the text
  vCanvas.TextRect(Rect, I, Rect.Top + 2, Value);
  SetTextAlign(vCanvas.Handle, TA_LEFT);
end;

{ TJanuaGridController }

procedure TJanuaGridController.DBGridCellClick(Column: TColumn);
begin
  if Assigned(Column.Field) and (Column.Field.DataType = ftBoolean) then
  begin
    Column.Grid.DataSource.DataSet.Edit;
    Column.Field.Value := not Column.Field.AsBoolean;
    Column.Grid.DataSource.DataSet.Post;
  end;
end;

procedure TJanuaGridController.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
const
  CtrlState: array [Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  // la variabile aColor serve per gestire l'evento on need Color .............................
  // di Default varrebbe clNone = 0 (numero intero costante definito dalla unit Vcl.Graphics)
  aColor: TColor;
begin
  aColor := clNone;
  // prima di tutto occorre verificare che tutti gli oggetti siano correttamente istanziati.
  // secondo punto occorre controllare che il campo abba come DataType Boolean (per disegnare sul canvas la spunta)
  if Assigned(FDBGrid) and Assigned(Column.Field) then
  begin
    // l'operazione funziona per tutti i tipi di dbgrid supportati quindi occorre un casting ad ognuno
    // questo perchò ognuno presenta una implementazione o una esposizione di proprietà e metodi altrimenti privati
    if FDBGrid is TEnhDBGrid then
      with FDBGrid as TEnhDBGrid do
      begin
        if (Column.Field.DataType = ftBoolean) then
        begin
          Canvas.FillRect(Rect);
          if (VarIsNull(Column.Field.Value)) then
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE)
          else
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
        end
        else if Assigned(FOnNeedColor) then
        begin
          FOnNeedColor(aColor);
          if aColor <> clNone then
            DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment, [], aColor, Column.Color)
        end;

      end
{$IFNDEF VER330} else if FDBGrid is TEnhCRDBGrid then
      with FDBGrid as TEnhCRDBGrid do
      begin
        if (Column.Field.DataType = ftBoolean) then
        begin
          Canvas.FillRect(Rect);
          if (VarIsNull(Column.Field.Value)) then
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE)
          else
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
        end
        else if Assigned(FOnNeedColor) then
        begin
          FOnNeedColor(aColor);
          if aColor <> clNone then
            DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment, [], aColor, Column.Color)
        end;

      end {$ENDIF}
    else if FDBGrid is TDBGrid then
      with FDBGrid as TDBGrid do
      begin
        if (Column.Field.DataType = ftBoolean) then
        begin
          Canvas.FillRect(Rect);
          if (VarIsNull(Column.Field.Value)) then
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE)
          else
            DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
        end;
        {
          if Assigned(Column.Field) and not(Column.Field.DataType = ftBoolean) and Assigned(FOnNeedColor) then
          begin
          FOnNeedColor(aColor);
          if aColor <> clNone then
          DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment, [], clRED, Column.Color)
          end;
        }
      end
  end;

  // This is a sample on How to color a Row in the Grid,
  {
    if Assigned(Column.Field) and not(Column.Field.DataType = ftBoolean) then
    with Sender as TEnhCRDBGrid, DataSource.DataSet do
    begin
    if self.qryServicesSearchindexed.AsBoolean = False then
    DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment, [], clRED, Column.Color)
    end;
  }
end;

procedure TJanuaGridController.DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Assigned(FDBGrid.SelectedField) and ((self.FDBGrid.SelectedField.DataType = ftBoolean) and (Key = VK_SPACE)) then
  begin
    self.FDBGrid.DataSource.DataSet.Edit;
    self.FDBGrid.SelectedField.Value := not self.FDBGrid.SelectedField.AsBoolean;
    self.FDBGrid.DataSource.DataSet.Post;
  end;
end;

procedure TJanuaGridController.SetDBGrid(const Value: TCustomDBGrid);
begin
  FDBGrid := Value;
  if FDBGrid <> nil then
  begin
    if FDBGrid is TEnhDBGrid then
      with FDBGrid as TEnhDBGrid do
      begin
        OnKeyDown := self.DBGridKeyDown;
        OnDrawColumnCell := self.DBGridDrawColumnCell;
        (FDBGrid as TEnhDBGrid).OnCellClick := self.DBGridCellClick;
      end
{$IFNDEF VER330}
    else if FDBGrid is TEnhCRDBGrid then
      with FDBGrid as TEnhCRDBGrid do
      begin
        OnKeyDown := self.DBGridKeyDown;
        OnDrawColumnCell := self.DBGridDrawColumnCell;
        OnCellClick := self.DBGridCellClick;
      end
{$ENDIF VER330}
    else if FDBGrid is TDBGrid then
      with FDBGrid as TDBGrid do
      begin
        OnKeyDown := self.DBGridKeyDown;
        OnDrawColumnCell := self.DBGridDrawColumnCell;
        OnCellClick := self.DBGridCellClick;
      end
  end;
end;

procedure TJanuaGridController.SetOnNeedColor(const Value: TEventColorNeed);
begin
  FOnNeedColor := Value;
end;

end.
