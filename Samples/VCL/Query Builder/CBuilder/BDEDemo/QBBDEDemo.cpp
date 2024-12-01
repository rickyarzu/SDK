//---------------------------------------------------------------------------

#include <tchar.h>
#include <vcl.h>
#pragma hdrstop
USERES("QBBDEDemo.res");
USEFORM("AboutForm.cpp", fmAbout);
USEFORM("MainForm.cpp", fmMain);
USEFORM("QBOptionsForm.cpp", fmQBOptions);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TfmMain), &fmMain);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
