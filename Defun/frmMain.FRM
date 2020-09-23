VERSION 5.00
Begin VB.Form frmMain 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000000&
   BorderStyle     =   0  'None
   ClientHeight    =   3060
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3750
   ControlBox      =   0   'False
   DrawWidth       =   2
   FillStyle       =   0  'Solid
   ForeColor       =   &H00000000&
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   99  'Custom
   ScaleHeight     =   204
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picImage 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2400
      Left            =   330
      ScaleHeight     =   2370
      ScaleWidth      =   3000
      TabIndex        =   0
      Top             =   285
      Visible         =   0   'False
      Width           =   3030
   End
   Begin VB.Image imgPic 
      Height          =   480
      Left            =   11370
      Picture         =   "frmMain.frx":08CA
      Top             =   8025
      Width           =   480
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'--------------------------------------------------'
'|Fun with Screen!!![Defun v1.0]                  |'
'|------------------------------------------------|'
'|Written by Pallab Mahmud                        |'
'|© Copyright 2001 by Pallab Mahmud               |'
'|email: pallmahmud@yahoo.com                     |'
'|                                                |'
'|This sample code is a FREEWARE. Use it in your  |'
'|own project as it fits You but do not re-sale   |'
'|this code or destroy the original authors name. |'
'|                                                |'
'|Warning: No warranty is provided with this set  |'
'|of code so use it in your own risk. The author  |'
'|is not responsible for the Damage caused by     |'
'|this code.                                      |'
'--------------------------------------------------'
'--------------------------------------------------'
'Comments:It is a fun soft that coded very simply
'Just run it and draw any thing you want in the screen.
'And then right click to fill with random colour.
'It's tiny and funny!!!!Have fun!
'--------------------------------------------------'
'Hey If you can improve it better or faster,Please
'send me a copy of that.And please give me some credit
'--------------------------------------------------'
'I remain you please vote for me.
'--------------------------------------------------'
Option Explicit
Dim X1, Y1
Private Sub Form_KeyPress(KeyAscii As Integer)
    If vbKeyEscape Then
        savePic
        Me.Cls
        imgPic.Visible = True
    End If
End Sub
Private Sub Form_Load()
    On Error Resume Next
        DoEvents
    Set Me.Picture = CaptureScreen
End Sub
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        imgPic.Visible = False
        X1 = X
        Y1 = Y
    ElseIf Button = 2 Then
        Randomize
        Me.FillColor = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
        ExtFloodFill Me.hdc, X, Y, Me.Point(X, Y), 1
    End If
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        Me.Line (X1, Y1)-(X, Y)
        X1 = X
        Y1 = Y
    End If
End Sub
Private Sub savePic()
    On Error Resume Next
        Clipboard.Clear
        DoEvents
        Set picImage.Picture = CaptureScreen
        Clipboard.SetData picImage.Picture, 0
        SavePicture picImage.Picture, App.Path & "\Defun.jpg"
End Sub
Private Sub imgPic_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then frmAbout.Show
    If Button = 2 Then MsgBox "Your work saved at : " & Chr(10) & App.Path & "\Defun.jpg", vbExclamation, "Done !": End
End Sub
