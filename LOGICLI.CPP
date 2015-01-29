// Logicli.cpp : Defines the class behaviors for the application.
//
// Copyright (C) 1993-1994 George Mills and Softronics, Inc. Corporation
// All rights reserved.
//

#include "stdafx.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CLogiApp

BEGIN_MESSAGE_MAP(CLogiApp, CWinApp)
ON_COMMAND(CG_IDS_TIPOFTHEDAY, ShowTipOfTheDay)
//{{AFX_MSG_MAP(CLogiApp)
ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
	ON_COMMAND(ID_HELP_ABOUTMS, OnHelpAboutms)
	//}}AFX_MSG_MAP
// Standard file based document commands
ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
// Standard print setup command
ON_COMMAND(ID_FILE_PRINT_SETUP, CWinApp::OnFilePrintSetup)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CLogiApp construction

CLogiApp::CLogiApp()
   {
   // TODO: add construction code here,
   // Place all significant initialization in InitInstance
   }

/////////////////////////////////////////////////////////////////////////////
// The one and only CLogiApp object

CLogiApp NEAR theApp;

BOOL CheckAccount(CString &csUsername, CString &csPassword, BOOL bGenerate, BOOL bPrint)
   {
   int iTotal = 42;

   if (csUsername.GetLength() < 4) return FALSE;

   for (int i=0;i<32;i++)
      {
      for (int i=0;i<csUsername.GetLength();i++)
         {
         iTotal += csUsername[i];
         iTotal += iTotal/(i+1);
         iTotal += csUsername[abs(iTotal)%csUsername.GetLength()];
         }
      }

   CString str;
   str.Format(L"%x",iTotal);
   str.MakeUpper();

//#ifndef _DEBUG
   if (bGenerate)
//#endif
		{
		if ((bPrint) && (csUsername != "TRIAL"))
			{
			::MessageBox(::GetFocus(), str, L"Information", MB_OK | MB_TASKMODAL);
			}
		}

   if (str == csPassword)
		return TRUE;

   return FALSE;
   }

/////////////////////////////////////////////////////////////////////////////
// CLogiApp initialization

BOOL CLogiApp::InitInstance()
   {
   SetRegistryKey(_T("Softronics"));

   m_bReadOnly = FALSE;

#ifndef _DEBUG
   //   ::MessageBox(::GetFocus(),"This is still a BETA release, no license will issued until Jan 1, 1997\n\nFor more information contact:\n\nSoftronics, Inc.\nhttp://www.softronix.com/\nmills@softronix.com","Information", MB_OK | MB_TASKMODAL);
#endif

#define LAST_MESSAGE_PERIOD 30
#define DAYS 60*60*24*LAST_MESSAGE_PERIOD

	CTime ctCurrent = CTime::GetCurrentTime();
   CTime ctLastMessage((time_t) GetProfileInt(L"Misc", L"LastMessage", (int) ctCurrent.GetTime()-DAYS));

   // in case time was set back
	if (ctCurrent < ctLastMessage)
		ctLastMessage = ctCurrent.GetTime()-DAYS;

   CTimeSpan ctsDifference = (ctCurrent - ctLastMessage);

	if (ctsDifference.GetDays() >= LAST_MESSAGE_PERIOD)
		{
		CAboutMSDlg dlg;
		
		dlg.DoModal();

		WriteProfileInt(L"Misc", L"LastMessage", (int) ctCurrent.GetTime());
		}
	
#ifdef _ENABLELICENSE

   CString csUsername = GetProfileString("License", "Username", "TRIAL");
   CString csPassword = GetProfileString("License", "Password", "");
   CTime ctCurrent = CTime::GetCurrentTime();

#define INSTALLED "Installed_V10"
#define TRIAL_PERIOD 30

   if (GetProfileInt("License", INSTALLED, 0) == 0)
      {
      WriteProfileInt("License", INSTALLED, (int) ctCurrent.GetTime());
      }

   CTime ctInstalled((time_t) GetProfileInt("License", INSTALLED, 0));
   CTimeSpan ctsDifference = (ctCurrent - ctInstalled);
   int iDaysLeft = TRIAL_PERIOD - ctsDifference.GetDays();
   if (iDaysLeft < 0) iDaysLeft = 0;

   CString csDaysLeft;
   csDaysLeft.Format("There are %d trial period days left", iDaysLeft);

   csUsername.MakeUpper();
   csPassword.MakeUpper();

   if (csUsername == "TRIAL")
      {
      CLicenseDlg dlg;

      dlg.m_csUsername = csUsername;
      dlg.m_csDaysLeft = csDaysLeft;

      if (dlg.DoModal() != IDOK) return FALSE;

      csUsername = dlg.m_csUsername;
      csPassword = dlg.m_csPassword;

      csUsername.MakeUpper();
      csPassword.MakeUpper();

      if (CheckAccount(csUsername, csPassword, FALSE, TRUE))
         {
         WriteProfileString("License", "Username", csUsername);
         WriteProfileString("License", "Password", csPassword);
         }
      }

   if (CheckAccount(csUsername, csPassword, FALSE, FALSE))
      {
      CString str;
      str.Format("This product is licensed to %s\n", csUsername);

      if (csUsername == "SUPERVISOR")
         {
         CLicenseDlg dlg;

         if (dlg.DoModal() != IDOK) return FALSE;

         if (dlg.m_csPassword.GetLength() > 0)
            {
            WriteProfileString("License", "Username", "TRIAL");
            WriteProfileString("License", "Password", "");
            ::MessageBox(::GetFocus(),"Reset to Trial Mode","Information", MB_OK | MB_TASKMODAL);
            return FALSE;
            }

         CString csNewname = dlg.m_csUsername;
         csNewname.MakeUpper();

         CheckAccount(csNewname, csPassword, TRUE, TRUE);
         }
      }
   else
      {
      if (iDaysLeft == 0)
         {
         ::MessageBox(::GetFocus(),"READ ONLY license in use, to obtain a license see Order Form.\n\nFor more information contact:\n\nSoftronics, Inc.\nweb: http://www.softronix.com/\nemail: mills@softronix.com\nfax: (508) 393-0854", "Information", MB_OK | MB_TASKMODAL);
         m_bReadOnly = TRUE;
         //         return FALSE;
         }
      else
         {
         ::MessageBox(::GetFocus(),"TRIAL license in use, to obtain a license see Order Form.\n\nFor more information contact:\n\nSoftronics, Inc.\nweb: http://www.softronix.com/\nemail: mills@softronix.com\nfax: (508) 393-0854", "Information", MB_OK | MB_TASKMODAL);
         //Leave username and password as is to use this product in Trial Mode.\n\nTo obtain a license see Order Form.\n\nFor more information contact:\n\tSoftronics, Inc.\n\tweb: http://www.softronix.com\n\temail: mills@softronix.com\n\tfax: (508) 393-0854
         }
      }
#endif

   // Initialize OLE 2.0 libraries
   if (!AfxOleInit())
      {
      AfxMessageBox(IDP_OLE_INIT_FAILED);
      return FALSE;
      }

   // Standard initialization
   // If you are not using these features and wish to reduce the size
   //  of your final executable, you should remove from the following
   //  the specific initialization routines you do not need.

   //   SetDialogBkColor();        // set dialog background color to gray
   LoadStdProfileSettings();  // Load standard INI file options (including MRU)

   // Register the application's document templates.  Document templates
   //  serve as the connection between documents, frame windows and views.

   CMultiDocTemplate* pDocTemplate;
   pDocTemplate = new CMultiDocTemplate(
   IDR_LOGICLTYPE,
   RUNTIME_CLASS(CLogiDoc),
   RUNTIME_CLASS(CSplitFrame),
   //   RUNTIME_CLASS(CMDIChildWnd),
   RUNTIME_CLASS(CLogiView));
   pDocTemplate->SetContainerInfo(IDR_LOGICLTYPE_CNTR_IP);
   AddDocTemplate(pDocTemplate);

   // create main MDI Frame window
   CMainFrame* pMainFrame = new CMainFrame;
   if (!pMainFrame->LoadFrame(IDR_MAINFRAME))
      {
      // frame window creation failed.
      return FALSE;
      }
   m_pMainWnd = pMainFrame;

   // enable file manager drag/drop and DDE Execute open
   m_pMainWnd->DragAcceptFiles();
   EnableShellOpen();
   RegisterShellFileTypes();

   // simple command line parsing
   if (m_lpCmdLine[0] == '\0')
      {
      // create a new (empty) document
      OnFileNew();
      }
   else
      {
      // open an existing document
      OpenDocumentFile(m_lpCmdLine);
      }

   OnIdle(0);  // updates buttons before showing the window

   // the main window has been initialized, so show and update it.

   pMainFrame->ShowWindow(m_nCmdShow);
   pMainFrame->UpdateWindow();

   // CG: This line inserted by 'Tip of the Day' component.
   ShowTipAtStartup();

   return TRUE;
   }

/*
// In this override of OnIdle we are doing UI for our app.
// Since this needs to be as fast as possible to give the user
// the best result we do our updates first when lCount is zero
// then we call the library to do its work.
BOOL CLogiApp::OnIdle(LONG lCount)
   {

   if (lCount == 0)
      {
      //      if (m_pMainWnd != NULL)
         {
         ASSERT(m_pMainWnd != NULL);

         // look for any top-level windows owned by us
         // we use 'HWND's to avoid generation of too many temporary CWnds
         for (HWND hWnd = ::GetWindow(m_pMainWnd->m_hWnd, GW_HWNDFIRST);
         hWnd != NULL; hWnd = ::GetNextWindow(hWnd, GW_HWNDNEXT))
            {
            if (::GetParent(hWnd) == m_pMainWnd->m_hWnd)
               {
               // if owned window is active, move the activation to the
               //   application window
               if (GetActiveWindow() == hWnd && (::GetCapture() == NULL))
               m_pMainWnd->SetActiveWindow();

               // also update the buttons for the top-level window
               SendMessage(hWnd, WM_IDLEUPDATECMDUI, (WPARAM)TRUE, 0L);
               }
            }
         }
      }

   return CWinApp::OnIdle(lCount);
   }
*/

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
   {
   public:
   CAboutDlg();

   // Dialog Data
   //{{AFX_DATA(CAboutDlg)
   enum { IDD = IDD_ABOUTBOX }; //ignore//
   //}}AFX_DATA

   // ClassWizard generated virtual function overrides
   //{{AFX_VIRTUAL(CAboutDlg)
   protected:
   virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
   //}}AFX_VIRTUAL

   // Implementation
   protected:
   //{{AFX_MSG(CAboutDlg)
   // No message handlers
   //}}AFX_MSG
   DECLARE_MESSAGE_MAP()
   }
;

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
   {
   //{{AFX_DATA_INIT(CAboutDlg)
   //}}AFX_DATA_INIT
   }

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
   {
   CDialog::DoDataExchange(pDX);
   //{{AFX_DATA_MAP(CAboutDlg)
   //}}AFX_DATA_MAP
   }

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
//{{AFX_MSG_MAP(CAboutDlg)
// No message handlers
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// App command to run the dialog
void CLogiApp::OnAppAbout()
   {
   CAboutDlg aboutDlg;
   aboutDlg.DoModal();
   }

void CLogiApp::OnHelpAboutms()
	{
   CAboutMSDlg aboutMSDlg;
   aboutMSDlg.DoModal();
	}

/////////////////////////////////////////////////////////////////////////////
// CLogiApp commands


void CLogiApp::ShowTipAtStartup(void)
   {
   // CG: This function added by 'Tip of the Day' component.

   CCommandLineInfo cmdInfo;
   ParseCommandLine(cmdInfo);
   if (cmdInfo.m_bShowSplash)
      {
      CTipDlg dlg;
      if (dlg.m_bStartup)
      dlg.DoModal();
      }

   }

void CLogiApp::ShowTipOfTheDay(void)
   {
   // CG: This function added by 'Tip of the Day' component.

   CTipDlg dlg;
   dlg.DoModal();

   }
