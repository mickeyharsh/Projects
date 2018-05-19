VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   9540
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15195
   LinkTopic       =   "Form5"
   Picture         =   "Form5.frx":0000
   ScaleHeight     =   9540
   ScaleWidth      =   15195
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Display"
      Height          =   1215
      Left            =   8160
      TabIndex        =   25
      Top             =   5520
      Width           =   2535
   End
   Begin VB.TextBox Text12 
      Height          =   495
      Left            =   3000
      TabIndex        =   24
      Text            =   "Text12"
      Top             =   9840
      Width           =   3135
   End
   Begin VB.TextBox Text11 
      Height          =   495
      Left            =   3000
      TabIndex        =   23
      Text            =   "Text11"
      Top             =   8760
      Width           =   3015
   End
   Begin VB.TextBox Text10 
      Height          =   495
      Left            =   3000
      TabIndex        =   20
      Text            =   "Text10"
      Top             =   7800
      Width           =   3015
   End
   Begin VB.TextBox Text9 
      Height          =   495
      Left            =   3000
      TabIndex        =   19
      Text            =   "Text9"
      Top             =   6960
      Width           =   3015
   End
   Begin VB.TextBox Text8 
      Height          =   495
      Left            =   3000
      TabIndex        =   18
      Text            =   "Text8"
      Top             =   6120
      Width           =   2895
   End
   Begin VB.TextBox Text7 
      Height          =   495
      Left            =   3000
      TabIndex        =   17
      Text            =   "Text7"
      Top             =   5280
      Width           =   2895
   End
   Begin VB.TextBox Text6 
      Height          =   495
      Left            =   3000
      TabIndex        =   12
      Text            =   "Text6"
      Top             =   4320
      Width           =   2895
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   3000
      TabIndex        =   11
      Text            =   "Text5"
      Top             =   3600
      Width           =   2895
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   3000
      TabIndex        =   10
      Text            =   "Text4"
      Top             =   2760
      Width           =   2895
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   3000
      TabIndex        =   6
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CommandButton Save 
      Caption         =   "Save"
      Height          =   1095
      Left            =   8160
      TabIndex        =   4
      Top             =   3840
      Width           =   2535
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   1200
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   3000
      TabIndex        =   1
      Top             =   360
      Width           =   2895
   End
   Begin VB.Label Label12 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter XII marks"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   495
      Left            =   120
      TabIndex        =   22
      Top             =   9840
      Width           =   2655
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter X marks"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   495
      Left            =   240
      TabIndex        =   21
      Top             =   8760
      Width           =   2415
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Add book one"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   375
      Left            =   120
      TabIndex        =   16
      Top             =   7800
      Width           =   2535
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Blood Group"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   240
      TabIndex        =   15
      Top             =   6960
      Width           =   2415
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Hostel No"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   14
      Top             =   6240
      Width           =   2535
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Add DOB"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   13
      Top             =   5400
      Width           =   2415
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Caste"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   4440
      Width           =   2175
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Gender"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   3600
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Add ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   2880
      Width           =   1815
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Department"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   5
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Roll"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Add Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public c As Integer
Dim con As ADODB.Connection
Dim ress As ADODB.Recordset
Private Sub Form_Load()
Set con = New ADODB.Connection
    Set ress = New ADODB.Recordset
    Dim i, f As Integer
    con.ConnectionString = "provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\visual basic\Project\Sudent.mdb;"
    con.Open
    ress.Open "Select * from Table1", con, adOpenDynamic, adLockOptimistic
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
Text8.Text = ""
Text9.Text = ""
Text10.Text = ""
Text11.Text = ""
Text12.Text = ""

End Sub

Private Sub save_Click()
Form1.c = Form1.c + 1
ress.AddNew
ress.Fields("Nam") = Text1.Text
ress.Fields("Roll") = Text2.Text
ress.Fields("Dept") = Text3.Text
ress.Fields("ID") = Text4.Text
ress.Fields("Gen") = Text5.Text
ress.Fields("Caste") = Text6.Text
ress.Fields("DOB") = Text7.Text
ress.Fields("Hostel") = Text8.Text
ress.Fields("Blood") = Text9.Text
ress.Fields("book1") = Text10.Text
ress.Fields("ten") = Text11.Text
ress.Fields("twelve") = Text12.Text
ress.Update
End Sub

Private Sub Command1_Click()
Unload Me
 Load Form2
Form2.Show
End Sub
