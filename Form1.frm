VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lemonade 9x                                                           Ver 1.9.0"
   ClientHeight    =   3495
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   6570
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   6570
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   3120
      ScaleHeight     =   375
      ScaleWidth      =   255
      TabIndex        =   16
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox picStatusbar 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      ScaleHeight     =   195
      ScaleWidth      =   6555
      TabIndex        =   13
      ToolTipText     =   "Displays various information."
      Top             =   3240
      Width           =   6615
   End
   Begin VB.CommandButton cmdContinue 
      Caption         =   "&Continue"
      Height          =   255
      Left            =   3480
      TabIndex        =   10
      ToolTipText     =   "Continue (duh)"
      Top             =   2880
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.CommandButton cmdNextDay 
      Caption         =   "&Start"
      Enabled         =   0   'False
      Height          =   255
      Left            =   5520
      TabIndex        =   9
      ToolTipText     =   "Start the next day"
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   255
      Left            =   5520
      TabIndex        =   8
      ToolTipText     =   "Quit this cool game"
      Top             =   2880
      Width           =   975
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Weather Status"
      ForeColor       =   &H00FFFFFF&
      Height          =   1455
      Left            =   3240
      TabIndex        =   1
      Top             =   120
      Width           =   3135
      Begin VB.PictureBox picStatus 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   1095
         Left            =   120
         ScaleHeight     =   1035
         ScaleWidth      =   2835
         TabIndex        =   3
         Top             =   240
         Width           =   2895
         Begin VB.Image imgSunny 
            Height          =   495
            Left            =   2160
            Picture         =   "Form1.frx":0442
            Stretch         =   -1  'True
            Top             =   480
            Visible         =   0   'False
            Width           =   615
         End
         Begin VB.Image imgCloudy 
            Height          =   495
            Left            =   2160
            Picture         =   "Form1.frx":0884
            Stretch         =   -1  'True
            Top             =   480
            Visible         =   0   'False
            Width           =   615
         End
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Status Output"
      ForeColor       =   &H00FFFFFF&
      Height          =   3015
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2895
      Begin VB.PictureBox picOutput 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         ClipControls    =   0   'False
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H00FFFFFF&
         Height          =   2655
         Left            =   120
         ScaleHeight     =   2595
         ScaleWidth      =   2595
         TabIndex        =   2
         Top             =   240
         Width           =   2655
         Begin VB.TextBox txtPriceperGlass 
            Height          =   285
            Left            =   960
            MaxLength       =   3
            TabIndex        =   12
            Top             =   2160
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.TextBox txtNumGlasses 
            Height          =   285
            Left            =   960
            MaxLength       =   5
            TabIndex        =   11
            Top             =   840
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.Label lbl60000 
            BackColor       =   &H00000000&
            Caption         =   "10000"
            ForeColor       =   &H00FFFFFF&
            Height          =   255
            Left            =   1680
            TabIndex        =   18
            Top             =   0
            Visible         =   0   'False
            Width           =   1095
         End
      End
   End
   Begin VB.Label lblCheater 
      BackColor       =   &H00000000&
      Caption         =   "Cheater!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5280
      TabIndex        =   17
      Top             =   1560
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblDays 
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4560
      TabIndex        =   15
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Days left:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   14
      Top             =   1680
      Width           =   855
   End
   Begin VB.Label lblPrice 
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4560
      TabIndex        =   7
      Top             =   2400
      Width           =   855
   End
   Begin VB.Label lblCurrent 
      BackColor       =   &H00000000&
      Caption         =   "Price/Glass:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3360
      TabIndex        =   6
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label lblNumCash 
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4560
      TabIndex        =   5
      Top             =   2040
      Width           =   1935
   End
   Begin VB.Label lblCash 
      BackColor       =   &H00000000&
      Caption         =   "Your Cash:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   4
      Top             =   2040
      Width           =   975
   End
   Begin VB.Menu file 
      Caption         =   "&File"
      Begin VB.Menu restart 
         Caption         =   "Restart"
         Shortcut        =   {F3}
      End
      Begin VB.Menu exit 
         Caption         =   "Exit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu options 
      Caption         =   "&Options"
      Begin VB.Menu diff 
         Caption         =   "Difficulty"
         Begin VB.Menu easy 
            Caption         =   "Easy"
            Enabled         =   0   'False
         End
         Begin VB.Menu med 
            Caption         =   "Medium"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu hard 
            Caption         =   "Hard"
            Enabled         =   0   'False
         End
      End
      Begin VB.Menu sound 
         Caption         =   "Sound"
         Begin VB.Menu son 
            Caption         =   "*On*"
            Enabled         =   0   'False
         End
         Begin VB.Menu soff 
            Caption         =   "Off"
         End
      End
      Begin VB.Menu break2 
         Caption         =   "-"
      End
      Begin VB.Menu cheat 
         Caption         =   "Cheat --- Earn it!"
         Enabled         =   0   'False
         Shortcut        =   ^C
      End
   End
   Begin VB.Menu view 
      Caption         =   "&View"
      Begin VB.Menu hiscores 
         Caption         =   "HiScores"
         Shortcut        =   {F12}
      End
   End
   Begin VB.Menu help 
      Caption         =   "&Help"
      Begin VB.Menu howto 
         Caption         =   "How to..."
      End
      Begin VB.Menu about 
         Caption         =   "About"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

Option Explicit
Dim soundonoff As Boolean
Dim days As Integer
Dim Thingy As String
Dim Thingy2 As Integer
Dim GlassesYouCanMake As Integer
Dim GlassesYouWantToMake As Integer
Dim ChargePerGlass As Currency
Dim HighTempature As Integer
Dim PercentChanceOfRain As Integer
Dim Cash As Currency
Dim CurrentPricePerGlass As Currency
Dim GlassesSold As Integer
Dim YourCost As Currency
Dim TotalSales As Currency
Dim Profit As Currency
Dim Raise As Integer
Dim Rain As Boolean

Public Sub RaisePrice()
CheckThing
If Raise = 3 Then
    picStatusbar.Print "Breaking news! -- The price of "; Thingy; " has gone up by 2 cents! "
    Let CurrentPricePerGlass = (CurrentPricePerGlass + 0.02)
    UpdateScreen
    GetPricePerGlass
End If
End Sub
Public Sub CheckThing()
If Thingy2 = 1 Then
    Thingy = "lemons"
ElseIf Thingy2 = 2 Then
    Thingy = "sugar"
ElseIf Thingy2 = 3 Then
    Thingy = "paper cups"
End If

End Sub

Private Sub about_Click()
frmAbout.Show
End Sub

Private Sub cheat_Click()
frmCheat.Show
End Sub

Private Sub cmdContinue_Click()
   
    lbl60000.Visible = False
     
     If (Cash / CurrentPricePerGlass) > 10000 And (Val(txtPriceperGlass) > 200) Then lbl60000.Visible = True
    
    
    picStatusbar.Cls
    If (Val(txtPriceperGlass) >= 201) Then
        txtPriceperGlass.Text = ""
    ElseIf Val(txtNumGlasses.Text) > (Cash / CurrentPricePerGlass) Then
        MsgBox "Unless your parents are gonna give you a loan... I suggest making less glasses.", vbOKOnly, "Oops"
        
    ElseIf (Val(txtPriceperGlass.Text) <= 0) And (Val(txtNumGlasses) > 0) Then
        MsgBox "If you don't charge for you lemonade, you won't make any money. Get it?", vbOKOnly, "Oops"
   
     Else
        txtNumGlasses.Visible = False
        txtPriceperGlass.Visible = False
        cmdContinue.Visible = False
        ProcessData
        picOutput.Cls
        picStatus.Cls
        DisplayResults
        DisplayWeather
        UpdateScreen
    End If
  
End Sub

Private Sub cmdNextDay_Click()
Timer1.Enabled = True
lbl60000.Visible = False
cmdNextDay.Enabled = False
     GetPricePerGlass
     RaisePrice
      imgSunny.Visible = False
      imgCloudy.Visible = False
      cmdNextDay.Caption = "&Next Day"
      If Cash = 0 Then
        MsgBox "You're out of cash!", vbOKOnly, "Damn!":
      End If
    Let days = days - 1
        If lblDays = 0 Then
            MsgBox "Your set number of days are gone! Game Over.", vbOKOnly, "Damn"
            cmdNextDay.Enabled = False
            cmdContinue.Visible = False
            picStatus.Visible = False
            picOutput.Visible = False
            picStatusbar.Cls
            picStatusbar.Print "Your total profit is "; (Format(Cash - 2, "Currency")); " dollars!"
         If cheater = False Then
              Call HiScore
            Else
         End If
        End If
    If Cash < CurrentPricePerGlass Then
        MsgBox "You don't have enough money to make anymore glasses. Sorry.", vbOKOnly, "Got money?": cmdContinue.Enabled = False:
    End If
    If (Cash / CurrentPricePerGlass) > 10000 Then
        lbl60000.Visible = True
    End If
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub exit_Click()
End
End Sub

Private Sub Form_Load()
On Error GoTo errorhandler

AssignVariables
    UpdateScreen
    cheater = False

    Open "hiscore.dat" For Input As #4
    Input #4, Name1, Name2, Name3, Name4, Name5, Score1, Score2, Score3, Score4, Score5
    Close #4
 
errorhandler:
    Select Case Err
    Case Is = 53
    MsgBox "You are missing the HiScore file. Your HiScores are now lost!", vbCritical, "File Error!"
    End Select
    
End Sub
Public Sub AssignVariables()
    Randomize
    Let GlassesYouWantToMake = 0
    Let ChargePerGlass = 0
    SetRandomValues
    Let Cash = 2
    Let CurrentPricePerGlass = 0.02
    Let GlassesSold = 0
    Let YourCost = 0
    Let TotalSales = 0
    Let Profit = 0
    Let days = 25
    Let soundonoff = True
End Sub
Public Sub UpdateScreen()
    Let lblNumCash.Caption = Format(Str(Cash), "Currency")
    Let lblPrice.Caption = Format(Str(CurrentPricePerGlass), "Currency")
    cmdNextDay.Enabled = True
    Let lblDays = days
    If Cash > 1000 Then cheat.Caption = "Cheat": cheat.Enabled = True
    
End Sub
Public Sub GetPricePerGlass()
    picOutput.Cls
    picOutput.Print "Glasses you can make: "; (Int(Cash / CurrentPricePerGlass))
    picOutput.Print ""
    picOutput.Print "How many glasses do you want "
    picOutput.Print "to make?"
    txtNumGlasses.Text = ""
    txtNumGlasses.Visible = True
    picOutput.Print ""
    picOutput.Print ""
    picOutput.Print ""
    picOutput.Print "How much do you want to charge"
    picOutput.Print "per glass? Example: for 50 cents,"
    picOutput.Print "enter 50!"
    picOutput.Print ""
    txtPriceperGlass.Text = ""
    txtPriceperGlass.Visible = True
    cmdContinue.Visible = True
    picStatus.Cls
    picStatus.Print "Today's Forcast...."
    picStatus.Print ""
    picStatus.Print "         High Temperature: "; HighTempature
    picStatus.Print "Percent chance of Rain: "; PercentChanceOfRain; "%"
End Sub
Public Sub SetRandomValues()
    Let HighTempature = ((50 * Rnd) + 50)
    Let PercentChanceOfRain = 100 * Rnd
    Let Raise = 10 * Rnd
    Let Thingy2 = (Int(1 * Rnd) + 3)
End Sub
Public Sub ProcessData()
    Dim RainChance As Integer
    Dim Chance As Single
    
    Rain = False
    Let RainChance = 10 * Rnd
    If PercentChanceOfRain = 0 Then
        Rain = False
    ElseIf (PercentChanceOfRain > 1) And (PercentChanceOfRain < 20) Then
         Rain = False
    ElseIf (PercentChanceOfRain > 21) And (PercentChanceOfRain < 40) Then
        If (RainChance = 3) Then
            Rain = True
        End If
    ElseIf (PercentChanceOfRain > 41) And (PercentChanceOfRain < 60) Then
        If (RainChance = 1) Or (RainChance = 4) Or (RainChance = 8) Or (RainChance = 3) Then
            Rain = True
        End If
    ElseIf (PercentChanceOfRain > 61) And (PercentChanceOfRain < 79) Then
        If (RainChance = 2) Or (RainChance = 3) Or (RainChance = 5) Or (RainChance = 6) Or (RainChance = 9) Then
            Rain = True
        End If
    ElseIf (PercentChanceOfRain > 80) And (PercentChanceOfRain < 90) Then
        If (RainChance = 1) Or (RainChance = 3) Or (RainChance = 4) Or (RainChance = 5) Or (RainChance = 6) Or (RainChance = 7) Then
            Rain = True
        End If
    ElseIf (PercentChanceOfRain >= 90) Then
        Rain = True
    End If
    
    Let YourCost = CurrentPricePerGlass * Val(txtNumGlasses.Text)
    If (Rain = True) Then
        Let GlassesSold = 0
    Else
        Let Chance = 30 * Rnd
        If Val(txtPriceperGlass.Text) < 25 And (HighTempature > 75) Then
            Let Chance = (Chance + 60)
        ElseIf Val(txtPriceperGlass.Text) < 25 And (HighTempature < 75) Then
            Let Chance = (Chance + 55)
        ElseIf Val(txtPriceperGlass.Text) < 50 And (HighTempature > 70) Then
            Let Chance = (Chance + 50)
        ElseIf Val(txtPriceperGlass.Text) < 50 And (HighTempature < 70) Then
            Let Chance = (Chance + 45)
        ElseIf Val(txtPriceperGlass.Text) < 75 And (HighTempature > 70) Then
            Let Chance = (Chance + 40)
        ElseIf Val(txtPriceperGlass.Text) < 75 And (HighTempature < 70) Then
            Let Chance = (Chance + 35)
        ElseIf Val(txtPriceperGlass.Text) < 100 And (HighTempature < 70) Then
            Let Chance = (Chance + 30)
        ElseIf Val(txtPriceperGlass.Text) < 150 And (HighTempature > 70) Then
            Let Chance = (Chance + 25)
        ElseIf Val(txtPriceperGlass.Text) < 150 And (HighTempature < 70) Then
            Let Chance = (Chance + 20)
        ElseIf Val(txtPriceperGlass.Text) < 175 And (HighTempature > 70) Then
            Let Chance = (Chance + 15)
        ElseIf Val(txtPriceperGlass.Text) < 175 And (HighTempature < 70) Then
            Let Chance = (Chance + 10)
        ElseIf Val(txtPriceperGlass.Text) < 200 And (HighTempature > 70) Then
            Let Chance = (Chance + 5)
        ElseIf Val(txtPriceperGlass.Text) < 200 And (HighTempature < 70) Then
            Let Chance = (Chance + 0)
        Else
            Let Chance = (Chance + 0)
        End If
        If PercentChanceOfRain < 50 Then
            Let Chance = Chance + 5
        End If
        Let GlassesSold = Val(txtNumGlasses.Text) * (Chance / 100):
    End If
    Let TotalSales = GlassesSold * (Val(txtPriceperGlass.Text) / 100)
    Let Profit = TotalSales - YourCost
    Let Cash = Cash + Profit
    SetRandomValues
End Sub
Public Sub DisplayResults()
    picOutput.Print "             Finantial Statement"
    picOutput.Print "      ______________________"
    picOutput.Print ""
    picOutput.Print ""
    picOutput.Print "Glasses Made: "; Val(txtNumGlasses)
    picOutput.Print "Glasses Sold:   "; GlassesSold
    picOutput.Print ""
    picOutput.Print "Your Cost:       "; Format(Str(YourCost), "Currency")
    picOutput.Print "Total Sales:     "; Format(Str(TotalSales), "Currency")
    picOutput.Print ""
    picOutput.Print "Profit (+/-):       "; Format(Str(Profit), "Currency")
End Sub
Public Sub DisplayWeather()
Dim soundrain As String
Dim rcrain As Long
Dim soundsun As String
Dim rcsun As Long
    If Rain = False Then
        picStatus.Print "Great! A sunny day."
        picStatus.Print "Sure hope you made some lemonade!"
        imgSunny.Visible = True
        If soundonoff = True Then
            soundsun = "sunny.wav"
            rcsun = sndPlaySound(soundsun, 1)
        End If
     Else
        picStatus.Print "It's raining. No customers today."
        imgCloudy.Visible = True
        If soundonoff = True Then
            soundrain = "rain.wav"
            rcrain = sndPlaySound(soundrain, 1)
        End If
    End If
End Sub

Public Sub Cheato()
If frmCheat.txtCheatC.Text = "" Then
    Else: Let Cash = Val(frmCheat.txtCheatC.Text)
    Let lblNumCash.Caption = Format(Str(Cash), "Currency")
End If

If frmCheat.Option2.Value = True Then Let PercentChanceOfRain = 0

GetPricePerGlass
cmdNextDay.Caption = "&Next Day"

If (Cash / CurrentPricePerGlass) > 10000 Then
        lbl60000.Visible = True
   End If
End Sub

Private Sub hiscores_Click()
frmScore.Show
End Sub

Private Sub howto_Click()
Form2.Show
End Sub

Private Sub off_Click()


End Sub

Private Sub Picture1_DblClick()

Let days = days + 10
Let lblDays = days

End Sub

Private Sub restart_Click()
AssignVariables
    UpdateScreen
cheater = False
cmdNextDay.Enabled = True
cmdContinue.Enabled = True
picStatusbar.Cls
cmdNextDay.Caption = "&Start"
picStatus.Cls
picOutput.Cls
cmdContinue.Visible = False
imgCloudy.Visible = False
imgSunny.Visible = False
lblCheater.Visible = False
txtNumGlasses.Visible = False
txtPriceperGlass.Visible = False
lbl60000.Visible = False
End Sub

Private Sub soff_Click()
son.Caption = "On"
son.Enabled = True
soff.Enabled = False
soff.Caption = "*Off*"
soundonoff = False

End Sub

Private Sub son_Click()
soff.Caption = "Off"
son.Enabled = False
soff.Enabled = True
son.Caption = "*On*"

soundonoff = True
End Sub

Public Sub HiScore()
If Cash > Score1 Then
    Name1 = InputBox("Please Enter Your Name:", "1st Place!")
    Let Score1 = Cash
    frmScore.Show
ElseIf Cash > Score2 Then
    Name2 = InputBox("Please Enter Your Name:", "2nd Place!")
    Let Score2 = Cash
    frmScore.Show
ElseIf Cash > Score3 Then
    Name3 = InputBox("Please Enter Your Name:", "3rd Place!")
    Let Score3 = Cash
    frmScore.Show
ElseIf Cash > Score4 Then
    Name4 = InputBox("Please Enter Your Name:", "4th Place!")
    Let Score4 = Cash
    frmScore.Show
ElseIf Cash > Score5 Then
    Name5 = InputBox("Please Enter Your Name:", "5th Place!")
    Let Score5 = Cash
    frmScore.Show
End If
End Sub

Private Sub txtPriceperGlass_Change()
cmdContinue.Default = True
End Sub
