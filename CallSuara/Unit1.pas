unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Suara, MMSystem;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    MySuara: TSuara;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  MySuara := TSuara.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  MySuara.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := MySuara.Voice;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  MySuara.Free;
  MySuara := TSuara.Create;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  MySuara.Free;
  MySuara := TDua.Create;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
MySuara.Free;
  MySuara := TTiga.Create;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
MySuara.Free;
  MySuara := TEmpat.Create;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//PlaySound('D:\antrian\suara\seratus.wav', 0,SND_FILENAME);
PlaySound ('SATU.wav', 0, SND_FILENAME);
PlaySound ('ANIM.wav', 0, SND_FILENAME);
PlaySound ('DOG.wav', 0, SND_FILENAME);
end;

end.
