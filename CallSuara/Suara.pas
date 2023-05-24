unit Suara;

interface

type
  TSuara = class
  public
    constructor Create;
    function GetKind: string;
    function Voice: string; virtual;
  private
    Kind: string;
  end;

  TDua = class (TSuara)
  public
    constructor Create;
    function Voice: string; override;
  end;

  TTiga = class (TSuara)
  public
    constructor Create;
    function Voice: string; override;
  end;

  TEmpat = class (TSuara)
  public
    constructor Create;
    function Voice: string; override;
  end;

implementation

uses
  MMSystem;

constructor TSuara.Create;
begin
  Kind := 'Satu';
end;

function TSuara.GetKind: string;
begin
  GetKind := Kind;
end;

function TSuara.Voice: string;
begin
  Voice := 'Satu!!!';
  PlaySound ('satu.wav', 0, snd_Async);
end;

constructor TDua.Create;
begin
  Kind := 'Dua';
end;

function TDua.Voice: string;
begin
  Voice := 'Dua!!!';
  PlaySound ('dua.wav', 0, snd_Async);
end;

constructor TTiga.Create;
begin
  Kind := 'Tiga';
end;

function TTiga.Voice: string;
begin
  Voice := 'Tiga!!!';
  PlaySound ('tiga.wav', 0, snd_Async);
end;

constructor TEmpat.Create;
begin
  Kind := 'Empat';
end;

function TEmpat.Voice: string;
begin
  Voice := 'Empat!!!';
  PlaySound ('empat.wav', 0, snd_Async);
end;

end.

