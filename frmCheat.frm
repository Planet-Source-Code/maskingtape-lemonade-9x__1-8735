VERSION 5.00
Begin VB.Form frmCheat 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cheating : Shame on you!"
   ClientHeight    =   2205
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3360
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2205
   ScaleWidth      =   3360
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Weather"
      ForeColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   1800
      TabIndex        =   5
      Top             =   120
      Width           =   1455
      Begin VB.OptionButton Option2 
         BackColor       =   &H00000000&
         Caption         =   "False"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   840
         Width           =   975
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00000000&
         Caption         =   "Random"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   600
         Value           =   -1  'True
         Width           =   975
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         Caption         =   "Rain ="
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Money"
      ForeColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1575
      Begin VB.TextBox txtCheatC 
         Height          =   285
         Left            =   480
         TabIndex        =   3
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label1 
         BackColor       =   &H00000000&
         Caption         =   "Amount of Cash"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Apply"
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   255
      Left            =   1320
      TabIndex        =   0
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      Caption         =   "Cheater!!"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2520
      TabIndex        =   10
      Top             =   1680
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "Cheater!!"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1680
      Width           =   735
   End
End
Attribute VB_Name = "frmCheat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me

End Sub

Private Sub Command2_Click()
Form1.Cheato
Form1.lblCheater.Visible = True
cheater = True
Unload Me

End Sub
