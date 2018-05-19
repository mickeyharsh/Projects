VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   6060
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9120
   LinkTopic       =   "Form7"
   Picture         =   "Form7.frx":0000
   ScaleHeight     =   6060
   ScaleWidth      =   9120
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      Height          =   495
      Left            =   2280
      TabIndex        =   15
      Text            =   "Text6"
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Fetch 
      Caption         =   "Fetch"
      Height          =   495
      Left            =   4320
      TabIndex        =   13
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   2280
      TabIndex        =   12
      Text            =   "Text5"
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2280
      TabIndex        =   9
      Text            =   "Text4"
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton Update 
      Caption         =   "Update"
      Height          =   495
      Left            =   4200
      TabIndex        =   8
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton display 
      Caption         =   "Display"
      Height          =   495
      Left            =   4200
      TabIndex        =   7
      Top             =   3720
      Width           =   1455
   End
   Begin VB.CommandButton save 
      Caption         =   "Save"
      Height          =   495
      Left            =   4200
      TabIndex        =   6
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   2280
      TabIndex        =   5
      Text            =   "Text3"
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2280
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   3360
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2280
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Book 1:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   495
      Left            =   240
      TabIndex        =   14
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   700
      Left            =   240
      TabIndex        =   11
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Roll:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   700
      Left            =   120
      TabIndex        =   10
      Top             =   360
      Width           =   1695
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Book 4 if any"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   4200
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Book 3 ifany"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Book 2 if any"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   2520
      Width           =   1215
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim ress As ADODB.Recordset

Private Sub display_Click()
Unload Me
 Load Form2
Form2.Show
End Sub

Private Sub Fetch_Click()
Set con = New ADODB.Connection
    Set ress = New ADODB.Recordset
    con.ConnectionString = "provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\visual basic\Project\Sudent.mdb;"
    con.Open
    ress.Open "Select * from Table1 where Roll=" & CInt(Text4.Text), con, adOpenDynamic, adLockOptimistic
    Text5.Text = ress.Fields("nam")
    Text6.Text = ress.Fields("book1")
If (ress.Fields("book2") <> "") Then
    Text1.Text = ress.Fields("book2")
End If
If (ress.Fields("book3") <> "") Then
    Text2.Text = ress.Fields("book3")
End If
If (ress.Fields("book4") <> "") Then
    Text3.Text = ress.Fields("book4")
End If

End Sub


Private Sub Form_Load()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
End Sub

Private Sub save_Click()
ress.Fields("book2") = Text1.Text
ress.Fields("book3") = Text2.Text
ress.Fields("book4") = Text3.Text
ress.Fields("book1") = Text6.Text
ress.Update
End Sub

Private Sub Update_Click()
Text6.SetFocus
End Sub
