unit uFishFacts;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ImgList, Menus, UniMainMenu, DB,
  StdCtrls, UniButton, DBCtrls, UniDBMemo, ExtCtrls,
  UniDBNavigator, Mask, UniDBEdit, UniDBImage, Grids, DBGrids, uniDBGrid,
  UniLabel, Buttons, UniBitBtn, UniMemo, uniGUIClasses, UniPanel,
  UniEdit, UniImage, UniBasicGrid, uniGUIBaseClasses;
                                                          
type                                                      
  TuFishFactsFrame = class(TUniFrame)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniDBImage1: TUniDBImage;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBNavigator1: TUniDBNavigator;
    UniDBMemo1: TUniDBMemo;
    DataSource1: TDataSource;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  MainModule;                                            

procedure TuFishFactsFrame.UniBitBtn1Click(Sender: TObject);
begin
  DataSource1.DataSet.Open;
  UniBitBtn1.Enabled:=not DataSource1.DataSet.Active;
  UniBitBtn2.Enabled:=DataSource1.DataSet.Active;
end;

procedure TuFishFactsFrame.UniBitBtn2Click(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  UniBitBtn1.Enabled:=not DataSource1.DataSet.Active;
  UniBitBtn2.Enabled:=DataSource1.DataSet.Active;
end;

procedure TuFishFactsFrame.UniFrameCreate(Sender: TObject);
begin
  DataSource1.DataSet.Open;
end;

procedure TuFishFactsFrame.UniFrameDestroy(Sender: TObject);
begin
  DataSource1.DataSet.Close;
end;

end.
