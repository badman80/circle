unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure SpinEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//------------------------------------------------------------------------------
procedure TForm1.SpinEdit2Change(Sender: TObject);
var
  d,x,y,x1,y1,v,r,s : integer;
  step,n : real;
  inv : boolean;
begin
PaintBox1.Canvas.Brush.Color:=clWhite;
PaintBox1.Canvas.Brush.Style:=bsSolid;
PaintBox1.Canvas.Rectangle(0,0,400,400);
s:=Form1.SpinEdit1.Value;
d:=SpinEdit2.Value; // diametr
r:=d div 2;
PaintBox1.Canvas.Ellipse(200-r,200-r,200+r,200+r);
//--------------
if RadioButton1.Checked then v:=SpinEdit3.Value else v:=r+1;

n:=0; step:=360/s;
repeat
  x:=trunc(r*cos(n*Pi/180)); y:=trunc(r*sin(n*Pi/180));
  x1:=trunc((r-v)*cos(n*Pi/180)); y1:=trunc((r-v)*sin(n*Pi/180));
  PaintBox1.Canvas.MoveTo(200+x,200-y);
  PaintBox1.Canvas.LineTo(200+x1,200-y1);
  n:=n+step;
until n>359;

n:=step/2; inv:=true;
repeat
  x:=trunc(r*cos(n*Pi/180)); y:=trunc(r*sin(n*Pi/180));
  x1:=trunc((r-5)*cos(n*Pi/180)); y1:=trunc((r-5)*sin(n*Pi/180));
  if (not RadioButton1.Checked) then
    begin
      case inv of
        true  : PaintBox1.Canvas.Brush.Color:=clBlack;
        false : PaintBox1.Canvas.Brush.Color:=clWhite;
      end;
      PaintBox1.Canvas.FloodFill(200+(x+x1) div 2,200-(y+y1) div 2,clBlack,fsBorder);
    end;
  n:=n+step;
  inv:=not inv;
until n>359;

end;
//------------------------------------------------------------------------------


end.
