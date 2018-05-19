VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H80000005&
   Caption         =   "Form3"
   ClientHeight    =   10605
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18060
   LinkTopic       =   "Form3"
   ScaleHeight     =   10605
   ScaleWidth      =   18060
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame5 
      BackColor       =   &H80000018&
      Caption         =   "Library Details"
      Height          =   1215
      Left            =   720
      TabIndex        =   15
      Top             =   8520
      Width           =   16095
      Begin VB.Label book 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   495
         Left            =   2400
         TabIndex        =   29
         Top             =   480
         Width           =   9375
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Books issued"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   480
         Width           =   1815
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H80000018&
      Caption         =   "Medical Details"
      Height          =   1335
      Left            =   720
      TabIndex        =   12
      Top             =   6960
      Width           =   16095
      Begin VB.Label med 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   28
         Top             =   840
         Width           =   2535
      End
      Begin VB.Label blood 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   27
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label11 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Medical History"
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Blood Group"
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000018&
      Caption         =   "Hostel"
      Height          =   615
      Left            =   720
      TabIndex        =   10
      Top             =   6120
      Width           =   15975
      Begin VB.Label room 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   26
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Room no."
         Height          =   255
         Left            =   480
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000018&
      Height          =   1095
      Left            =   4560
      TabIndex        =   1
      Top             =   480
      Width           =   5895
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         BackColor       =   &H80000018&
         Caption         =   "Students's details"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   5655
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Caption         =   "General details"
      Height          =   4215
      Left            =   720
      TabIndex        =   0
      Top             =   1800
      Width           =   15975
      Begin VB.Label twelve 
         BackColor       =   &H80000018&
         Caption         =   "Label17"
         Height          =   255
         Left            =   2040
         TabIndex        =   33
         Top             =   3840
         Width           =   1575
      End
      Begin VB.Label ten 
         BackColor       =   &H80000018&
         Height          =   255
         Left            =   2040
         TabIndex        =   32
         Top             =   3480
         Width           =   1575
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "XII marks"
         Height          =   255
         Left            =   360
         TabIndex        =   31
         Top             =   3840
         Width           =   1335
      End
      Begin VB.Label Label15 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "X marks"
         Height          =   255
         Left            =   360
         TabIndex        =   30
         Top             =   3480
         Width           =   1335
      End
      Begin VB.Label dob 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   25
         Top             =   3240
         Width           =   1935
      End
      Begin VB.Label gen 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   24
         Top             =   2880
         Width           =   1695
      End
      Begin VB.Label caste 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   23
         Top             =   2400
         Width           =   1815
      End
      Begin VB.Label dept 
         BackColor       =   &H80000018&
         Caption         =   "Label18"
         Height          =   255
         Left            =   2040
         TabIndex        =   22
         Top             =   2040
         Width           =   1815
      End
      Begin VB.Label roll 
         BackColor       =   &H80000018&
         Caption         =   "Label17"
         Height          =   255
         Left            =   2040
         TabIndex        =   21
         Top             =   1680
         Width           =   2055
      End
      Begin VB.Label nam 
         BackColor       =   &H80000018&
         Caption         =   "Label16"
         Height          =   255
         Left            =   2040
         TabIndex        =   20
         Top             =   1200
         Width           =   5175
      End
      Begin VB.Label ID 
         BackColor       =   &H80000018&
         Caption         =   "Label15"
         Height          =   255
         Left            =   2040
         TabIndex        =   19
         Top             =   720
         Width           =   2775
      End
      Begin VB.Label Label8 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Date of birth"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   3240
         Width           =   1575
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Sex"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Caste"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   2400
         Width           =   1455
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Dept"
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   2040
         Width           =   1335
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Rol no."
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "Name"
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Caption         =   "ID"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   720
         Width           =   1335
      End
   End
   Begin VB.Label Label12 
      Caption         =   "Label12"
      Height          =   495
      Left            =   8400
      TabIndex        =   16
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   8400
      TabIndex        =   2
      Top             =   4080
      Width           =   1215
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
