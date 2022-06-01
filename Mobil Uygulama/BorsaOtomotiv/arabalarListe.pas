unit arabalarListe;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.Ani;

type
  TarabalarListe1 = class(TFrame)
    resim: TImage;
    baslik: TLabel;
    GridPanelLayout1: TGridPanelLayout;
    Label2: TLabel;
    marka: TLabel;
    Label4: TLabel;
    vites: TLabel;
    Label6: TLabel;
    model: TLabel;
    Label8: TLabel;
    motor: TLabel;
    Rectangle1: TRectangle;
    fiyat: TLabel;
    aciklama: TLabel;
    yakit: TLabel;
    kasaTipi: TLabel;
    yil: TLabel;
    Layout1: TLayout;
    sil_btn: TCircle;
    Path1: TPath;
    duzenle_btn: TCircle;
    Path2: TPath;
    id: TLabel;
    procedure Rectangle1Click(Sender: TObject);
    procedure sil_btnClick(Sender: TObject);
    procedure duzenle_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Unit1;

procedure TarabalarListe1.sil_btnClick(Sender: TObject);
begin
  Form1.ArabaSil(id.Text);
end;

procedure TarabalarListe1.duzenle_btnClick(Sender: TObject);
begin
  with Form1 do
  begin
    silinecekIlan := strtoint(id.Text);
    Tab.ActiveTab := adminArabaEkletab;
    e_resim.Bitmap := resim.Bitmap;
    e_baslik.Text := baslik.Text;
    e_aciklama.Text := aciklama.Text;
    e_marka.Text := marka.Text;
    e_model.Text := model.Text;
    e_kasatipi.Items[e_kasatipi.ItemIndex];
    e_yil.Text := yil.Text;
    e_fiyat.Text := fiyat.Text;
  end;

end;

procedure TarabalarListe1.Rectangle1Click(Sender: TObject);
begin
  Form1.Tab.ActiveTab := Form1.detaytab;
  Form1.S_resim.Bitmap := resim.Bitmap;
  Form1.S_baslik.Text := baslik.Text;
  Form1.S_aciklama.Text := aciklama.Text;
  Form1.S_motor.Text := motor.Text;
  Form1.S_yakit.Text := yakit.Text;
  Form1.S_vites.Text := vites.Text;
  Form1.S_kasatipi.Text := kasaTipi.Text;
  Form1.S_yil.Text := yil.Text;
  Form1.S_marka.Text := marka.Text;
  Form1.S_model.Text := model.Text;
  Form1.S_fiyat.Text := fiyat.Text;
  Form1.VertScrollBox1.ScrollTo(0, 1000);
end;

end.
