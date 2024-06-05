unit UMSComputerVisionDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, CloudBase, CloudBaseWin, TypInfo, CloudImage, Vcl.ExtCtrls,
  Jpeg, CloudCustomMSComputerVision, CloudMSComputerVision,
  CloudCustomMSEmotion, CloudMSEmotion, Vcl.ComCtrls, Vcl.ExtDlgs;

type
  TForm12 = class(TForm)
    Memo1: TMemo;
    AdvMSEmotion1: TAdvMSEmotion;
    AdvMSComputerVision1: TAdvMSComputerVision;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cbCognitiveType: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    edURL: TEdit;
    btProcessURL: TButton;
    btProcessFile: TButton;
    Label2: TLabel;
    AdvCloudImage1: TAdvCloudImage;
    ciOCR: TAdvCloudImage;
    ciAnalyze: TAdvCloudImage;
    btOCR: TButton;
    btAnalyze: TButton;
    ciEmotion: TAdvCloudImage;
    btEmotion: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure btProcessURLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProcessFileClick(Sender: TObject);
    procedure btOCRClick(Sender: TObject);
    procedure btAnalyzeClick(Sender: TObject);
    procedure btEmotionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ComputerVisionKey: string;
    EmotionKey: string;
    procedure DisplayOCR;
    procedure DisplayAnalysis;
    procedure DisplayEmotion;
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  MSComputerVisionAppkey = 'xxxxxxxxx';
//  MSEmotionAppkey = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm12.btAnalyzeClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvMSComputerVision1.ProcessURL(ciAnalyze.URL, ctAnalysis);
  DisplayAnalysis;
  Screen.Cursor := crDefault;
end;

procedure TForm12.btEmotionClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvMSEmotion1.ProcessURL(ciEmotion.URL);
  DisplayEmotion;
  Screen.Cursor := crDefault;
end;

procedure TForm12.btOCRClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvMSComputerVision1.ProcessURL(ciOCR.URL, ctOCR);
  DisplayOCR;
  Screen.Cursor := crDefault;
end;

procedure TForm12.btProcessFileClick(Sender: TObject);
var
  ct: TMSComputerVisionType;
begin
  if OpenPictureDialog1.Execute then
  begin
    Screen.Cursor := crHourGlass;
    AdvCloudImage1.URL := '';

    if cbCognitiveType.ItemIndex = 2 then
    begin
      if AdvMSEmotion1.ProcessFile(OpenPictureDialog1.FileName) then
        DisplayEmotion;
    end
    else
    begin

      if cbCognitiveType.ItemIndex = 1 then
        ct := ctOCR
      else
        ct := ctAnalysis;

      if AdvMSComputerVision1.ProcessFile(OpenPictureDialog1.FileName, ct) then
      begin
        if ct = ctAnalysis then
          DisplayAnalysis
        else
          DisplayOCR;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm12.btProcessURLClick(Sender: TObject);
var
  ct: TMSComputerVisionType;
begin
  Screen.Cursor := crHourGlass;
  AdvCloudImage1.URL := '';

  if cbCognitiveType.ItemIndex = 2 then
  begin
    if AdvMSEmotion1.ProcessURL(edURL.Text) then
      AdvCloudImage1.URL := edURL.Text;
  end
  else
  begin
    if cbCognitiveType.ItemIndex = 1 then
      ct := ctOCR
    else
      ct := ctAnalysis;

    if AdvMSComputerVision1.ProcessURL(edURL.Text, ct) then
    begin
      AdvCloudImage1.URL := edURL.Text;

      if ct = ctAnalysis then
        DisplayAnalysis
      else
        DisplayOCR;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm12.DisplayAnalysis;
var
  I: Integer;
  gender: string;
begin
    Memo1.Lines.Clear;

    Memo1.Lines.Add('Categories:');
    for I := 0 to AdvMSComputerVision1.Analysis.Categories.Count - 1 do
      Memo1.Lines.Add(AdvMSComputerVision1.Analysis.Categories[I]
       + ' (' + FloatToStr(Round(AdvMSComputerVision1.Analysis.CategoryScores[I] * 100)) + '%)');

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Tags:');
    for I := 0 to AdvMSComputerVision1.Analysis.Tags.Count - 1 do
      Memo1.Lines.Add(AdvMSComputerVision1.Analysis.Tags[I]
       + ' (' + FloatToStr(Round(AdvMSComputerVision1.Analysis.TagScores[I] * 100)) + '%)');

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Description:');
    for I := 0 to AdvMSComputerVision1.Analysis.Descriptions.Count - 1 do
      Memo1.Lines.Add(AdvMSComputerVision1.Analysis.Descriptions[I]
       + ' (' + FloatToStr(Round(AdvMSComputerVision1.Analysis.DescriptionScores[I] * 100)) + '%)');

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Faces:');
    for I := 0 to AdvMSComputerVision1.Analysis.Faces.Count - 1 do
    begin
      case AdvMSComputerVision1.Analysis.Faces[I].Gender of
        cgFemale: gender := 'Female';
        cgMale: gender := 'Male';
        cgUnknown: gender := 'Unknown';
      end;
      Memo1.Lines.Add('Gender: ' + gender);
      Memo1.Lines.Add('Age: ' + IntToStr(AdvMSComputerVision1.Analysis.Faces[I].Age));
    end;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Adult Content: ' + BoolToStr(AdvMSComputerVision1.Analysis.IsAdultContent, true)
     + ' (' + FloatToStr(Round(AdvMSComputerVision1.Analysis.AdultScore * 100)) + '%)');
    Memo1.Lines.Add('Racy Content: ' + BoolToStr(AdvMSComputerVision1.Analysis.IsRacyContent, true)
     + ' (' + FloatToStr(Round(AdvMSComputerVision1.Analysis.RacyScore * 100)) + '%)');

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Dominant Colors:');
    for I := 0 to AdvMSComputerVision1.Analysis.Colors.DominantColors.Count - 1 do
      Memo1.Lines.Add(AdvMSComputerVision1.Analysis.Colors.DominantColors[I]);

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Image: ' + IntToStr(AdvMSComputerVision1.Analysis.Width)
      + 'x' + IntToStr(AdvMSComputerVision1.Analysis.Height) + ' '
      + AdvMSComputerVision1.Analysis.Format);
end;

procedure TForm12.DisplayEmotion;
var
  I: Integer;
begin
  Memo1.Lines.Clear;

  for I := 0 to AdvMSEmotion1.Emotions.Count - 1 do
  begin
    Memo1.Lines.Add('Face ' + IntToStr(I+1) + ':');
    Memo1.Lines.Add('Anger: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].AngerScore * 100)) + '%');
    Memo1.Lines.Add('Contempt: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].ContemptScore * 100)) + '%');
    Memo1.Lines.Add('Disgust: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].DisgustScore * 100)) + '%');
    Memo1.Lines.Add('Fear: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].FearScore * 100)) + '%');
    Memo1.Lines.Add('Happiness: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].HappinessScore * 100)) + '%');
    Memo1.Lines.Add('Neutral: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].NeutralScore * 100)) + '%');
    Memo1.Lines.Add('Sadness: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].SadnessScore * 100)) + '%');
    Memo1.Lines.Add('Surprise: ' + FloatToStr(Round(AdvMSEmotion1.Emotions[I].SurpriseScore * 100)) + '%');
    Memo1.Lines.Add('');
  end;
end;

procedure TForm12.DisplayOCR;
begin
  Memo1.Lines.Clear;

  Memo1.Lines.Add('Language: '
    + StringReplace(GetEnumName(TypeInfo(TMSComputerVisionLanguage), Ord(AdvMSComputerVision1.OCR.Language)), 'cl', '', []));
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Text:');
  Memo1.Lines.Add(AdvMSComputerVision1.OCR.Text.Text);
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  edURL.Text := 'http://www.tmssoftware.biz/cloud/CloudPack3.7.png';

  AdvMSEmotion1.App.Key := MSEmotionAppkey;
  AdvMSComputerVision1.App.Key := MSComputerVisionAppkey;

  cbCognitiveType.Items.Clear;
  cbCognitiveType.Items.Add('Analysis');
  cbCognitiveType.Items.Add('OCR');
  cbCognitiveType.Items.Add('Emotion');
  cbCognitiveType.ItemIndex := 0;

  ciOCR.URL := 'http://www.tmssoftware.biz/cloud/CloudPack3.7.png';
  ciAnalyze.URL := 'http://www.tmssoftware.biz/cloud/analyze.jpg';
  ciEmotion.URL := 'http://www.tmssoftware.biz/cloud/emotion.jpg';
end;

end.
