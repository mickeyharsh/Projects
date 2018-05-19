VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H80000014&
   Caption         =   "Form2"
   ClientHeight    =   8895
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18270
   LinkTopic       =   "Form2"
   ScaleHeight     =   8895
   ScaleWidth      =   18270
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton MedicalRecords 
      Caption         =   "Medical Records"
      Height          =   495
      Left            =   5880
      TabIndex        =   9
      Top             =   7200
      Width           =   3495
   End
   Begin VB.CommandButton Search 
      Caption         =   "Search"
      Height          =   495
      Left            =   10320
      TabIndex        =   8
      Top             =   7200
      Width           =   2535
   End
   Begin VB.CommandButton Library 
      Caption         =   "Library Records"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   7200
      Width           =   3735
   End
   Begin VB.CommandButton delete 
      Caption         =   "Delete"
      Height          =   495
      Left            =   13680
      TabIndex        =   6
      Top             =   8280
      Width           =   3975
   End
   Begin VB.CommandButton modify 
      Caption         =   "Modify"
      Height          =   495
      Left            =   9120
      TabIndex        =   5
      Top             =   8280
      Width           =   4335
   End
   Begin VB.CommandButton details 
      Caption         =   "Details"
      Height          =   435
      Left            =   5160
      TabIndex        =   4
      Top             =   8280
      Width           =   3735
   End
   Begin VB.CommandButton add 
      Caption         =   "Add New"
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   8280
      Width           =   3855
   End
   Begin VB.ListBox List2 
      Height          =   4545
      Left            =   3720
      TabIndex        =   1
      Top             =   1320
      Width           =   13575
   End
   Begin VB.ListBox List1 
      Height          =   4545
      Left            =   1080
      TabIndex        =   0
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      Caption         =   "Student's Log"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1080
      TabIndex        =   2
      Top             =   120
      Width           =   16695
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public c As Integer
Dim conn As ADODB.Connection
Dim ress As ADODB.Recordset





Private Sub Form_Load()
    Set conn = New ADODB.Connection
    Set ress = New ADODB.Recordset
    Dim i As Integer
    conn.ConnectionString = "provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\visual basic\Project\Sudent.mdb;"
    conn.Open
    ress.Open "Select * from Table1", conn, adOpenDynamic, adLockOptimistic
    For i = 1 To Form1.c
        List1.AddItem ress.Fields("ID")
        List2.AddItem ress.Fields("Nam")
        ress.MoveNext
    Next i
    ress.MoveFirst
End Sub

Private Sub details_Click()
    Dim i1, i2 As Integer
        i1 = List1.ListIndex
        i2 = List2.ListIndex
        ress.MoveFirst
    For i = 1 To Form1.c
        If (List1.List(i1) = ress.Fields("ID") Or List2.List(i2) = ress.Fields("Nam")) Then
            f = 1
            Form3.ID.Caption = ress.Fields("ID")
            Form3.nam.Caption = ress.Fields("Nam")
            Form3.roll.Caption = ress.Fields("Roll")
            Form3.dept.Caption = ress.Fields("dept")
            Form3.caste.Caption = ress.Fields("caste")
            Form3.gen.Caption = ress.Fields("Gen")
            Form3.dob.Caption = ress.Fields("Dob")
            Form3.room.Caption = ress.Fields("Hostel")
            Form3.blood.Caption = ress.Fields("Blood")
            If (ress.Fields("medh").ActualSize = 0) Then
                Form3.med.Caption = "No medical history found"
            Else
                Form3.med.Caption = ress.Fields("medh")
            End If
            If (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "no book issued"
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book3") + " 2." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book2") + "2." + ress.Fields("book3") + " 3." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book2")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book3")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + " 2." + ress.Fields("book2")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + " 2." + ress.Fields("book3")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + " 2." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book2") + " 2." + ress.Fields("book3")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book2") + " 2." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize = 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book3") + " 2." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize = 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + "2." + ress.Fields("book2") + " 3." + ress.Fields("book3")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize > 0 And ress.Fields("book3").ActualSize = 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + "2." + ress.Fields("book2") + " 3." + ress.Fields("book4")
            ElseIf (ress.Fields("book1").ActualSize > 0 And ress.Fields("book2").ActualSize = 0 And ress.Fields("book3").ActualSize > 0 And ress.Fields("book4").ActualSize > 0) Then
                Form3.book.Caption = "1." + ress.Fields("book1") + "2." + ress.Fields("book3") + " 3." + ress.Fields("book4")
            Else
               Form3.book.Caption = "1." + ress.Fields("book1") + "2." + ress.Fields("book2") + " 3." + ress.Fields("book3") + " 4." + ress.Fields("book4")
            End If
            Form3.ten.Caption = ress.Fields("ten")
            Form3.twelve.Caption = ress.Fields("twelve")
            Form3.Show
        Else
            ress.MoveNext
        End If
    Next i
End Sub
Private Sub Delete_Click()
    Dim i1, i2 As Integer
        i1 = List1.ListIndex
        i2 = List2.ListIndex
    For i = 1 To Form1.c
        If (List1.List(i1) = ress.Fields("ID") Or List2.List(i2) = ress.Fields("Nam")) Then
            ress.Delete
            ress.MoveFirst
        Else
            ress.MoveNext
        End If
    Next i
    Form1.c = Form1.c - 1
    Unload Form2
    Load Form2
    Form2.Show
End Sub


Private Sub Add_Click()

Unload Me
 Load Form5
Form5.Show
End Sub

Private Sub Library_Click()
Unload Me
 Load Form7
Form7.Show
End Sub

Private Sub Search_Click()
Unload Me
Load Form4
Form4.Show
End Sub
