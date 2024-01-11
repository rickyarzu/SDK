unit uDBGrid;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, Grids, DBGrids, uniDBGrid, StdCtrls,
  UniButton, DB, ExtCtrls, DBCtrls, UniDBNavigator, uniGUIClasses, UniPanel,
  uniGUIBaseClasses, UniBasicGrid;
                                                          
type                                                      
  TuDBGridFrame = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation

uses
  MainModule;
                                                          
{$R *.dfm}                                                
                                                          
procedure TuDBGridFrame.UniButton1Click(Sender: TObject);
begin
  if DataSource1.DataSet.Active then
  begin
    DataSource1.DataSet.Close;
    UniButton1.Caption:='Open';
  end
  else
  begin
    DataSource1.DataSet.Open;
    UniButton1.Caption:='Close';
  end;
end;

procedure TuDBGridFrame.UniFrameCreate(Sender: TObject);
begin
  DataSource1.DataSet.open;
end;

procedure TuDBGridFrame.UniFrameDestroy(Sender: TObject);
begin
  DataSource1.DataSet.Close;
end;

end.                                                      
