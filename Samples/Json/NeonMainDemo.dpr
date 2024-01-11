{******************************************************************************}
{                                                                              }
{  Neon: Serialization Library for Delphi                                      }
{  Copyright (c) 2018-2022 Paolo Rossi                                         }
{  https://github.com/paolo-rossi/neon-library                                 }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{    Demo.Forms.Main in '.\src\MainDemo\MainDemo\Demo.Forms.Main.pas           }
{******************************************************************************}
program NeonMainDemo;
      //Demos\Source\MainDemo
uses
  Forms,
  NeonDemo.Neon.Entities in 'src\MainDemo\NeonDemo.Neon.Entities.pas',
  NeonDemo.Neon.Serializers in 'src\MainDemo\NeonDemo.Neon.Serializers.pas',
  NeonDemo.Forms.Details in 'src\MainDemo\NeonDemo.Forms.Details.pas' {frmDetails},
  NeonDemo.Forms.Serialization.Custom in 'src\MainDemo\NeonDemo.Forms.Serialization.Custom.pas' {frmSerializationCustom},
  NeonDemo.Frame.Configuration in 'src\MainDemo\NeonDemo.Frame.Configuration.pas' {frameConfiguration: TFrame},
  NeonDemo.Forms.Serialization.Base in 'src\MainDemo\NeonDemo.Forms.Serialization.Base.pas' {frmSerializationBase},
  NeonDemo.Forms.Serialization.Simple in 'src\MainDemo\NeonDemo.Forms.Serialization.Simple.pas' {frmSerializationSimple},
  NeonDemo.Forms.Serialization.Complex in 'src\MainDemo\NeonDemo.Forms.Serialization.Complex.pas' {frmSerializationComplex},
  NeonDemo.Forms.Serialization.Delphi in 'src\MainDemo\NeonDemo.Forms.Serialization.Delphi.pas' {frmSerializationDelphi},
  NeonDemo.Forms.Serialization.Schema in 'src\MainDemo\NeonDemo.Forms.Serialization.Schema.pas' {frmSerializationSchema},
  NeonDemo.Forms.Serialization.Records in 'src\MainDemo\NeonDemo.Forms.Serialization.Records.pas' {frmSerializationRecords},
  NeonDemo.Forms.Main in 'src\MainDemo\NeonDemo.Forms.Main.pas' {NeonMainForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TNeonMainForm, NeonMainForm);
  Application.CreateForm(TfrmSerializationRecords, frmSerializationRecords);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.