VERSION 5.00
Begin VB.Form frmScore 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "HiScores"
   ClientHeight    =   3000
   ClientLeft      =   945
   ClientTop       =   1860
   ClientWidth     =   2745
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3000
   ScaleWidth      =   2745
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   255
      Left            =   840
      TabIndex        =   10
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label lblScore5 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   9
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label lblName5 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label lblScore4 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   7
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label lblName4 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label lblScore3 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   5
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lblName3 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lblScore2 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   3
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblName2 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblScore1 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblName1 
      BackColor       =   &H00000000&
      Caption         =   "hdhdhhfdhdhd"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "frmScore"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open "hiscore.dat" For Output As #9
Write #9, Name1, Name2, Name3, Name4, Name5, Score1, Score2, Score3, Score4, Score5
Close #9

Unload Me
End Sub

Private Sub Form_Load()
Let lblName1.Caption = "1) " & Name1
Let lblName2.Caption = "2) " & Name2
Let lblName3.Caption = "3) " & Name3
Let lblName4.Caption = "4) " & Name4
Let lblName5.Caption = "5) " & Name5

Let lblScore1.Caption = (Format(Score1, "Currency"))
Let lblScore2.Caption = (Format(Score2, "Currency"))
Let lblScore3.Caption = (Format(Score3, "Currency"))
Let lblScore4.Caption = (Format(Score4, "Currency"))
Let lblScore5.Caption = (Format(Score5, "Currency"))
End Sub
