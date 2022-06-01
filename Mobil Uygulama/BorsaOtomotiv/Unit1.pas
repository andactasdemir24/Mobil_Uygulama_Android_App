unit Unit1;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Edit,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.TabControl,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite,
  System.NetEncoding,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.ListBox,
  System.Actions,
  FMX.ActnList,
  FMX.StdActns,
  FMX.MediaLibrary.Actions,
  System.IOUtils;

type
  TForm1 = class(TForm)
    SY2: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle1: TRectangle;
    mail: TEdit;
    Rectangle2: TRectangle;
    password: TEdit;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Label5: TLabel;
    StyleBook1: TStyleBook;
    Tab: TTabControl;
    giristab: TTabItem;
    uyeliktab: TTabItem;
    anatab: TTabItem;
    Layout1: TLayout;
    Label3: TLabel;
    Label6: TLabel;
    Rectangle4: TRectangle;
    Edit1: TEdit;
    Rectangle5: TRectangle;
    Edit2: TEdit;
    Rectangle6: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    Rectangle7: TRectangle;
    Edit3: TEdit;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    detaytab: TTabItem;
    S_resim: TImage;
    S_baslik: TLabel;
    S_aciklama: TLabel;
    VertScrollBox1: TVertScrollBox;
    Label10: TLabel;
    Layout2: TLayout;
    Label11: TLabel;
    S_motor: TLabel;
    Layout3: TLayout;
    Label13: TLabel;
    S_yakit: TLabel;
    Layout4: TLayout;
    Label15: TLabel;
    S_vites: TLabel;
    Layout5: TLayout;
    Label17: TLabel;
    S_kasatipi: TLabel;
    Layout6: TLayout;
    Label19: TLabel;
    S_yil: TLabel;
    Layout7: TLayout;
    Label21: TLabel;
    S_marka: TLabel;
    Layout8: TLayout;
    Label23: TLabel;
    S_model: TLabel;
    Label25: TLabel;
    Rectangle8: TRectangle;
    S_fiyat: TLabel;
    Label26: TLabel;
    ListBox1: TListBox;
    adminArabaEkletab: TTabItem;
    VertScrollBox2: TVertScrollBox;
    e_resim: TImage;
    Label14: TLabel;
    Layout9: TLayout;
    Label16: TLabel;
    Layout10: TLayout;
    Label20: TLabel;
    Layout11: TLayout;
    Label24: TLabel;
    Layout12: TLayout;
    Label28: TLabel;
    Layout13: TLayout;
    Label30: TLabel;
    Layout14: TLayout;
    Label32: TLabel;
    Layout15: TLayout;
    Label34: TLabel;
    Label36: TLabel;
    Rectangle9: TRectangle;
    Label37: TLabel;
    Label38: TLabel;
    e_aciklama: TMemo;
    e_model: TEdit;
    e_marka: TEdit;
    e_yil: TEdit;
    e_kasatipi: TComboBox;
    Layout16: TLayout;
    Label9: TLabel;
    e_baslik: TEdit;
    Label12: TLabel;
    admintab: TTabItem;
    Layout17: TLayout;
    Label18: TLabel;
    VertScrollBox3: TVertScrollBox;
    Layout18: TLayout;
    Rectangle11: TRectangle;
    Label22: TLabel;
    Layout19: TLayout;
    Rectangle12: TRectangle;
    Label27: TLabel;
    Path2: FMX.Objects.TPath;
    Path3: FMX.Objects.TPath;
    admin_layout: TLayout;
    Rectangle13: TRectangle;
    Label31: TLabel;
    ActionList1: TActionList;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    Button1: TButton;
    Label29: TLabel;
    Layout20: TLayout;
    Label33: TLabel;
    e_fiyat: TEdit;
    FDQuery2: TFDQuery;
    Rectangle10: TRectangle;
    Label35: TLabel;
    filtretab: TTabItem;
    Layout21: TLayout;
    Label39: TLabel;
    filtre_modeller: TComboBox;
    Layout22: TLayout;
    Label40: TLabel;
    filtre_markalar: TComboBox;
    Layout23: TLayout;
    Label41: TLabel;
    min_fiyat: TEdit;
    Layout24: TLayout;
    Label42: TLabel;
    max_fiyat: TEdit;
    Label43: TLabel;
    Rectangle14: TRectangle;
    Label44: TLabel;
    Label45: TLabel;
    Layout25: TLayout;
    Label46: TLabel;
    e_vites: TComboBox;
    Layout26: TLayout;
    Label47: TLabel;
    e_yakit: TComboBox;
    Layout27: TLayout;
    Label48: TLabel;
    e_motor: TComboBox;
    Layout28: TLayout;
    Rectangle15: TRectangle;
    giris_yap: TLabel;
    kullaniciAdi: TLabel;
    Label49: TLabel;
    hakkimizdatab: TTabItem;
    Layout29: TLayout;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Label5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure Rectangle12Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure Rectangle9Click(Sender: TObject);
    procedure Label45Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure Rectangle14Click(Sender: TObject);
    procedure Rectangle15Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Label53Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
  private

    arabalarList: array of TListBoxItem;
    procedure arabalariListele(islem: integer);

  const
    arabalarListeAdi = 'andac';
  public
    silinecekIlan: integer;
    procedure ArabaSil(id: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses arabalarListe;

procedure TForm1.ArabaSil(id: string);
begin
  { VERİTABANI BAĞLANTISI }
  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  try
    FDConnection1.Open;
    { VERİTABANI SİLME İŞLEMİ }
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('DELETE FROM s_arabalar WHERE id=:deg1');
    FDQuery1.Params.ParamByName('deg1').Value := id;
    FDQuery1.ExecSQL;
    ShowMessage('İlan silindi.');
    FDConnection1.Close;
    arabalariListele(0);
  except
    on E: EDatabaseError do
      ShowMessage('Veritabanına erişilemedi! Detay : ' + E.Message);
  end;

end;

{ RESMİ KARAKTER FORMATINDAN GERİ DÖNÜŞTÜRME }
function Base64ToImage(base64: string): TMemoryStream;
var
  stream: TMemoryStream;
begin
  stream := TMemoryStream.Create;
  stream.write(TNetEncoding.base64.DecodeStringToBytes(base64), length(TNetEncoding.base64.DecodeStringToBytes(base64)));
  stream.Position := 0;
  Result := stream;
end;

{ RESMİ KARAKTER FORMATINA DÖNÜŞTÜRME }
function ImageToBase64(const Image: TBitmap): string;
var
  stremIn: TBytesStream;
  streamOut: TStringStream;
begin
  Result := '';
  if Image.IsEmpty then
    Exit;
  stremIn := TBytesStream.Create;
  try
    Image.SaveToStream(stremIn);
    stremIn.Position := 0;
    streamOut := TStringStream.Create('');
    try
      TNetEncoding.base64.Encode(stremIn, streamOut);
      Result := streamOut.DataString;
    finally
      streamOut.free;
    end;
  finally
    stremIn.free;
  end;
end;

procedure TForm1.arabalariListele(islem: integer);
var
  i: integer;
begin

  ListBox1.Visible := false;
  ListBox1.BeginUpdate;
  for I := 0 to ListBox1.Count - 1 do
  begin
    TarabalarListe1(FindComponent(arabalarListeAdi + i.ToString)).DisposeOf;
    arabalarList[i].DisposeOf;
  end;
  { VERİTABANI BAĞLANTISI }
  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  FDConnection1.Open();
  { ŞARTA BAĞLI VERİTABANI VERİ ÇEKME İŞLEMİ }
  if islem = 0 then
  begin
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('SELECT * FROM s_arabalar');
    FDQuery1.Open();
  end
  else if islem = 1 then
  begin

    FDQuery2.Close;
    FDQuery2.SQL.Clear;

    FDQuery2.SQL.Text := ('SELECT * FROM s_arabalar WHERE marka =' + QuotedStr(filtre_markalar.Items[filtre_markalar.ItemIndex]) + ' and (model =' +
      QuotedStr(filtre_modeller.Items[filtre_modeller.ItemIndex]) + ')and  (fiyat>=' + QuotedStr(min_fiyat.Text) + ') and (fiyat<=' + QuotedStr(max_fiyat.Text) + ')');

    // FDQuery2.SQL.Add('SELECT * FROM s_arabalar WHERE (marka =:marka) and (model =:model) and (fiyat<=:max)');
    // FDQuery2.ParamByName('marka').Value := filtre_markalar.Items[filtre_markalar.ItemIndex];
    // FDQuery2.ParamByName('model').Value := filtre_modeller.Items[filtre_modeller.ItemIndex];
    // FDQuery2.ParamByName('min').AsInteger := strtoint(min_fiyat.Text);
    // FDQuery2.ParamByName('max').Value := strtoint(max_fiyat.Text);
    FDQuery2.Open();

  end;

  if islem = 0 then
    SetLength(arabalarList, FDQuery1.RecordCount)
  else
    SetLength(arabalarList, FDQuery2.RecordCount);
  { LİSTELEME İŞLEMİ }
  if islem = 0 then
  begin
    for I := 0 to FDQuery1.RecordCount - 1 do
    begin

      arabalarList[i] := TListBoxItem.Create(Self);
      arabalarList[i].Parent := ListBox1;
      arabalarList[i].Selectable := false;

      TarabalarListe1.Create(Self).Name := arabalarListeAdi + IntToStr(i);

      with TarabalarListe1(FindComponent(arabalarListeAdi + IntToStr(i))) do
      begin
        Parent := arabalarList[i];
        if mail.Text = 'Admin' then
        Begin
          sil_btn.Visible := true;
          duzenle_btn.Visible := true;
        End
        else
        begin
          sil_btn.Visible := false;
          duzenle_btn.Visible := false;
        end;
        resim.Bitmap.LoadFromStream(Base64ToImage(FDQuery1.Fields.FieldByName('resim').AsString));
        baslik.Text := FDQuery1.Fields.FieldByName('baslik').AsString;
        vites.Text := FDQuery1.Fields.FieldByName('vites').AsString;
        marka.Text := FDQuery1.Fields.FieldByName('marka').AsString;
        model.Text := FDQuery1.Fields.FieldByName('model').AsString;
        motor.Text := FDQuery1.Fields.FieldByName('motor').AsString;
        fiyat.Text := FDQuery1.Fields.FieldByName('fiyat').AsString + ' ₺';
        aciklama.Text := FDQuery1.Fields.FieldByName('aciklama').AsString;
        yakit.Text := FDQuery1.Fields.FieldByName('yakit').AsString;
        kasaTipi.Text := FDQuery1.Fields.FieldByName('kasaTipi').AsString;
        yil.Text := FDQuery1.Fields.FieldByName('yil').AsString;
        id.Text := FDQuery1.Fields.FieldByName('id').AsString;

      end;

      FDQuery1.Next;

    end;
  end
  { LİSTELEME İŞLEMİ }
  else if islem = 1 then
  begin
    for I := 0 to FDQuery2.RecordCount - 1 do
    begin

      arabalarList[i] := TListBoxItem.Create(Self);
      arabalarList[i].Parent := ListBox1;
      arabalarList[i].Selectable := false;

      TarabalarListe1.Create(Self).Name := arabalarListeAdi + IntToStr(i);

      with TarabalarListe1(FindComponent(arabalarListeAdi + IntToStr(i))) do
      begin
        Parent := arabalarList[i];

        if mail.Text = 'Admin' then
        Begin
          sil_btn.Visible := true;
          duzenle_btn.Visible := true;
        End
        else
        begin
          sil_btn.Visible := false;
          duzenle_btn.Visible := false;
        end;

        resim.Bitmap.LoadFromStream(Base64ToImage(FDQuery2.Fields.FieldByName('resim').AsString));
        baslik.Text := FDQuery2.Fields.FieldByName('baslik').AsString;
        vites.Text := FDQuery2.Fields.FieldByName('vites').AsString;
        marka.Text := FDQuery2.Fields.FieldByName('marka').AsString;
        model.Text := FDQuery2.Fields.FieldByName('model').AsString;
        motor.Text := FDQuery2.Fields.FieldByName('motor').AsString;
        fiyat.Text := FDQuery2.Fields.FieldByName('fiyat').AsString + ' ₺';
        aciklama.Text := FDQuery2.Fields.FieldByName('aciklama').AsString;
        yakit.Text := FDQuery2.Fields.FieldByName('yakit').AsString;
        kasaTipi.Text := FDQuery2.Fields.FieldByName('kasaTipi').AsString;
        yil.Text := FDQuery2.Fields.FieldByName('yil').AsString;
        id.Text := FDQuery2.Fields.FieldByName('id').AsString;

      end;
      FDQuery2.Next;

    end;
  end;
  ListBox1.EndUpdate;
  ListBox1.Visible := true;
  FDConnection1.Close;
end;

procedure TForm1.Label26Click(Sender: TObject);
begin
  Tab.ActiveTab := anatab;
end;

procedure TForm1.Label38Click(Sender: TObject);
begin
  silinecekIlan := -1;
  Tab.ActiveTab := admintab;
end;

procedure TForm1.Label45Click(Sender: TObject);
begin
  Tab.ActiveTab := anatab;
end;

procedure TForm1.Label49Click(Sender: TObject);
begin
  Tab.ActiveTab := anatab;
  admin_layout.Visible := false;
  arabalariListele(0);
end;

procedure TForm1.Label53Click(Sender: TObject);
begin
  Tab.ActiveTab := giristab;
end;

procedure TForm1.Label54Click(Sender: TObject);
begin
  Tab.ActiveTab := hakkimizdatab;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
  Tab.ActiveTab := uyeliktab;
end;

procedure TForm1.Label8Click(Sender: TObject);
begin
  Tab.ActiveTab := giristab;
end;

procedure TForm1.Rectangle10Click(Sender: TObject);
var
  i: integer;
begin
  Tab.ActiveTab := filtretab;
  { VERİTABANI BAĞLANTISI }
  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  FDConnection1.Open();
  { VERİTABANI VERİ ÇEKME İŞLEMİ }
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT DISTINCT marka FROM s_arabalar');
  FDQuery1.Open();
  filtre_markalar.Clear;
  filtre_markalar.Items.Add('Bir marka seçiniz');
  for I := 0 to FDQuery1.RecordCount - 1 do
  begin
    filtre_markalar.Items.Add(FDQuery1.Fields.FieldByName('marka').AsString);
    FDQuery1.Next;
  end;

  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT DISTINCT model FROM s_arabalar');
  FDQuery1.Open();
  filtre_modeller.Clear;
  filtre_modeller.Items.Add('Bir model seçiniz');
  for I := 0 to FDQuery1.RecordCount - 1 do
  begin
    filtre_modeller.Items.Add(FDQuery1.Fields.FieldByName('model').AsString);
    FDQuery1.Next;
  end;
  filtre_modeller.ItemIndex := 0;
  filtre_markalar.ItemIndex := 0;
  FDConnection1.Close;
end;

procedure TForm1.Rectangle11Click(Sender: TObject);
begin
  Tab.ActiveTab := anatab;
  arabalariListele(0);
  admin_layout.Visible := true;
end;

procedure TForm1.Rectangle12Click(Sender: TObject);
begin
  Tab.ActiveTab := adminArabaEkletab;
end;

procedure TForm1.Rectangle13Click(Sender: TObject);
begin
  Tab.ActiveTab := admintab;
end;

procedure TForm1.Rectangle14Click(Sender: TObject);
begin

  if (filtre_modeller.Count = 0) OR (filtre_modeller.Selected.Text.length = 0) then
  begin
    ShowMessage('Model seçiniz');
    Exit;
  end;

  if (filtre_markalar.Count = 0) OR (filtre_markalar.Selected.Text.length = 0) then
  begin
    ShowMessage('Marka seçiniz');
    Exit;
  end;

  if (min_fiyat.Text = '') OR (max_fiyat.Text = '') then
  begin
    ShowMessage('Fiyat aralığı giriniz');
    Exit;
  end;
  Tab.ActiveTab := anatab;
  arabalariListele(1);
end;

procedure TForm1.Rectangle15Click(Sender: TObject);
begin
  if giris_yap.Text = 'Giriş yap' then
  begin
    Tab.ActiveTab := giristab;
  end
  else
  begin
    giris_yap.Text := 'Giriş yap';
    admin_layout.Visible := false;
    kullaniciAdi.Visible := false;
    ShowMessage('Çıkış yapıldı');
  end;
end;

procedure TForm1.Rectangle3Click(Sender: TObject);
begin
  { VERİTABANI BAĞLANTISI }
  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  try
    FDConnection1.Open;
    { VERİTABANI VERİ ÇEKME İŞLEMİ }
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('SELECT * FROM s_kullanicilar WHERE kullaniciAdi =:deg1 AND sifre =:deg2');
    FDQuery1.Params.ParamByName('deg1').Value := mail.Text;
    FDQuery1.Params.ParamByName('deg2').Value := password.Text;
    FDQuery1.Open();
    if not FDQuery1.IsEmpty then
    begin
      if mail.Text = 'Admin' then
        Tab.ActiveTab := admintab
      else
        Tab.ActiveTab := anatab;
      arabalariListele(0);
      admin_layout.Visible := false;
      kullaniciAdi.Text := mail.Text;
      kullaniciAdi.Visible := true;
      giris_yap.Text := 'Çıkış yap';
    end
    else
    begin
      ShowMessage('Kullanıcı adı ya da şifre hatalı!');
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Veritabanına erişilemedi! Detay : ' + E.Message);
  end;

end;

procedure TForm1.Rectangle6Click(Sender: TObject);
begin

  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  try
    FDConnection1.Open;
    if Edit2.Text = Edit3.Text then
    begin

      FDQuery1.Close;
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('SELECT * FROM s_kullanicilar WHERE kullaniciAdi =:deg1');
      FDQuery1.Params.ParamByName('deg1').Value := Edit1.Text;
      FDQuery1.Open();

      if FDQuery1.IsEmpty then
      begin

        FDQuery1.Close;
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add('INSERT INTO s_kullanicilar(kullaniciAdi,sifre) VALUES (:deg1, :deg2)');
        FDQuery1.Params.ParamByName('deg1').Value := Edit1.Text;
        FDQuery1.Params.ParamByName('deg2').Value := Edit2.Text;
        FDQuery1.ExecSQL;
        ShowMessage('Başarılı.');
        Tab.ActiveTab := giristab;
        FDConnection1.Close;
      end
      else
      begin
        ShowMessage('Bu kullanıcı adi daha önce alınmış!');
      end;
    end
    else
    begin
      ShowMessage('Şifreler uyuşmuyor!');
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Veritabanına erişilemedi! Detay : ' + E.Message);
  end;

end;

procedure TForm1.Rectangle8Click(Sender: TObject);
begin
  ShowMessage('Satın alma işlemleri için mağazamıza bekleriz. Hayırlı olsun.');
  Tab.ActiveTab := anatab;
end;

procedure TForm1.Rectangle9Click(Sender: TObject);
begin

  if (e_vites.Items[e_vites.ItemIndex] = '') or (e_yakit.Items[e_yakit.ItemIndex] = '') or (e_motor.Items[e_motor.ItemIndex] = '') or (e_kasatipi.Items[e_kasatipi.ItemIndex] = '') then
  begin
    ShowMessage('Boş alan seçimlerini yapınız!');
    Exit;
  end;
  if (e_baslik.Text = '') OR (e_aciklama.Text = '') OR (e_marka.Text = '') OR (e_model.Text = '') OR (e_yil.Text = '') OR (e_fiyat.Text = '') then
  begin
    ShowMessage('Boş alanları doldurun!');
    Exit;
  end;
  { VERİTABANI BAĞLANTISI VE VERİ EKLEME İŞLEMİ }
  FDConnection1.DriverName := 'SQLITE';
{$IFDEF MSWINDOWS}
  FDConnection1.Params.Values['Database'] := 'C:\Users\Developer\Desktop\Rent.db';
{$ENDIF}
{$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'Rent.db');
{$ENDIF}
  FDConnection1.Open;
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('INSERT INTO s_arabalar (resim, baslik, aciklama, marka, model, motor, vites, yakit, kasaTipi, yil, fiyat )');
  FDQuery1.SQL.Add('VALUES(:deg1,:deg2,:deg3,:deg4,:deg5,:deg6,:deg7,:deg8,:deg9,:deg10,:deg11)');
  FDQuery1.Params.ParamByName('deg1').Value := ImageToBase64(e_resim.Bitmap);
  FDQuery1.Params.ParamByName('deg2').Value := e_baslik.Text;
  FDQuery1.Params.ParamByName('deg3').Value := e_aciklama.Text;
  FDQuery1.Params.ParamByName('deg4').Value := e_marka.Text;
  FDQuery1.Params.ParamByName('deg5').Value := e_model.Text;
  FDQuery1.Params.ParamByName('deg6').Value := e_motor.Items[e_motor.ItemIndex];
  FDQuery1.Params.ParamByName('deg7').Value := e_vites.Items[e_vites.ItemIndex];
  FDQuery1.Params.ParamByName('deg8').Value := e_yakit.Items[e_yakit.ItemIndex];
  FDQuery1.Params.ParamByName('deg9').Value := e_kasatipi.Items[e_kasatipi.ItemIndex];
  FDQuery1.Params.ParamByName('deg10').Value := e_yil.Text;
  FDQuery1.Params.ParamByName('deg11').Value := e_fiyat.Text;
  FDQuery1.ExecSQL;
  FDConnection1.Close;
  ShowMessage('İlan başarıyla yayınlandı.');
  Tab.ActiveTab := admintab;

  if silinecekIlan <> -1 then
  begin
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('DELETE FROM s_arabalar WHERE id=:deg1');
    FDQuery1.Params.ParamByName('deg1').Value := silinecekIlan;
    FDQuery1.ExecSQL;
  end;

  silinecekIlan := -1;
  e_baslik.Text := '';
  e_aciklama.Text := '';
  e_marka.Text := '';
  e_model.Text := '';
  e_motor.ItemIndex := 0;
  e_vites.ItemIndex := 0;
  e_yakit.ItemIndex := 0;
  e_kasatipi.ItemIndex := 0;
  e_yil.Text := '';
  e_fiyat.Text := '';

end;

procedure TForm1.TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
begin
  e_resim.Bitmap.Assign(Image);
end;

end.
