{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module
                                                          
{$ifndef UNIGUI_VCL}                                      
library                                                   
{$else}                                                   
program                                                   
{$endif}                                                  
  mDemo;                                           
                                                          
uses
  MidasLib,
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {TUniMainModule: TUniGUIMainModule},
  uMain in 'uSource\uMain.pas' {MainForm: TUniForm},
  uButtons in 'uSource\uButtons.pas' {uButtonsFrame: TUniFrame},
  uEdits in 'uSource\uEdits.pas' {uEditsFrame: TUniFrame},
  uLabels in 'uSource\uLabels.pas' {uLabelsFrame: TUniFrame},
  uStringGrid in 'uSource\uStringGrid.pas' {uStringGridFrame: TUniFrame},
  uDBGrid in 'uSource\uDBGrid.pas' {uDBGridFrame: TUniFrame},
  uPanels in 'uSource\uPanels.pas' {uPanelsFrame: TUniFrame},
  uMemo in 'uSource\uMemo.pas' {uMemoFrame: TUniFrame},
  uTabControl in 'uSource\uTabControl.pas' {uTabControlFrame: TUniFrame},
  uPageControl in 'uSource\uPageControl.pas' {uPageControlFrame: TUniFrame},
  uImages in 'uSource\uImages.pas' {uImagesFrame: TUniFrame},
  uCheckBox in 'uSource\uCheckBox.pas' {uCheckBoxFrame: TUniFrame},
  uRadioButton in 'uSource\uRadioButton.pas' {uRadioButtonFrame: TUniFrame},
  uStatusBar in 'uSource\uStatusBar.pas' {uStatusBarFrame: TUniFrame},
  uToolBar in 'uSource\uToolBar.pas' {uToolBarFrame: TUniFrame},
  uTimer in 'uSource\uTimer.pas' {uTimerFrame: TUniFrame},
  uFishFacts in 'uSource\uFishFacts.pas' {uFishFactsFrame: TUniFrame},
  uTreeView in 'uSource\uTreeView.pas' {uTreeViewFrame: TUniFrame},
  uProgressBar in 'uSource\uProgressBar.pas' {uProgressBarFrame: TUniFrame},
  uForms in 'uSource\uForms.pas' {uFormsFrame: TUniFrame},
  Form1 in 'Form1.pas' {UniForm1: TUniForm},
  Form2 in 'Form2.pas' {UniForm2: TUniForm},
  uTrackBar in 'uSource\uTrackBar.pas' {uTrackBarFrame: TUniFrame},
  Form3 in 'Form3.pas' {UniForm3: TUniForm},
  Form4 in 'Form4.pas' {UniForm4: TUniForm},
  uSplitter in 'uSource\uSplitter.pas' {uSplitterFrame: TUniFrame},
  uDialogs in 'uSource\uDialogs.pas' {uDialogsFrame: TUniFrame},
  uListBox in 'uSource\uListBox.pas' {uListBoxFrame: TUniFrame},
  uKeyEvents in 'uSource\uKeyEvents.pas' {uKeyEventsFrame: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
