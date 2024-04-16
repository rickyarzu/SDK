unit Janua.TMS.ExcelExport;

interface

uses
  System.SysUtils, {Windows,} DB, DBClient,
  FlexCel.Core,
  FlexCel.XlsAdapter;

procedure DumpDataSet(const ds: TDataSet; const fn: string);

implementation

procedure DumpDataSet(const ds: TDataSet; const fn: string);
var
  xls: TXlsFile;
  Row, Col: integer;
  Fmt: TFlxFormat;
  DateXF, DateTimeXF: integer;
begin
  xls := TXlsFile.Create(1, TExcelFileFormat.v2019, true);
  try
    // Generate the formats we will be using to format dates and times.
    Fmt := xls.GetDefaultFormat;
    Fmt.Format := 'dd/mm/yyyy hh:mm';
    DateTimeXF := xls.AddFormat(Fmt);

    Fmt := xls.GetDefaultFormat;
    Fmt.Format := 'dd/mm/yyyy';
    DateXF := xls.AddFormat(Fmt);

    // Now loop over all records and send them to the file.
    ds.First;
    Row := 1;
    while not ds.Eof do
    begin
      for Col := 1 to ds.FieldCount do
      begin
        case ds.Fields[Col - 1].DataType of
          TFieldType.ftDateTime:
            begin
              xls.SetCellValue(Row, Col, ds.Fields[Col - 1].AsDateTime, DateTimeXF);
            end;

          TFieldType.ftDate:
            begin
              xls.SetCellValue(Row, Col, ds.Fields[Col - 1].AsDateTime, DateXF);
            end;

        else
          begin
            xls.SetCellValue(Row, Col, ds.Fields[Col - 1].Value);
          end;
        end;
      end;

      ds.Next;
      Inc(Row);
    end;

    xls.Save(fn);
  finally
    xls.Free;
  end;
end;

end.
