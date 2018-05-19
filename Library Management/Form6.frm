VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   5805
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6525
   LinkTopic       =   "Form6"
   Picture         =   "Form6.frx":0000
   ScaleHeight     =   5805
   ScaleWidth      =   6525
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ToMedicalRecords 
      Caption         =   "To Medical Records"
      Height          =   735
      Left            =   3360
      TabIndex        =   1
      Top             =   1800
      Width           =   2655
   End
   Begin VB.CommandButton ToLibraryRecords 
      Caption         =   "To Library Records"
      Height          =   855
      Left            =   360
      TabIndex        =   0
      Top             =   1680
      Width           =   2295
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim res As ADODB.Recordset
Private Sub ToLibraryRecords_Click()
Unload Me
Load Form7
Form7.Show
End Sub
