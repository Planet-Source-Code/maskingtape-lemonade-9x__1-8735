VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "How to..."
   ClientHeight    =   2670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5340
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2670
   ScaleWidth      =   5340
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Select Help"
      ForeColor       =   &H00FFFFFF&
      Height          =   2415
      Left            =   3600
      TabIndex        =   2
      Top             =   120
      Width           =   1575
      Begin VB.CommandButton Command1 
         Caption         =   "<-Back"
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   2040
         Width           =   975
      End
      Begin VB.Label Label3 
         BackColor       =   &H00000000&
         Caption         =   "Tips N Tricks"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         Caption         =   "Cheating"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   480
         TabIndex        =   5
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label1 
         BackColor       =   &H00000000&
         Caption         =   "How to play"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Your selection"
      ForeColor       =   &H00FFFFFF&
      Height          =   2415
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3255
      Begin VB.TextBox txtCheat 
         Height          =   2055
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   7
         Text            =   "Form2.frx":0742
         Top             =   240
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.TextBox TxtTips 
         Height          =   2055
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   8
         Text            =   "Form2.frx":08A1
         Top             =   240
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.TextBox txtHow 
         Height          =   2055
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   1
         Text            =   "Form2.frx":09A0
         Top             =   240
         Visible         =   0   'False
         Width           =   3015
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Label1_Click()
txtCheat.Visible = False
TxtTips.Visible = False
txtHow.Visible = True
End Sub

Private Sub Label2_Click()
txtHow.Visible = False
TxtTips.Visible = False
txtCheat.Visible = True
End Sub

Private Sub Label3_Click()
txtCheat.Visible = False
txtHow.Visible = False
TxtTips.Visible = True
End Sub

