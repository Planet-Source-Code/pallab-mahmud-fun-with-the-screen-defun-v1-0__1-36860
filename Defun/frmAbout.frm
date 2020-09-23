VERSION 5.00
Begin VB.Form frmAbout 
   Appearance      =   0  'Flat
   BackColor       =   &H80000000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2235
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   3825
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2235
   ScaleWidth      =   3825
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtReg 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   6
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   0
      Left            =   1530
      TabIndex        =   0
      Text            =   "[To all PSC-USERS]"
      Top             =   990
      Width           =   1995
   End
   Begin VB.Timer tmAni 
      Interval        =   500
      Left            =   3465
      Top             =   -525
   End
   Begin VB.Label lblBut 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   6
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   150
      Left            =   3210
      MouseIcon       =   "frmAbout.frx":0000
      MousePointer    =   99  'Custom
      TabIndex        =   8
      Top             =   1890
      Width           =   465
   End
   Begin VB.Image imgBut 
      Appearance      =   0  'Flat
      Height          =   135
      Left            =   45
      MouseIcon       =   "frmAbout.frx":030A
      MousePointer    =   99  'Custom
      Top             =   90
      Width           =   135
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Version 1.0"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   6
      Left            =   2625
      TabIndex        =   7
      Top             =   615
      Width           =   810
   End
   Begin VB.Line lnDesg 
      BorderColor     =   &H80000007&
      Index           =   2
      X1              =   240
      X2              =   240
      Y1              =   0
      Y2              =   2250
   End
   Begin VB.Line lnDesg 
      BorderColor     =   &H80000003&
      Index           =   1
      X1              =   360
      X2              =   3570
      Y1              =   1230
      Y2              =   1230
   End
   Begin VB.Line lnDesg 
      BorderColor     =   &H80000003&
      Index           =   0
      X1              =   345
      X2              =   3570
      Y1              =   915
      Y2              =   915
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Have fun with it !!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   5
      Left            =   735
      TabIndex        =   6
      Top             =   480
      Width           =   1305
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "It's a Freeware fun soft."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   4
      Left            =   510
      TabIndex        =   5
      Top             =   180
      Width           =   1770
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "E-mail : pallmahmud@yahoo.com"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   3
      Left            =   540
      TabIndex        =   4
      Top             =   1350
      Width           =   2355
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Site : htttp://pall.topcities.com"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   2
      Left            =   645
      TabIndex        =   3
      Top             =   1605
      Width           =   2205
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright © 2002 by Pallab Mahmud"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   0
      Left            =   435
      TabIndex        =   2
      Top             =   1860
      Width           =   2640
   End
   Begin VB.Label lblInfo 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Dedicated to :"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   1
      Left            =   390
      TabIndex        =   1
      Top             =   960
      Width           =   1020
   End
   Begin VB.Image imgPic 
      Height          =   480
      Left            =   2805
      Picture         =   "frmAbout.frx":0614
      Top             =   105
      Width           =   480
   End
   Begin VB.Image imgBar 
      Height          =   2250
      Left            =   -15
      Picture         =   "frmAbout.frx":0EDE
      Top             =   0
      Width           =   255
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Form_DblClick()
    Unload Me
End Sub

Private Sub imgBar_DblClick()
    Unload Me
End Sub

Private Sub imgBar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    mkDrag Me, 1
End Sub

Private Sub imgBut_Click()
    Unload Me
End Sub

Private Sub lblBut_Click()
Unload Me
End Sub

Private Sub tmAni_Timer()
    imgPic.Top = imgPic.Top - 10
    If imgPic.Top < 125 Then imgPic.Top = 135
End Sub
Private Sub txtReg_Click(Index As Integer)
    Select Case Index
        Case 1
            Unload Me
    End Select
End Sub
