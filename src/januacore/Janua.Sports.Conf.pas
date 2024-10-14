unit Janua.Sports.Conf;

interface

uses System.UITypes;

type
  /// <summary> This Class contains the mail Sports Configuration </summary>
  TJanuaSportsConf = class
    class Constructor Create;
  private
    // 2866620
    class var FMainFontColor: TColor;
    class var FExcelBtnClass: string;
  protected
    class Function GetExcelBtnClass: string; static;
    class Procedure SetExcelBtnClass(const aColor: string); static;

    class Function GetMainFontColor: TColor; static;
    class Procedure SetMainFontColor(const aColor: TColor); static;
  public
    class property MainFontColor: TColor read GetMainFontColor write SetMainFontColor;
    class property ExcelBtnClass: string read GetExcelBtnClass write SetExcelBtnClass;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaSportsConf }

class Constructor TJanuaSportsConf.Create;
begin
  FMainFontColor := -1;
end;

class Function TJanuaSportsConf.GetExcelBtnClass: string;
begin
  if FExcelBtnClass = '' then
    FExcelBtnClass := TJanuaCoreOS.ReadParam('sports', 'btnExcelClass', 'GoogleGreen');
  Result := FExcelBtnClass;
end;

class Procedure TJanuaSportsConf.SetExcelBtnClass(const aColor: string);
begin
  if FExcelBtnClass <> aColor then
  begin
    FExcelBtnClass := aColor;
    TJanuaCoreOS.WriteParam('sports', 'btnExcelClass', FExcelBtnClass);
  end;
end;

class Function TJanuaSportsConf.GetMainFontColor: TColor;
begin
  if FMainFontColor = -1 then
    FMainFontColor := TJanuaCoreOS.ReadParam('sports', 'mainfontcolor', 2588301);
  Result := FMainFontColor;
end;

class Procedure TJanuaSportsConf.SetMainFontColor(const aColor: TColor);
begin
  if FMainFontColor <> aColor then
  begin
    FMainFontColor := aColor;
    TJanuaCoreOS.WriteParam('sports', 'mainfontcolor', FMainFontColor);
  end;
end;

end.
