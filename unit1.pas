unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CPortCtl, ExtCtrls, CPort, ComCtrls, Spin, Buttons, ColorGrd;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;                               
    Panel1: TPanel;
    ComComboBox1: TComComboBox;
    Button1: TButton;
    StatusBar: TStatusBar;
    Panel3: TPanel;
    SB1: TSpeedButton;
    SB2: TSpeedButton;
    SB3: TSpeedButton;
    SB4: TSpeedButton;
    SB5: TSpeedButton;
    SB6: TSpeedButton;
    Panel2: TPanel;
    ListBox1: TListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ScrollBar6: TScrollBar;
    ScrollBar5: TScrollBar;
    ScrollBar4: TScrollBar;
    SB11: TScrollBar;
    SpinEdit1: TSpinEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    SB12: TScrollBar;
    SB13: TScrollBar;
    SB14: TScrollBar;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SB10: TScrollBar;
    Label10: TLabel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SB21: TScrollBar;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    SB24: TScrollBar;
    SB23: TScrollBar;
    SB22: TScrollBar;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    SB20: TScrollBar;
    StaticText11: TStaticText;
    Label20: TLabel;
    SpinEdit2: TSpinEdit;
    StaticText12: TStaticText;
    SB31: TScrollBar;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    SB34: TScrollBar;
    SB33: TScrollBar;
    SB32: TScrollBar;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    SB30: TScrollBar;
    StaticText17: TStaticText;
    Label30: TLabel;
    SpinEdit3: TSpinEdit;
    StaticText18: TStaticText;
    SB36: TScrollBar;
    Label36: TLabel;
    SB7: TSpeedButton;
    SB8: TSpeedButton;
    SB9: TSpeedButton;
    SButton10: TSpeedButton;
    LED2TextColor: TStaticText;
    LED3TextColor: TStaticText;
    DimmerSpeed: TRadioGroup;
    ColorDialog1: TColorDialog;
    ColorButton1: TButton;
    LED1TextColor: TStaticText;
    GroupBox1: TGroupBox;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Button2: TButton;
    Button3: TButton;
    Shape1: TShape;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    FyrkantSB1_Red: TScrollBar;
    FyrkantSB1_Green: TScrollBar;
    FyrkantSB1_Blue: TScrollBar;
    ScrollBar7: TScrollBar;
    ScrollBar8: TScrollBar;
    ScrollBar9: TScrollBar;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ScrollBar10: TScrollBar;
    ScrollBar11: TScrollBar;
    ScrollBar12: TScrollBar;
    ScrollBar13: TScrollBar;
    ScrollBar14: TScrollBar;
    ScrollBar15: TScrollBar;
    ScrollBar16: TScrollBar;
    ScrollBar17: TScrollBar;
    ScrollBar18: TScrollBar;
    ScrollBar19: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure ScrollBar4Change(Sender: TObject);
    procedure ScrollBar5Change(Sender: TObject);
    procedure ScrollBar6Change(Sender: TObject);
    procedure SB11Change(Sender: TObject);
    procedure SB12Change(Sender: TObject);
    procedure SB13Change(Sender: TObject);
    procedure SB14Change(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure SB2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SB3Click(Sender: TObject);
    procedure SB4Click(Sender: TObject);
    procedure SB5Click(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure SB21Change(Sender: TObject);
    procedure SB22Change(Sender: TObject);
    procedure SB23Change(Sender: TObject);
    procedure SB24Change(Sender: TObject);
    procedure SB20Change(Sender: TObject);
    procedure SB10Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure SB31Change(Sender: TObject);
    procedure SB32Change(Sender: TObject);
    procedure SB33Change(Sender: TObject);
    procedure SB34Change(Sender: TObject);
    procedure SB30Change(Sender: TObject);
    procedure SB36Change(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure SB8Click(Sender: TObject);
    procedure SB9Click(Sender: TObject);
    procedure SButton10Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure DimmerSpeedClick(Sender: TObject);
  private     { Private declarations }
    function SNr : integer;
    procedure UpdateScrollBars(n : integer);
    procedure ReadData;
    procedure WriteData;
    procedure UpdateGlyph(n:integer);
    procedure LED1Color(R,G,B:integer);
    procedure LED2Color(R,G,B:integer);
    procedure LED3Color(R,G,B:integer);
  public      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

const
  clAmber =$33d5F7;

type
  TRGBW = record
    Channel : integer;
    Red   : 0..255;
    Green : 0..255;
    Blue  : 0..255;
    Amber : 0..255;
    CM    : 0..255;  // 0..15 no, 16..255 Color macros
    ch6   : 0..255;
    CH7   : 0..255;
    Dimmer : 0..255;
    DimSpd : 0..255; // 0..51 default, 52..101 Off, 102..152 fast...
  end;

  TStyrBox = record
    Channel : integer;
    ch1 : 0..255;
    ch2 : 0..255;
    ch3 : 0..255;
    ch4 : 0..255;
    ch5 : 0..255;
    ch6 : 0..255;
  end;

  TData = record
    RGBW1 : TRGBW;
    RGBW2 : TRGBW;
    RGBW3 : TRGBW;
    StyrBox : TStyrBox;
  end;

  TDataArray = Array[0..9] of TData;


var
  Data : TDataArray;
  DataReadFlag : boolean = false;


function TForm1.SNr : integer;
var
  x:integer;
begin
  x := 0;
  if SB1.Down then x := 0
  else
  if SB2.Down then x := 1
  else
  if SB3.Down then x := 2
  else
  if SB4.Down then x := 3
  else
  if SB5.Down then x := 4
  else
  if SB6.Down then x := 5
  else
  if SB7.Down then x := 6
  else
  if SB8.Down then x := 7
  else
  if SB9.Down then x := 8
  else
  if SButton10.Down then x := 9;
  Snr := x;
end;

procedure TForm1.UpdateScrollBars(n : integer);
begin
  ScrollBar1.Position := Data[n].StyrBox.ch1;
  ScrollBar2.Position := Data[n].StyrBox.ch2;
  ScrollBar3.Position := Data[n].StyrBox.ch3;
  ScrollBar4.Position := Data[n].StyrBox.ch4;
  ScrollBar5.Position := Data[n].StyrBox.ch5;
  ScrollBar6.Position := Data[n].StyrBox.ch6;

  SB11.Position := Data[n].RGBW1.Red;
  SB12.Position := Data[n].RGBW1.Green;
  SB13.Position := Data[n].RGBW1.Blue;
  SB14.Position := Data[n].RGBW1.Amber;
  SB10.Position := Data[n].RGBW1.Dimmer;

  SB21.Position := Data[n].RGBW2.Red;
  SB22.Position := Data[n].RGBW2.Green;
  SB23.Position := Data[n].RGBW2.Blue;
  SB24.Position := Data[n].RGBW2.Amber;
  SB20.Position := Data[n].RGBW2.Dimmer;

  SB31.Position := Data[n].RGBW3.Red;
  SB32.Position := Data[n].RGBW3.Green;
  SB33.Position := Data[n].RGBW3.Blue;
  SB34.Position := Data[n].RGBW3.Amber;
  SB30.Position := Data[n].RGBW3.Dimmer;
end;

procedure TForm1.UpdateGlyph(n:integer);
begin
  case n of
   0 : begin
         SB1.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB1.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB1.Glyph.Canvas.Ellipse(3,1,30,25);
         SB1.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB1.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB1.Glyph.Canvas.Ellipse(10,20,40,39);
         SB1.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB1.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB1.Glyph.Canvas.Ellipse(20,1,40,25);

       end;
   1 : begin
         SB2.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB2.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB2.Glyph.Canvas.Ellipse(2,1,30,25);
         SB2.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB2.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB2.Glyph.Canvas.Ellipse(10,20,40,39);
         SB2.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB2.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB2.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   2 : begin
         SB3.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB3.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB3.Glyph.Canvas.Ellipse(2,1,30,25);
         SB3.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB3.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB3.Glyph.Canvas.Ellipse(10,20,40,39);
         SB3.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB3.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB3.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   3: begin
         SB4.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB4.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB4.Glyph.Canvas.Ellipse(2,1,30,25);
         SB4.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB4.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB4.Glyph.Canvas.Ellipse(10,20,40,39);
         SB4.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB4.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB4.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   4: begin
         SB5.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB5.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB5.Glyph.Canvas.Ellipse(2,1,30,25);
         SB5.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB5.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB5.Glyph.Canvas.Ellipse(10,20,40,39);
         SB5.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB5.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB5.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   5: begin
         SB6.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB6.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB6.Glyph.Canvas.Ellipse(2,1,30,25);
         SB6.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB6.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB6.Glyph.Canvas.Ellipse(10,20,40,39);
         SB6.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB6.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB6.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   6: begin
         SB7.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB7.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB7.Glyph.Canvas.Ellipse(2,1,30,25);
         SB7.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB7.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB7.Glyph.Canvas.Ellipse(10,20,40,39);
         SB7.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB7.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB7.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   7: begin
         SB8.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB8.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB8.Glyph.Canvas.Ellipse(2,1,30,25);
         SB8.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB8.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB8.Glyph.Canvas.Ellipse(10,20,40,39);
         SB8.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB8.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB8.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
   8: begin
         SB9.Glyph.Canvas.Pen.Color   := LED1TextColor.Brush.Color;
         SB9.Glyph.Canvas.Brush.Color := LED1TextColor.Brush.Color;
         SB9.Glyph.Canvas.Ellipse(2,1,30,25);
         SB9.Glyph.Canvas.Pen.Color   := LED2TextColor.Brush.Color;
         SB9.Glyph.Canvas.Brush.Color := LED2TextColor.Brush.Color;
         SB9.Glyph.Canvas.Ellipse(10,20,40,39);
         SB9.Glyph.Canvas.Pen.Color   := LED3TextColor.Brush.Color;
         SB9.Glyph.Canvas.Brush.Color := LED3TextColor.Brush.Color;
         SB9.Glyph.Canvas.Ellipse(20,1,40,25);
       end;
  end;
end;

procedure TForm1.ReadData;
var
   f : file of TDataArray;
begin
  if FileExists('C:/DMX_data.dat') then
  begin
    AssignFile(f,'C:/DMX_data.dat');
    Reset(f);
    Read(f, Data);
    CloseFile(f);
    UpdateScrollBars(0);
    UpdateGlyph(0);
    DataReadFlag := true;
    StatusBar.Panels[0].Text := 'Data inl�st';
  end;
end;  

procedure TForm1.WriteData;
var
   f : file of TDataArray;
begin
  AssignFile(f,'C:/DMX_data.dat');
  Rewrite(f);
  write(f, Data);
  CloseFile(f);
end;

procedure TForm1.LED1Color(R,G,B:integer);
begin
  LED1TextColor.Brush.Color := (B shl 16) + (G shl 8) + R;
  LED1TextColor.Update; // Caption := inttostr(random(1000));
  UpdateGlyph(SNr);
end;

procedure TForm1.LED2Color(R,G,B:integer);
begin
  LED2TextColor.Brush.Color := (B shl 16) + (G shl 8) + R;
  LED2TextColor.Caption := inttostr(random(1000));
  UpdateGlyph(SNr);
end;

procedure TForm1.LED3Color(R,G,B:integer);
begin
  LED3TextColor.Brush.Color := (B shl 16) + (G shl 8) + R;
  LED3TextColor.Caption := inttostr(random(1000));
  UpdateGlyph(SNr);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComPort1.Open;
  Panel1.Visible := false;
  ReadData;
  PageControl1.Visible := true;
  Panel3.Visible := true;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch1 := ScrollBar1.Position;
  Label1.Caption := inttostr(ScrollBar1.Position);
  ComPort1.WriteStr('#'+char(1)+char(ScrollBar1.Position));
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch2 := ScrollBar2.Position;
  Label2.Caption := inttostr(ScrollBar2.Position);
  ComPort1.WriteStr('#'+char(2)+char(ScrollBar2.Position));
end;

procedure TForm1.ScrollBar3Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch3 := ScrollBar3.Position;
  Label3.Caption := inttostr(ScrollBar3.Position);
  ComPort1.WriteStr('#'+char(3)+char(ScrollBar3.Position));
end;

procedure TForm1.ScrollBar4Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch4 := ScrollBar4.Position;
  Label4.Caption := inttostr(ScrollBar4.Position);
  ComPort1.WriteStr('#'+char(4)+char(ScrollBar4.Position));
end;

procedure TForm1.ScrollBar5Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch5 := ScrollBar5.Position;
  Label5.Caption := inttostr(ScrollBar5.Position);
  ComPort1.WriteStr('#'+char(5)+char(ScrollBar5.Position));
end;

procedure TForm1.ScrollBar6Change(Sender: TObject);
begin
  Data[Snr].StyrBox.ch6 := ScrollBar6.Position;
  Label6.Caption := inttostr(ScrollBar6.Position);
  ComPort1.WriteStr('#'+char(6)+char(ScrollBar6.Position));
end;

procedure TForm1.SB11Change(Sender: TObject);
begin
  Data[Snr].RGBW1.Red := SB11.Position;
  Label11.Caption := inttostr(SB11.Position);
  LED1Color(SB11.Position, SB12.Position, SB13.Position);
  ComPort1.WriteStr('#'+char(10)+char(SB11.Position));
end;

procedure TForm1.SB12Change(Sender: TObject);
begin
  Data[Snr].RGBW1.Green := SB12.Position;
  Label12.Caption := inttostr(SB12.Position);
  LED1Color(SB11.Position, SB12.Position, SB13.Position);
  ComPort1.WriteStr('#'+char(11)+char(SB12.Position));
end;

procedure TForm1.SB13Change(Sender: TObject);
begin
  Data[Snr].RGBW1.Blue := SB13.Position;
  Label13.Caption := inttostr(SB13.Position);
  LED1Color(SB11.Position, SB12.Position, SB13.Position);
  ComPort1.WriteStr('#'+char(12)+char(SB13.Position));
end;

procedure TForm1.SB14Change(Sender: TObject);
begin
  Data[Snr].RGBW1.Amber := SB14.Position;
  Label14.Caption := inttostr(SB14.Position);
  ComPort1.WriteStr('#'+char(13)+char(SB14.Position));
end;

procedure TForm1.SB10Change(Sender: TObject);
begin
  Data[Snr].RGBW1.Dimmer := SB10.Position;
  Label10.Caption := inttostr(SB10.Position);
  ComPort1.WriteStr('#'+char(17)+char(SB10.Position));
end;

procedure TForm1.SB1Click(Sender: TObject);
begin
  if SB1.Down then UpdateScrollBars(0);
end;

procedure TForm1.SB2Click(Sender: TObject);
begin
  if SB2.Down then UpdateScrollBars(1);
end;

procedure TForm1.SB3Click(Sender: TObject);
begin
  if SB3.Down then UpdateScrollBars(2);
end;

procedure TForm1.SB4Click(Sender: TObject);
begin
  if SB4.Down then UpdateScrollBars(3);
end;

procedure TForm1.SB5Click(Sender: TObject);
begin
  if SB5.Down then UpdateScrollBars(4);
end;

procedure TForm1.SB6Click(Sender: TObject);
begin
  if SB6.Down then UpdateScrollBars(5);
end;


procedure TForm1.SB7Click(Sender: TObject);
begin
  if SB7.Down then UpdateScrollBars(6);
end;

procedure TForm1.SB8Click(Sender: TObject);
begin
  if SB8.Down then UpdateScrollBars(7);
end;

procedure TForm1.SB9Click(Sender: TObject);
begin
  if SB9.Down then UpdateScrollBars(8);
end;

procedure TForm1.SButton10Click(Sender: TObject);
begin
  if SButton10.Down then UpdateScrollBars(9);
end;


procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DataReadFlag then WriteData;
end;

procedure TForm1.SB21Change(Sender: TObject);
begin
  Data[Snr].RGBW2.Red := SB21.Position;
  Label21.Caption := inttostr(SB21.Position);
  LED2Color(SB21.Position, SB22.Position, SB23.Position);
  ComPort1.WriteStr('#'+char(20)+char(SB21.Position));
end;

procedure TForm1.SB22Change(Sender: TObject);
begin
  Data[Snr].RGBW2.Green := SB22.Position;
  Label22.Caption := inttostr(SB22.Position);
  LED2Color(SB21.Position, SB22.Position, SB23.Position);
  ComPort1.WriteStr('#'+char(21)+char(SB22.Position));
end;

procedure TForm1.SB23Change(Sender: TObject);
begin
  Data[Snr].RGBW2.Blue := SB23.Position;
  Label23.Caption := inttostr(SB23.Position);
  LED2Color(SB21.Position, SB22.Position, SB23.Position);
  ComPort1.WriteStr('#'+char(22)+char(SB23.Position));
end;

procedure TForm1.SB24Change(Sender: TObject);
begin
  Data[Snr].RGBW2.Amber := SB24.Position;
  Label24.Caption := inttostr(SB24.Position);
  LED2Color(SB21.Position, SB22.Position, SB13.Position);
  ComPort1.WriteStr('#'+char(23)+char(SB24.Position));
end;

procedure TForm1.SB20Change(Sender: TObject);
begin
  Data[Snr].RGBW2.Dimmer := SB20.Position;
  Label20.Caption := inttostr(SB20.Position);
//  LED1Color(SB21.Position, SB22.Position, SB13.Position);
  ComPort1.WriteStr('#'+char(27)+char(SB20.Position));

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  StaticText1.Brush.Color := clRed;
  StaticText2.Brush.Color := clGreen;
  StaticText3.Brush.Color := clBlue;

  StaticText4.Font.Color  := clBlack;
  StaticText4.Brush.Color := clAmber;
  StaticText10.Brush.Color := clAmber;

  LED1TextColor.Brush.Color := clred;
  LED2TextColor.Brush.Color := clred;
  LED3TextColor.Brush.Color := clred;
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  s:string;
begin
  ComPort1.ReadStr(s,Count);
  ListBox1.Items.Add(s);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
ListBox1.Items.add('Page Control 1 change');
end;

procedure TForm1.SB31Change(Sender: TObject);
begin
  Data[Snr].RGBW3.Red := SB31.Position;
  Label31.Caption := inttostr(SB31.Position);
  LED3Color(SB31.Position, SB32.Position, SB33.Position);
  ComPort1.WriteStr('#'+char(30)+char(SB31.Position));
end;

procedure TForm1.SB32Change(Sender: TObject);
begin
  Data[Snr].RGBW3.Green := SB32.Position;
  Label32.Caption := inttostr(SB32.Position);
  LED3Color(SB31.Position, SB32.Position, SB33.Position);
  ComPort1.WriteStr('#'+char(31)+char(SB32.Position));
end;

procedure TForm1.SB33Change(Sender: TObject);
begin
  Data[Snr].RGBW3.Blue := SB33.Position;
  Label33.Caption := inttostr(SB33.Position);
  LED3Color(SB31.Position, SB32.Position, SB33.Position);
  ComPort1.WriteStr('#'+char(32)+char(SB33.Position));
end;

procedure TForm1.SB34Change(Sender: TObject);
begin
  Data[Snr].RGBW3.Amber := SB34.Position;
  Label34.Caption := inttostr(SB34.Position);
  LED3Color(SB31.Position, SB32.Position, SB33.Position);
  ComPort1.WriteStr('#'+char(33)+char(SB34.Position));
end;

procedure TForm1.SB30Change(Sender: TObject);
begin
  Data[Snr].RGBW3.Dimmer := SB30.Position;
  Label30.Caption := inttostr(SB30.Position);
  ComPort1.WriteStr('#'+char(37)+char(SB30.Position));
end;

procedure TForm1.SB36Change(Sender: TObject);
begin
  Data[Snr].RGBW3.ch6 := SB36.Position;
  Label36.Caption := inttostr(SB36.Position);
  ComPort1.WriteStr('#'+char(36)+char(SB36.Position));
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ListBox1.Items.add('='+IntToStr(key));

  case key of
    112: begin SB1.Down := true; SB1Click(self); end;
    113: begin SB2.Down := true; SB2Click(self); end;
    114: begin SB3.Down := true; SB3Click(self); end;
    115: begin SB4.Down := true; SB4Click(self); end;
    116: begin SB5.Down := true; SB5Click(self); end;
    117: begin SB6.Down := true; SB6Click(self); end;
    118: begin SB7.Down := true; SB7Click(self); end;
    119: begin SB8.Down := true; SB8Click(self); end;
    120: begin SB9.Down := true; SB9Click(self); end;
    121: begin SButton10.Down := true; SButton10Click(self); end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DataReadFlag:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Shape1.Brush.Color := ColorDialog1.Color;


end;

procedure TForm1.Button4Click(Sender: TObject);
var
  s:string;
begin
 //
 s := '#'+chr(StrToInt(Edit1.Text)) + chr(StrToInt(Edit2.Text));
 Button4.Caption := s;
 ComPort1.WriteStr(s);
end;

procedure TForm1.ColorButton1Click(Sender: TObject);
var
  c: TColor;
begin
  if ColorDialog1.Execute then
  begin
    Shape1.Brush.Color := ColorDialog1.Color;
    SB10.Position := 255;
    c := ColorDialog1.Color;
    SB11.Position := c and 255;
    SB12.Position := (c shr 8) and 255;
    SB13.Position := (c shr 16) and 255;
  end;
end;

procedure TForm1.DimmerSpeedClick(Sender: TObject);
var
  DSpd : BYTE;
begin
  //
  case DimmerSpeed.ItemIndex of
   0: DSpd :=  55; // 52..101
   1: DSpd := 110; // 102..152
   2: DSpd := 155; // 153..203
   3: DSpd := 250; // 204..255
   end;
// sparar inst�llningarna f�r senare utbyggnad
  Data[0].RGBW1.DimSpd := DSpd;
  Data[1].RGBW1.DimSpd := DSpd;
  Data[2].RGBW1.DimSpd := DSpd;
  Data[3].RGBW1.DimSpd := DSpd;
  Data[4].RGBW1.DimSpd := DSpd;
  Data[5].RGBW1.DimSpd := DSpd;
  Data[6].RGBW1.DimSpd := DSpd;
  Data[7].RGBW1.DimSpd := DSpd;
  Data[9].RGBW1.DimSpd := DSpd;

  Data[0].RGBW2.DimSpd := DSpd;
  Data[1].RGBW2.DimSpd := DSpd;
  Data[2].RGBW2.DimSpd := DSpd;
  Data[3].RGBW2.DimSpd := DSpd;
  Data[4].RGBW2.DimSpd := DSpd;
  Data[5].RGBW2.DimSpd := DSpd;
  Data[6].RGBW2.DimSpd := DSpd;
  Data[7].RGBW2.DimSpd := DSpd;
  Data[9].RGBW2.DimSpd := DSpd;

  Data[0].RGBW3.DimSpd := DSpd;
  Data[1].RGBW3.DimSpd := DSpd;
  Data[2].RGBW3.DimSpd := DSpd;
  Data[3].RGBW3.DimSpd := DSpd;
  Data[4].RGBW3.DimSpd := DSpd;
  Data[5].RGBW3.DimSpd := DSpd;
  Data[6].RGBW3.DimSpd := DSpd;
  Data[7].RGBW3.DimSpd := DSpd;
  Data[9].RGBW3.DimSpd := DSpd;


  // p�verkar alla 3 LED tillsvidare
  ComPort1.WriteStr('#'+char(18)+char(DSpd));
  ComPort1.WriteStr('#'+char(28)+char(DSpd));
  ComPort1.WriteStr('#'+char(38)+char(DSpd));
  Statusbar.Panels[1].Text := inttostr(DSpd);
end;

end.
