VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13605
   LinkTopic       =   "Form4"
   Picture         =   "Form4.frx":0000
   ScaleHeight     =   7185
   ScaleWidth      =   13605
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ToRecords 
      Caption         =   "To Records"
      Height          =   855
      Left            =   7320
      TabIndex        =   3
      Top             =   3720
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   7320
      TabIndex        =   2
      Top             =   1560
      Width           =   2295
   End
   Begin VB.CommandButton Find 
      Caption         =   "Find"
      Height          =   855
      Left            =   3360
      TabIndex        =   1
      Top             =   3720
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   3120
      TabIndex        =   0
      Top             =   1560
      Width           =   2535
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Find_Click()
Set conn = New ADODB.Connection
    Set ress = New ADODB.Recordset
    conn.ConnectionString = "provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\visual basic\Project\Sudent.mdb;"
    conn.Open
    ress.Open "Select * from Table1 where Roll=" & CInt(Text1.Text), conn, adOpenDynamic, adLockOptimistic
    Text2.Text = ress.Fields("Nam")
End Sub


Private Sub ToRecords_Click()
Unload Me
Load Form6
Form6.Show
End Sub
