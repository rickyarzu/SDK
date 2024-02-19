// CodeGear C++Builder
// Copyright (c) 1995, 2023 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'dipstudiowin.dpk' rev: 36.00 (Windows)

#ifndef DipstudiowinHPP
#define DipstudiowinHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>	// (rtl)
#include <SysInit.hpp>
#include <vcl.wwDesign.hpp>
#include <vcl.infopowr.hpp>
#include <vcl.wwdbnavedt.hpp>
#include <vcl.wwprpedt.hpp>
#include <vcl.wwpiced2.hpp>
#include <vcl.wwprppic.hpp>
#include <vcl.ipdsgn.hpp>
#include <vcl.wwedtpic.hpp>
#include <vcl.Wwpicdb.hpp>
#include <vcl.wwprpcom.hpp>
#include <vcl.wwrgxed2.hpp>
#include <vcl.wwprprx.hpp>
#include <vcl.ipabout.hpp>
#include <vcl.wwfltfld.hpp>
#include <vcl.wwprpfld.hpp>
#include <vcl.wwselfld.hpp>
#include <vcl.wwcollectioneditor.hpp>
#include <vcl.wwInspectorPrpEdt.hpp>
#include <vcl.wwinspectorprop.hpp>
#include <vcl.wwprpds.hpp>
#include <vcl.wwImageNamePropEditor.hpp>
#include <System.UITypes.hpp>	// (rtl)
#include <Winapi.Windows.PkgHelper.hpp>	// (rtl)
#include <Winapi.PsAPI.hpp>	// (rtl)
#include <System.Character.hpp>	// (rtl)
#include <System.Internal.ExcUtils.hpp>	// (rtl)
#include <System.SysUtils.hpp>	// (rtl)
#include <System.VarUtils.hpp>	// (rtl)
#include <System.Variants.hpp>	// (rtl)
#include <System.TypInfo.hpp>	// (rtl)
#include <System.Math.hpp>	// (rtl)
#include <System.Generics.Defaults.hpp>	// (rtl)
#include <System.TimeSpan.hpp>	// (rtl)
#include <System.SyncObjs.hpp>	// (rtl)
#include <System.Rtti.hpp>	// (rtl)
#include <System.Classes.hpp>	// (rtl)
#include <System.DateUtils.hpp>	// (rtl)
#include <System.IOUtils.hpp>	// (rtl)
#include <System.IniFiles.hpp>	// (rtl)
#include <System.Win.Registry.hpp>	// (rtl)
#include <System.Actions.hpp>	// (rtl)
#include <System.UIConsts.hpp>	// (rtl)
#include <Vcl.Graphics.hpp>	// (vcl)
#include <System.Messaging.hpp>	// (rtl)
#include <Vcl.ActnList.hpp>	// (vcl)
#include <System.HelpIntfs.hpp>	// (rtl)
#include <Winapi.UxTheme.hpp>	// (rtl)
#include <System.AnsiStrings.hpp>	// (rtl)
#include <Vcl.GraphUtil.hpp>	// (vcl)
#include <Vcl.StdCtrls.hpp>	// (vcl)
#include <Vcl.Clipbrd.hpp>	// (vcl)
#include <Vcl.Printers.hpp>	// (vcl)
#include <Vcl.ComCtrls.hpp>	// (vcl)
#include <Vcl.Dialogs.hpp>	// (vcl)
#include <Vcl.ExtCtrls.hpp>	// (vcl)
#include <Vcl.Themes.hpp>	// (vcl)
#include <System.Win.ComObj.hpp>	// (rtl)
#include <Winapi.FlatSB.hpp>	// (rtl)
#include <Vcl.Forms.hpp>	// (vcl)
#include <Vcl.Menus.hpp>	// (vcl)
#include <Winapi.MsCTF.PkgHelper.hpp>	// (rtl)
#include <Vcl.Controls.hpp>	// (vcl)
#include <IDEMessages.hpp>	// (designide)
#include <Vcl.CaptionedDockTree.hpp>	// (vcl)
#include <Vcl.DockTabSet.hpp>	// (vcl)
#include <Vcl.Grids.hpp>	// (vcl)
#include <Vcl.CategoryButtons.hpp>	// (vcl)
#include <Vcl.ButtonGroup.hpp>	// (vcl)
#include <Vcl.SysStyles.hpp>	// (vcl)
#include <Winapi.D2D1.hpp>	// (rtl)
#include <Vcl.Direct2D.hpp>	// (vcl)
#include <Vcl.StyleAPI.hpp>	// (vcl)
#include <Vcl.Styles.hpp>	// (vcl)
#include <Vcl.ImageCollection.hpp>	// (vclwinx)
#include <BrandingAPI.hpp>	// (designide)
#include <Winapi.GDIPOBJ.hpp>	// (rtl)
#include <Vcl.Buttons.hpp>	// (vcl)
#include <Vcl.Imaging.pngimage.hpp>	// (vclimg)
#include <DebugAPI.hpp>	// (designide)
#include <Proxies.hpp>	// (designide)
#include <DesignEditors.hpp>	// (designide)
#include <System.Devices.hpp>	// (rtl)
#include <Vcl.AxCtrls.hpp>	// (vcl)
#include <Vcl.AppEvnts.hpp>	// (vcl)
#include <TreeIntf.hpp>	// (designide)
#include <TopLevels.hpp>	// (designide)
#include <StFilSys.hpp>	// (designide)
#include <IDEHelp.hpp>	// (designide)
#include <ComponentDesigner.hpp>	// (designide)
#include <IDETheme.Utils.hpp>	// (designide)
#include <PercentageDockTree.hpp>	// (designide)
#include <Vcl.WinXCtrls.hpp>	// (vclwinx)
#include <WaitDialog.hpp>	// (designide)
#include <Vcl.ExtDlgs.hpp>	// (vcl)
#include <Winapi.Mapi.hpp>	// (rtl)
#include <Vcl.ExtActns.hpp>	// (vcl)
#include <Vcl.ActnMenus.hpp>	// (vclactnband)
#include <Vcl.ActnMan.hpp>	// (vclactnband)
#include <Vcl.PlatformDefaultStyleActnCtrls.hpp>	// (vclactnband)
#include <BaseDock.hpp>	// (designide)
#include <DeskUtil.hpp>	// (designide)
#include <DeskForm.hpp>	// (designide)
#include <DockForm.hpp>	// (designide)
#include <Xml.Win.msxmldom.hpp>	// (xmlrtl)
#include <Xml.xmldom.hpp>	// (xmlrtl)
#include <ToolsAPI.hpp>	// (designide)
#include <Data.SqlTimSt.hpp>	// (dbrtl)
#include <Data.FmtBcd.hpp>	// (dbrtl)
#include <Data.DB.hpp>	// (dbrtl)
#include <Vcl.DBLogDlg.hpp>	// (vcldb)
#include <Vcl.DBPWDlg.hpp>	// (vcldb)
#include <Vcl.DBCtrls.hpp>	// (vcldb)
#include <vcl.wwmonthcalendar.hpp>	// (ipstudiowin)
#include <vcl.wwdbdatetimepicker.hpp>	// (ipstudiowin)
#include <vcl.wwmemo.hpp>	// (ipstudiowin)
#include <vcl.wwdotdot.hpp>	// (ipstudiowin)
#include <vcl.wwdbcomb.hpp>	// (ipstudiowin)
#include <vcl.wwbutton.hpp>	// (ipstudiowin)
#include <vcl.Wwtrackicon.hpp>	// (ipstudiowin)
#include <Vcl.OleCtnrs.hpp>	// (vcl)
#include <Vcl.DBGrids.hpp>	// (vcldb)
#include <vcl.wwdbspin.hpp>	// (ipstudiowin)
#include <vcl.wwriched.hpp>	// (ipstudiowin)
#include <vcl.wwdbgrid.hpp>	// (ipstudiowin)
#include <vcl.wwcheckbox.hpp>	// (ipstudiowin)
#include <vcl.wwdialog.hpp>	// (ipstudiowin)
#include <Vcl.CheckLst.hpp>	// (vclx)
#include <vcl.wwdbigrd.hpp>	// (ipstudiowin)
#include <vcl.wwdblook.hpp>	// (ipstudiowin)
#include <vcl.wwdbedit.hpp>	// (ipstudiowin)
#include <vcl.wwdbnavigator.hpp>	// (ipstudiowin)
#include <vcl.wwintl.hpp>	// (ipstudiowin)
#include <vcl.wwdatainspector.hpp>	// (ipstudiowin)
#include <VCLEditors.hpp>	// (designide)
// SO_SFX: 290
// PRG_EXT: .bpl
// BPI_DIR: ..\Lib\22.0\Win32
// OBJ_DIR: ..\lib\22.0\Win32
// OBJ_EXT: .obj

//-- user supplied -----------------------------------------------------------

namespace Dipstudiowin
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
}	/* namespace Dipstudiowin */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_DIPSTUDIOWIN)
using namespace Dipstudiowin;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// DipstudiowinHPP
