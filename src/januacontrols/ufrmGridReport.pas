unit ufrmGridReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DBGrids, QRCtrls,  CRGrid,  db;

type
  TGridReport = class(TForm)
    GridRep: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    procedure Preview(Grid: TDBGrid); overload;
  private
    { Private declarations }
  public
    procedure Preview(Grid: TCRDBGrid); overload;
    { Public declarations }
  end;

var
  GridReport: TGridReport;

implementation


{$R *.dfm}

procedure TGridReport.Preview(Grid: TDBGrid);
var
  i, CurrentLeft, CurrentTop : integer; 
  BMark: TBookmark;
begin 
  GridRep.Dataset:=Grid.DataSource.DataSet; 

  if not GridRep.Bands.HasColumnHeader then 
    GridRep.Bands.HasColumnHeader:=true; 

  if not GridRep.Bands.HasDetail then 
    GridRep.Bands.HasDetail:=true; 

  GridRep.Bands.ColumnHeaderBand.Height:=Abs(Grid.TitleFont.Height) + 10; 
  GridRep.Bands.DetailBand.Height:=Abs(Grid.Font.Height) + 10; 
  CurrentLeft := 12; 
  CurrentTop := 6; 

  {Record where the user stopped in the DBGrid} 
  BMark:=Grid.DataSource.DataSet.GetBookmark; 
  {Don't let the grid flicker while the report is running} 
  Grid.DataSource.DataSet.DisableControls; 
  try 
    for i:=0 to Grid.FieldCount - 1 do 
    begin 
      if (CurrentLeft + Canvas.TextWidth(Grid.Columns[i].Title.Caption)) > 
        (GridRep.Bands.ColumnHeaderBand.Width) then 
      begin 
        CurrentLeft := 12; 
        CurrentTop := CurrentTop + Canvas.TextHeight('A') + 6; 
        GridRep.Bands.ColumnHeaderBand.Height := GridRep.Bands.ColumnHeaderBand.Height + 
          (Canvas.TextHeight('A') + 10); 
        GridRep.Bands.DetailBand.Height := GridRep.Bands.DetailBand.Height + 
          (Canvas.TextHeight('A') + 10); 
      end; 
      {Create Header with QRLabels} 
      with TQRLabel.Create(GridRep.Bands.ColumnHeaderBand) do 
      begin 
        Parent := GridRep.Bands.ColumnHeaderBand; 
        Color := GridRep.Bands.ColumnHeaderBand.Color; 
        Left := CurrentLeft; 
        Top := CurrentTop; 
        Caption:=Grid.Columns[i].Title.Caption; 
      end; 
      {Create Detail with QRDBText} 
      with TQRDbText.Create(GridRep.Bands.DetailBand) do 
      begin 
        Parent := GridRep.Bands.DetailBand; 
        Color := GridRep.Bands.DetailBand.Color; 
        Left := CurrentLeft; 
        Top := CurrentTop; 
        Alignment:=Grid.Columns[i].Alignment; 
        AutoSize:=false; 
        AutoStretch:=true; 
        Width:=Grid.Columns[i].Width; 
        Dataset:=GridRep.Dataset; 
        DataField:=Grid.Fields[i].FieldName; 
        CurrentLeft:=CurrentLeft + (Grid.Columns[i].Width) + 15; 
      end; 
    end; 

   // lblPage.Left := bdTitle.Width - lblPage.Width - 10;
   // lblDate.Left := bdTitle.Width - lblDate.Width - 10; 

    {After all, call the QuickRep preview method} 
    GridRep.PreviewModal; {or Preview if you prefer} 

  finally 
    with Grid.DataSource.DataSet do 
    begin 
      GotoBookmark(BMark); 
      FreeBookmark(BMark); 
      EnableControls; 
    end; 
  end; 
end;

procedure TGridReport.Preview(Grid: TCRDBGrid); 
var
  i, CurrentLeft, CurrentTop : integer; 
  BMark: TBookmark;
begin
  GridRep.Dataset:=Grid.DataSource.DataSet; 

  if not GridRep.Bands.HasColumnHeader then 
    GridRep.Bands.HasColumnHeader:=true; 

  if not GridRep.Bands.HasDetail then 
    GridRep.Bands.HasDetail:=true; 

  GridRep.Bands.ColumnHeaderBand.Height:=Abs(Grid.TitleFont.Height) + 10; 
  GridRep.Bands.DetailBand.Height:=Abs(Grid.Font.Height) + 10; 
  CurrentLeft := 12; 
  CurrentTop := 6; 

  {Record where the user stopped in the DBGrid} 
  BMark:=Grid.DataSource.DataSet.GetBookmark; 
  {Don't let the grid flicker while the report is running} 
  Grid.DataSource.DataSet.DisableControls; 
  try 
    for i:=0 to Grid.FieldCount - 1 do
    begin
    if Grid.Columns[i].Title.Caption > '' then
     begin
      if (CurrentLeft + Canvas.TextWidth(Grid.Columns[i].Title.Caption)) > 
        (GridRep.Bands.ColumnHeaderBand.Width) then 
      begin 
        CurrentLeft := 12; 
        CurrentTop := CurrentTop + Canvas.TextHeight('A') + 6; 
        GridRep.Bands.ColumnHeaderBand.Height := GridRep.Bands.ColumnHeaderBand.Height + 
          (Canvas.TextHeight('A') + 10); 
        GridRep.Bands.DetailBand.Height := GridRep.Bands.DetailBand.Height + 
          (Canvas.TextHeight('A') + 10); 
      end; 
      {Create Header with QRLabels} 
      with TQRLabel.Create(GridRep.Bands.ColumnHeaderBand) do 
      begin 
        Parent := GridRep.Bands.ColumnHeaderBand; 
        Color := GridRep.Bands.ColumnHeaderBand.Color; 
        Left := CurrentLeft; 
        Top := CurrentTop; 
        Caption:=Grid.Columns[i].Title.Caption; 
      end; 
      {Create Detail with QRDBText} 
      with TQRDbText.Create(GridRep.Bands.DetailBand) do 
      begin 
        Parent := GridRep.Bands.DetailBand; 
        Color := GridRep.Bands.DetailBand.Color; 
        Left := CurrentLeft; 
        Top := CurrentTop; 
        Alignment:=Grid.Columns[i].Alignment; 
        AutoSize:=false; 
        AutoStretch:=true; 
        Width:=Grid.Columns[i].Width; 
        Dataset:= GridRep.Dataset; 
        DataField:= Grid.Fields[i].FieldName;
        CurrentLeft:=CurrentLeft + (Grid.Columns[i].Width) + 15; 
      end;
     end;
    end; 

   // lblPage.Left := bdTitle.Width - lblPage.Width - 10;
   // lblDate.Left := bdTitle.Width - lblDate.Width - 10; 

    {After all, call the QuickRep preview method} 
    GridRep.PreviewModal; {or Preview if you prefer} 

  finally 
    with Grid.DataSource.DataSet do 
    begin 
      GotoBookmark(BMark); 
      FreeBookmark(BMark); 
      EnableControls; 
    end; 
  end; 
end;



end.
