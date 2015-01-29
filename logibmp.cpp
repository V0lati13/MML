// LogiBmp.cpp - implementation for LogiBmp objects
//
// Copyright (C) 1993-1994 George Mills and Softronics, Inc. Corporation
// All rights reserved.
//

#include "stdafx.h"

////////////////////////////////////////////////////////////////////////////
// CLogiBitmapGate

IMPLEMENT_SERIAL(CLogiBitmapGate, CLogiGate, 0)

CLogiBitmapGate::CLogiBitmapGate()
   {
   m_bLoaded = FALSE;
   m_bPlayground = FALSE;

   for (int i=0;i<16;i++) m_Robot[i] = NULL;
   }

CLogiBitmapGate::CLogiBitmapGate(const CRect& position, const char *name, int ipage, CLogiDoc* pdoc, int iStyle, BOOL bPlayground, const char *pFileName) : CLogiGate(position, name, ipage, pdoc, 0, 4, IDB_TEXT, bitmapgate)
   {

   m_csFileName = pFileName;
   m_iStyle = iStyle;
   m_bPlayground = bPlayground;

   m_bLoaded = FALSE;
   for (int i=0;i<16;i++) m_Robot[i] = NULL;

   if (m_iStyle == 1)
      {
      Inputs = 4;
      }
   else
      {
      Inputs = 0;
      }

   Contacts = Outputs + Inputs;

   if (m_iStyle != 1) LoadBase();

   SetContacts();
   }

void CLogiBitmapGate::LoadBase()
   {
   m_cdPicture.Empty();

   CFile cf;

   BOOL bStatus = TRUE;

   if (m_csFileName != "\\NUL")
      {

      CString csFullPath;
      CString csPathName = m_pDocument->GetPathName();

      RelativeToFullPath(m_csFileName, csPathName, csFullPath);

      if (!cf.Open(csFullPath, CFile::modeRead | CFile::shareDenyWrite))
         {
         ::MessageBox(::GetFocus(), csFullPath, L"Could not open File", MB_OK | MB_ICONEXCLAMATION);
         bStatus = FALSE;
         }
      else
         {
         if (!m_cdPicture.Read(&cf))
            {
            ::MessageBox(::GetFocus(), csFullPath, L"Could not load File", MB_OK | MB_ICONEXCLAMATION);
            bStatus = FALSE;
            }

         cf.Close();
         }
      }
   else
      {
      bStatus = FALSE;
      }
   }

void CLogiBitmapGate::ResizeRect()
   {

   if (m_bLoaded)
      {
      if (m_cdPictures[m_uIndex].IsEmpty())
         {
         m_size = CSize(BITX,BITY);
         }
      else
         {
         m_size = m_cdPictures[m_uIndex].GetDimensions();
         }
      }
   else
      {
      if (m_iStyle == 1)
         {
         m_size = CSize(BITX,BITY);
         }
      else
         {
         if (m_cdPicture.IsEmpty())
            {
            m_size = CSize(BITX,BITY);
            }
         else
            {
            m_size = m_cdPicture.GetDimensions();
            }
         }
      }

   if (m_iStyle == 1)
      {
      m_size += CSize((BITX_TXT-1),0);
      if (m_size.cy < BITY_TXT) m_size.cy = BITY_TXT;
      }

   m_position.right = m_position.left + m_size.cx;
   m_position.bottom = m_position.top - m_size.cy;
   }

void CLogiBitmapGate::Serialize(CArchive& ar)
   {
   ASSERT_VALID(this);

   CLogiGate::Serialize(ar);

   if (ar.IsStoring())
      {
      ar << m_csFileName;
      ar << m_iStyle;
      ar << m_bPlayground;
      }
   else
      {
      ar >> m_csFileName;
      ar >> m_iStyle;
      ar >> m_bPlayground;

      m_bLoaded = FALSE;

      if (m_iStyle != 1) LoadBase();
      ResizeRect();
      SetContacts();
      }
   }

void CLogiBitmapGate::Draw(CDC* pDC, CLogiView* pView )
   {
   ASSERT_VALID(this);

   // Draw the Bitmap Portion

   if (m_iStyle == 1)
      {
      CRect crBackup = m_position;
      CSize csBackup = m_size;

      m_position = CRect(m_position.TopLeft(), CSize(BITX_TXT, -BITY_TXT));
      m_size = CSize(BITX_TXT, BITY_TXT);

      CLogiGate::Draw(pDC, pView);

      m_position = crBackup;
      m_size     = csBackup;
      }

   if (m_bLoaded)
      {
      if (m_cdPictures[m_uIndex].IsEmpty())
         {
         CRect crBackup = m_position;
         CSize csBackup = m_size;

         m_position = CRect(CPoint(m_position.left+BITX_TXT-1, m_position.top), CSize(BITX, -BITY));
         m_size = CSize(BITX, BITY);

         GateID = IDB_BMP;
         CLogiGate::Draw(pDC, pView);
         GateID = IDB_TEXT;

         m_position = crBackup;
         m_size     = csBackup;
         }
      else
         {
//         CSize size = m_cdPictures[m_uIndex].GetDimensions();

//         m_cdPictures[m_uIndex].Draw(pDC, CPoint(m_position.left+BITX_TXT-1, m_position.bottom), size);

         m_cdPictures[m_uIndex].Draw(pDC, CPoint(m_position.left+BITX_TXT-1, m_position.bottom));
         }
      }
   else
      {
      if (m_iStyle == 1)
         {
         CRect crBackup = m_position;
         CSize csBackup = m_size;

         m_position = CRect(CPoint(m_position.left+BITX_TXT-1, m_position.top), CSize(BITX, -BITY));
         m_size = CSize(BITX, BITY);

         GateID = IDB_BMP;
         CLogiGate::Draw(pDC, pView);
         GateID = IDB_TEXT;

         m_position = crBackup;
         m_size     = csBackup;
         }
      else
         {
         if (m_cdPicture.IsEmpty())
            {
            CRect crBackup = m_position;
            CSize csBackup = m_size;

            m_position = CRect(CPoint(m_position.left, m_position.top), CSize(BITX, -BITY));
            m_size = CSize(BITX, BITY);

            GateID = IDB_BMP;
            CLogiGate::Draw(pDC, pView);
            GateID = IDB_TEXT;

            m_position = crBackup;
            m_size     = csBackup;
            }
         else
            {
            CRect updateRect;
            CRect posRect;
            CRect intersectRect;
            CPoint SourcePoint;

            pDC->GetClipBox(&updateRect);
            updateRect.NormalizeRect();

            posRect = m_position;
            posRect.NormalizeRect();

            intersectRect.IntersectRect(&posRect,&updateRect);

            SourcePoint.x = intersectRect.left - posRect.left;
            SourcePoint.y = posRect.bottom - intersectRect.bottom;

            m_cdPicture.DrawPartial(pDC, CPoint(intersectRect.left, intersectRect.top), SourcePoint, intersectRect.Size());

//            m_cdPicture.Draw(pDC, CPoint(m_position.left, m_position.bottom));

            if (m_bPlayground)
               {
               for (int i=0;i<16;i++)
                  {
                  if (m_Robot[i])
                     {
                     m_Robot[i]->DrawRobot(pDC, pView);
                     }
                  }
               }
            }
         }
      }
   }

void CLogiBitmapGate::Animate(CLogiView* pView)
   {

   // Draw Device in its current state (BitMap ID held in GateID)

   if (m_iStyle == 1)
      {
      pView->InvalObj(this);
      ResizeRect();
      pView->InvalObj(this);
      }
   }

void CLogiBitmapGate::Initialize(CLogiView* pView, UINT iMode)
   {
   if (m_iStyle == 1)
      {
      m_bLoaded = FALSE;

      pView->InvalObj(this);
      ResizeRect();
      pView->InvalObj(this);

      for (int i=0;i<16;i++)
         {
         if (!m_cdPictures[i].IsEmpty())
            {
            m_cdPictures[i].Empty();
            }
         }

      CLogiGate::Initialize(pView, iMode);
      pView->GetDocument()->EventQueue.AddTail(this);
      }
   else
      {
      LoadBase();
      pView->InvalObj(this);
      }
   }

void CLogiBitmapGate::Simulate(CLogiDoc* pDoc)
   {

   // Perform Simulation

   if (m_iStyle == 1)
      {
      UINT uTemp = 0;

      for (i=0;i<4;i++)
         {
         if ((Node[i])->State == HI) uTemp |= 1<<i;
         }

      m_uIndex = uTemp;

      if (m_cdPictures[m_uIndex].IsEmpty())
         {
         CString csTemp;
         CFile cf;

         CString csCheck = m_csFileName.Right(5);
         csCheck.MakeUpper();

         if (csCheck != "0.BMP") return;

         CString csFullPath;
         CString csPathName = m_pDocument->GetPathName();

         RelativeToFullPath(m_csFileName, csPathName, csFullPath);

         csTemp.Format(L"%s%d.BMP",csFullPath.Left(csFullPath.GetLength()-5),m_uIndex);

         if (!cf.Open(csTemp, CFile::modeRead | CFile::shareDenyWrite))
            {
            ::MessageBox(::GetFocus(), csTemp, L"Could not open File", MB_OK | MB_ICONEXCLAMATION);
            pDoc->Halt();
            //            pDoc->m_bKeepGoing = FALSE;
            return;
            }

         if (!m_cdPictures[m_uIndex].Read(&cf))
            {
            ::MessageBox(::GetFocus(), csTemp, L"Could not load File", MB_OK | MB_ICONEXCLAMATION);
            pDoc->Halt();
            //            pDoc->m_bKeepGoing = FALSE;
            return;
            }

         cf.Close();

         }

      m_bLoaded = TRUE;

      }

   }

// SetContacts
void CLogiBitmapGate::SetContacts(void)
   {
   int i;

   // compute new contact points

   for (i=0;i<Contacts;i++) Contact[i] = m_position.TopLeft();

   Contact[0].x += CONTACT_X_IN;
   Contact[0].y -= CONTACT_Y_1;
   Contact[1].x += CONTACT_X_IN;
   Contact[1].y -= CONTACT_Y_2;
   Contact[2].x += CONTACT_X_IN;
   Contact[2].y -= CONTACT_Y_3;
   Contact[3].x += CONTACT_X_IN;
   Contact[3].y -= CONTACT_Y_4;
   }

// position must be in logical coordinates
void CLogiBitmapGate::MoveTo(const CRect& position, CLogiView* pView)
   {

   CLogiObj::MoveTo(position, pView);

   SetContacts();
   ResizeRect();

   CLogiGate::MoveTo(position, pView);

   }

CLogiObj* CLogiBitmapGate::Clone(CLogiDoc* pDoc)
   {
   ASSERT_VALID(this);

   CLogiBitmapGate* pClone = new CLogiBitmapGate(m_position, CT2A((LPCTSTR)Name), m_iPage, pDoc, m_iStyle, m_bPlayground, CT2A((LPCTSTR)m_csFileName));

   ASSERT_VALID(pClone);

   if (pDoc != NULL) pDoc->Add(pClone);

   ASSERT_VALID(pClone);
   return pClone;
   }

void CLogiBitmapGate::OnOpen(CLogiView* pView)
   {
   ASSERT_VALID(this);

   CBitmapDlg dlg;

   dlg.m_csFileName = m_csFileName;
   dlg.m_iStyle = m_iStyle;
   dlg.m_bPlayground = m_bPlayground;

   dlg.m_csPathName = pView->GetDocument()->GetPathName();

   if (dlg.DoModal() != IDOK) return;

   if (m_iStyle != dlg.m_iStyle)
      {
      for (int i=0;i<Contacts;i++)
         {
         if (Node[i] != pView->GetDocument()->m_pAnodeNULL)
            {
            pView->MessageBox(L"Device cannot be connected when changing number of inputs", L"Error");
            return;
            }
         }

      for (int i=0;i<4;i++) Node[i] = pView->GetDocument()->m_pAnodeNULL;
      }

   m_csFileName = dlg.m_csFileName;
   m_iStyle = dlg.m_iStyle;

   if (m_iStyle == 1)
      {
      m_bPlayground = FALSE;
      Inputs = 4;
      }
   else
      {
      m_bPlayground = dlg.m_bPlayground;
      Inputs = 0;
      }

   Contacts = Outputs + Inputs;

   if (m_iStyle != 1) LoadBase();

   Invalidate();
   ResizeRect();
   Invalidate();

   SetContacts();
   m_pDocument->SetModifiedFlag();
   }
