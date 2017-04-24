unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, ToolWin, ComCtrls;

const
  SEGMENT_SIZE = 65536;
  DISPLAY_WIDTH = 320;
  DISPLAY_HEIGHT = 200;
  TILE_WIDTH = 8;
  TILE_HEIGHT = 8;
  SCALE_FACTOR = 2;

  TILES_IN_ROW = $28;
  TILES_IN_COL = $19;
  WORLD_HEIGHT = $14;

  WORLD_TILES_COUNT = $100;
  FOOTER_TILES_COUNT = $67;
  LOCATIONS_COUNT = $3E;
  ANIMATIONS_COUNT = $38;

  SMALL_TILE_LENGTH = 16;

  FOOTER_DATA = $8C05;
  FOOTER_TILE_SET = $68AC;
  WORLD_TILE_SET = $58AC;
  LOCATION_BUFFER = $DF4C;
  PACKED_LOC_INDEX = $7B89;
  PACKED_LOCATIONS = $3EC0;
  BLOCKS_TABLE = $6F2C;
  ANIM_LIST_OFFSET = $7945;
  ANIM_LIST_END = $7C89;
  LOCATIONS_LIST = $80A4;
  OUTLINES_LIST = $7EBA;

type
  PLocationItem = ^TLocationItem;
  TLocationItem = packed record
    CharFlags: byte;
    Animation: byte;
    Frame: byte;
    X: byte;
    Col: byte;
    Y: byte;
    Row: byte;
    CustomDataset: WORD;
  end;
  PLocationInfo = ^TLocationInfo;
  TLocationInfo = packed record
    UpperLeftExit: byte;
    LowerLeftExit: byte;
    UpperRightExit: byte;
    LowerRightExit: byte;
    ItemsCount: byte;
  end;
  PFooterChunk = ^TFooterChunk;
  TFooterChunk = packed record
    Chunk: byte;
    Row: byte;
    Col: byte;
  end;
  Psegment = ^TSegment;
  TSegment = array[0..SEGMENT_SIZE - 1] of byte;
  TByteArray = array[0..SEGMENT_SIZE - 1] of byte;
  PByteArray = ^TByteArray;
  TColorArray = array[0..SEGMENT_SIZE - 1] of TColor;
  PColorArray = ^TColorArray;
  TSprite = packed record
    Width: byte;
    Height: byte;
    Image: TByteArray;
  end;
  PSprite = ^TSprite;
  TMainForm = class(TForm)
    Workspace: TPanel;
    Display: TImage;
    Panel2: TPanel;
    AnimGrid: TDrawGrid;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    LocationCombo: TComboBox;
    Label1: TLabel;
    Splitter1: TSplitter;
    TileGrid: TDrawGrid;
    Splitter2: TSplitter;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AnimGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LocationComboChange(Sender: TObject);
    procedure cbInterlacedClick(Sender: TObject);
    procedure TileGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure WorkspaceResize(Sender: TObject);
    procedure ExportBlocks(Sender: TObject);
    procedure ExportWorldTiles(Sender: TObject);
    procedure ExportFooterTiles(Sender: TObject);
    procedure ExportBackgrounds(Sender: TObject);
    procedure ExportAnimations(Sender: TObject);
    procedure ExportLocations(Sender: TObject);
  private
    mSegment: TSegment;
    mExecLength: integer;
    mExecutable: PSegment;
    mSpriteWidth: integer;
    mSpriteHeight: integer;
    mAnimLength: integer;
    mAnimations: array[0..ANIMATIONS_COUNT-1] of TList;
    mAnimIndex: array[0..ANIMATIONS_COUNT-1] of integer;
    mWorldTiles: TBitmap;
    mFooterTiles: TBitmap;
    mBlocks: TList;
    mBackgrounds: array[0..LOCATIONS_COUNT-1] of WORD;
    mFooter: TMemoryStream;
    property Executable: TSegment read mSegment;
    procedure addBlock(Address: word);
    procedure AdjustDisplayPosition;
    procedure Decode8x8Tile(Row, Col: byte; Tile: integer; TileSet: integer; Dest: TBitmap);
    procedure FillInWorld(filename: String);
    procedure FillInFooter(filename: String);
    procedure Draw8x8Tile(Row, Col: byte; Tile: integer; TileSet: TBitmap; Dest: TBitmap);
    procedure DrawFooter;
    procedure DrawWorldBuffer;
    procedure ClearWorldBuffer;
    procedure DecodeLocation;
    procedure DecodeAnimations;
    function DecodeSprite(Address: integer): TBitmap;
    function TranslateColor(Source: integer): integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Types, Notepad, StrUtils;

function CompareInteger(a, b: pointer): integer;
begin
  result := integer(a)-integer(b);
end;

{$R *.dfm}

procedure TMainForm.AdjustDisplayPosition;
begin
  Display.Left := (Workspace.ClientWidth - Display.Width) div 2;
  Display.Top := (Workspace.ClientHeight - Display.Height) div 2;
end;

procedure TMainForm.ClearWorldBuffer;
var Row, Col: integer;
begin
  for Row := 0 to WORLD_HEIGHT - 1 do
    for Col := 0 to TILES_IN_ROW - 1 do begin
      mSegment[LOCATION_BUFFER+Row*TILES_IN_ROW+Col] := $00;
    end;
end;

procedure TMainForm.DecodeLocation;
var
  Row, Col, BlockOffset: integer;
  LocationOffset: integer;
  LocPointer: integer;
  TilePointer: integer;
  Target, StoredTarget: integer;
  ColCount, RowCount, Tile: integer;
  Counter: integer;
  Index: integer;
begin
  ClearWorldBuffer;
  Index := PACKED_LOC_INDEX+LocationCombo.ItemIndex*2;
  LocationOffset := Executable[Index]+(Executable[Index+1] shl 8);
  LocPointer := PACKED_LOCATIONS + LocationOffset;
  mBackgrounds[LocationCombo.ItemIndex] := LocPointer;
  Counter := Executable[LocPointer];

  while(Counter > 0) do begin
    Col := Executable[LocPointer+1];
    Row := Executable[LocPointer+2];
    BlockOffset := Executable[LocPointer+3] + Executable[LocPointer+4] shl 8 + BLOCKS_TABLE;
    addBlock(BlockOffset);
    RowCount := Executable[BlockOffset + 1];
    TilePointer := BlockOffset+2;
    Target := Row * TILES_IN_ROW + Col + LOCATION_BUFFER;
    while RowCount > 0 do begin
      StoredTarget := Target + TILES_IN_ROW;
      ColCount := Executable[BlockOffset];
      while ColCount>0 do begin
        Tile := Executable[TilePointer];
        if Tile <> 0 then
          mSegment[Target] := Tile;
        inc(TilePointer);
        inc(Target);
        dec(ColCount);
      end;
      Target := StoredTarget;
      dec(RowCount);
    end;
    inc(LocPointer, 4);
    dec(Counter);
  end;
end;

procedure TMainForm.Draw8x8Tile(Row, Col: byte; Tile: integer; TileSet: TBitmap; Dest: TBitmap);
var sr, sc: integer;
    Src: TRect;
    Dst: TRect;
begin
  sr := Tile div 16;
  sc := Tile mod 16;
  Src := Rect(
    sc*TILE_WIDTH,
    sr*TILE_HEIGHT,
    (sc+1)*TILE_WIDTH,
    (sr+1)*TILE_HEIGHT);
  Dst := Rect(
    Col*TILE_WIDTH*SCALE_FACTOR,
    Row*TILE_WIDTH*SCALE_FACTOR,
    (Col+1)*TILE_WIDTH*SCALE_FACTOR,
    (Row+1)*TILE_WIDTH*SCALE_FACTOR);
  Dest.Canvas.CopyRect(Dst, TileSet.Canvas, Src);

end;

procedure TMainForm.Decode8x8Tile(Row, Col: byte; Tile: integer; TileSet: integer; Dest: TBitmap);
var
  ChunkPointer: integer;
  x, y, pixel: integer;
  Quad: byte;
  CGAColor: byte;
  ModernColor: TColor;
  P: PColorArray;
begin
  ChunkPointer := TileSet + Tile*SMALL_TILE_LENGTH;
  for y := 0 to 7 do begin
    P := Dest.ScanLine[Row*8+y];
    for x := 0 to 1 do begin
      Quad := Executable[ChunkPointer + y*2 + x];
      for pixel := 0 to 3 do begin
        CGAColor := (Quad and $C0) shr 6;
        Quad := Quad shl 2;
        case CGAColor of
          1: ModernColor := $0000ff00;
          2: ModernColor := $00ff0000;
          3: ModernColor := $00ffff00;
          else
            ModernColor := 0;
        end;
        P[Col*8+x*4+pixel] := ModernColor;
      end;
    end;
  end;
end;

procedure TMainForm.DrawFooter;
var
  Row, Col: byte;
  Chunk: PFooterChunk;
  Max: integer;
begin
  Max := -1;
  Row := 0;
  Col := 0;
  Chunk := PFooterChunk(mExecutable);
  inc(PByte(Chunk), FOOTER_DATA);
  while true do begin
    mFooter.Write(Chunk.Chunk, 1);
    if Chunk.Chunk = $FF then
      break;
    if Chunk.Chunk = 0 then begin
      mFooter.Write(Chunk.Row, 1);
      mFooter.Write(Chunk.Col, 1);
      Row := Chunk.Row;
      Col := Chunk.Col;
      inc(Chunk);
      continue;
    end else begin
      if Chunk.Chunk > Max then
        Max := Chunk.Chunk;
      Draw8x8Tile(Row, Col, Chunk.Chunk, mFooterTiles, Display.Picture.Bitmap);
      inc(Col);
      if Col >= TILES_IN_ROW then begin
        Col := 0;
        inc(Row);
        if Row >= TILES_IN_COL then
          Row := 0;
      end;
    end;
    inc(PByte(Chunk));
  end;
end;

procedure TMainForm.DrawWorldBuffer;
var Row, Col: byte;
    TilePtr: PByte;
begin
  TilePtr := @mSegment[LOCATION_BUFFER];
  for Row := 0 to WORLD_HEIGHT - 1 do
    for Col := 0 to TILES_IN_ROW - 1 do begin
      Draw8x8Tile(Row, Col, TilePtr^, mWorldTiles, Display.Picture.Bitmap);
{
      if (TilePtr^ >= $B9) or (TilePtr^ < $A2) then begin
        Display.Picture.Bitmap.Canvas.Brush.Style := bsClear;
        Display.Picture.Bitmap.Canvas.Pen.Color := clBlue;
        Display.Picture.Bitmap.Canvas.Rectangle(
          Col*TILE_WIDTH*SCALE_FACTOR,
          Row*TILE_WIDTH*SCALE_FACTOR,
          (Col+1)*TILE_WIDTH*SCALE_FACTOR,
          (Row+1)*TILE_WIDTH*SCALE_FACTOR);
      end;
}
      inc(TilePtr);
    end;
  Display.Refresh;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Stream: TResourceStream;
  i: integer;
  name: String;
begin
  mExecutable := @mSegment;
  // Loading executable
  Stream := TResourceStream.Create(HInstance, 'PROGRAM', RT_RCDATA);
  Stream.Position := 0;
  mExecLength := Stream.Read(mSegment, SEGMENT_SIZE);
  Stream.Free;

  LocationCombo.Items.Clear;
  for i := 0 to LOCATIONS_COUNT-1 do
    LocationCombo.Items.Add('Ёкран 0x'+inttohex(i, 2));
  LocationCombo.ItemIndex := 0;

  Display.Width := DISPLAY_WIDTH*SCALE_FACTOR;
  Display.Height := DISPLAY_HEIGHT*SCALE_FACTOR;
  Display.Picture.Bitmap.Width := DISPLAY_WIDTH*SCALE_FACTOR;
  Display.Picture.Bitmap.Height := DISPLAY_HEIGHT*SCALE_FACTOR;
  Display.Picture.Bitmap.PixelFormat := pf32Bit;
  with Display.Picture.Bitmap.Canvas do begin
    Brush.Color := clBlack;
    FillRect(Rect(0, 0, DISPLAY_WIDTH*2, DISPLAY_HEIGHT*2));
  end;

  TileGrid.ColCount := $100;

  mSpriteWidth := -1;
  mSpriteHeight := -1;
  mAnimLength := -1;
  DecodeAnimations;
  mSpriteWidth := mSpriteWidth*4;
  mSpriteHeight := mSpriteHeight;

  AnimGrid.ColCount := ANIMATIONS_COUNT;
  AnimGrid.RowCount := mAnimLength+1;
  AnimGrid.DefaultColWidth := mSpriteWidth+4;
  AnimGrid.DefaultRowHeight := mSpriteHeight+4;
  AnimGrid.RowHeights[0] := 16;

  mWorldTiles := TBitmap.Create;
  mWorldTiles.Width := TILE_WIDTH * 16;
  mWorldTiles.Height := TILE_HEIGHT * 16;
  name := ExtractFilePath(ParamStr(0))+'world.bmp';
  if FileExists(name) then
    mWorldTiles.LoadFromFile(name)
  else
    FillInWorld(name);

  mFooterTiles := TBitmap.Create;
  mFooterTiles.Width := TILE_WIDTH * 16;
  mFooterTiles.Height := TILE_HEIGHT * 16;
  name := ExtractFilePath(ParamStr(0))+'footer.bmp';
  if FileExists(name) then
    mFooterTiles.LoadFromFile(name)
  else
    FillInFooter(name);

  mBlocks := TList.Create;

  for i := 0 to LOCATIONS_COUNT - 1 do
    mBackgrounds[i] := 0;

  mFooter := TMemoryStream.Create;
  
  DrawFooter;
  DecodeLocation();
  DrawWorldBuffer;
end;

procedure TMainForm.AnimGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  Left, Right, Top, Bottom: integer;
  Bitmap: TBitmap;
  Anim: TList;
  Number: String;
  DX: integer;
begin
  Anim := mAnimations[ACol];
  if ARow = 0 then begin
    Number := inttohex(mAnimIndex[ACol], 2)+'h ('+inttostr(Anim.Count)+')';
    DX := (AnimGrid.DefaultColWidth - AnimGrid.Canvas.TextWidth(Number)) div 2;
    AnimGrid.Canvas.TextOut(Rect.Left+DX, 2, Number);
    exit;
  end;
  with AnimGrid.Canvas do begin
    Brush.Color := clGray;
    FillRect(Rect);
    if ARow <= Anim.Count then begin
      Bitmap := Anim[ARow-1];
      Left := (AnimGrid.DefaultColWidth - Bitmap.Width) div 2 + Rect.Left;
      Right := Left + Bitmap.Width;
      Top := (AnimGrid.DefaultRowHeight - Bitmap.Height) div 2 + Rect.Top;
      Bottom := Top + Bitmap.Height;
      CopyRect(Types.Rect(Left, Top, Right, Bottom), Bitmap.Canvas, Types.Rect(0, 0, Bitmap.Width, Bitmap.Height));
    end else begin
      Pen.Color := clRed;
      Rectangle(Rect);
      MoveTo(Rect.Left, Rect.Top);
      LineTo(Rect.Right, Rect.Bottom);
    end;
  end;

end;

procedure TMainForm.LocationComboChange(Sender: TObject);
begin
  DecodeLocation();
  DrawWorldBuffer;
end;

procedure TMainForm.cbInterlacedClick(Sender: TObject);
begin
  DrawWorldBuffer;
end;

function TMainForm.DecodeSprite(Address: integer): TBitmap;
var
  Sprite: PSprite;
  Row, Col, Pixel: integer;
  Quad: byte;
  CGAColor: byte;
  ModernColor: TColor;
  P: PColorArray;
begin
  Sprite := @mSegment[Address];
  if Sprite.Width > mSpriteWidth then
    mSpriteWidth := Sprite.Width;
  if Sprite.Height > mSpriteHeight then
    mSpriteHeight := Sprite.Height;
  result := TBitmap.Create();
  result.PixelFormat := pf32Bit;
  result.Width := Sprite.Width*4;
  result.Height := Sprite.Height;
  for Row := 0 to Sprite.Height - 1 do begin
    P := result.ScanLine[Row];
    for Col := 0 to Sprite.Width - 1 do begin
      Quad := Sprite.Image[Row*Sprite.Width+Col];
      for Pixel := 0 to 3 do begin
        CGAColor := (Quad and $C0) shr 6;
        Quad := Quad shl 2;
        case CGAColor of
          1: ModernColor := $0040ff40;
          2: ModernColor := $00ff4040;
          3: ModernColor := $00ffff40;
          else
            ModernColor := 0;
        end;
        P[Col*4+Pixel] := ModernColor;
      end;
    end;
  end;
end;

procedure TMainForm.DecodeAnimations;
var Ptr: PWord;
    Stop: integer;
    Index: integer;
    SpriteAddr: integer;
    Length: integer;
    List: array[0..ANIMATIONS_COUNT-1] of integer;
    Sorted: boolean;
begin
  for Index:= 0 to ANIMATIONS_COUNT-1 do begin
    Ptr := PWord(@mSegment[ANIM_LIST_OFFSET+Index*2]);
    List[Index] := Ptr^;
    mAnimIndex[Index] := Index;
  end;

  Sorted := false;
  while not sorted do begin
    Sorted := true;
    for Index:= 0 to ANIMATIONS_COUNT-2 do
      if List[Index] > List[Index+1] then begin
        Stop := List[Index];
        List[Index] := List[Index+1];
        List[Index+1] := Stop;
        Stop := mAnimIndex[Index];
        mAnimIndex[Index] := mAnimIndex[Index+1];
        mAnimIndex[Index+1] := Stop;
        Sorted := false;
        break;
      end;
  end;

  for Index:= 0 to ANIMATIONS_COUNT-1 do begin
    mAnimations[Index] := TList.Create;
    if Index = ANIMATIONS_COUNT - 1 then
      Stop := ANIM_LIST_END
    else
      Stop := List[Index+1];
    Length := (Stop-List[Index]) div 2;
    if Length>mAnimLength then
      mAnimLength := Length;
    while List[Index]<Stop do begin
      Ptr := PWord(@mSegment[List[Index]-$100]);
      SpriteAddr := Ptr^-$100;
      mAnimations[Index].Add(DecodeSprite(SpriteAddr));
      inc(List[Index], 2);
    end;
  end;
end;

procedure TMainForm.TileGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  Number: String;
  DX, DY: integer;
  TileSet: TBitmap;
  sr, sc: Integer;
  Src: TRect;
  Dest: TRect;
begin
  if ARow = 0 then begin
    Number := inttohex(ACol, 2)+'h';
    DX := (TileGrid.DefaultColWidth - TileGrid.Canvas.TextWidth(Number)) div 2;
    TileGrid.Canvas.TextOut(Rect.Left + DX, 4, Number);
  end else begin
    TileGrid.Canvas.Brush.Color := clBlack;
    TileGrid.Canvas.FillRect(Rect);
    DX := (TileGrid.DefaultColWidth - TILE_WIDTH*SCALE_FACTOR) div 2;
    DY := (TileGrid.DefaultRowHeight - TILE_HEIGHT*SCALE_FACTOR) div 2;
    if ARow = 1 then
      TileSet := mWorldTiles
    else
      TileSet := mFooterTiles;
    sr := ACol div 16;
    sc := ACol mod 16;
    Src := Types.Rect(
      sc*TILE_WIDTH,
      sr*TILE_HEIGHT,
      (sc+1)*TILE_WIDTH,
      (sr+1)*TILE_HEIGHT);

    Dest.Left := Rect.Left + DX;
    Dest.Top := Rect.Top + DY;
    Dest.Right := Dest.Left + TILE_WIDTH*SCALE_FACTOR;
    Dest.Bottom := Dest.Top + TILE_HEIGHT*SCALE_FACTOR;
    TileGrid.Canvas.CopyRect(Dest, TileSet.Canvas, Src);
  end;
end;

procedure TMainForm.WorkspaceResize(Sender: TObject);
begin
  AdjustDisplayPosition;
end;

procedure TMainForm.FillInWorld(filename: String);
var Row, Col: integer;
begin
  mWorldTiles.PixelFormat := pf32Bit;
  for Row := 0 to 15 do
    for Col := 0 to 15 do
      Decode8x8Tile(Row, Col, Row*16+Col, WORLD_TILE_SET, mWorldTiles);
  mWorldTiles.SaveToFile(filename);
end;

procedure TMainForm.FillInFooter(filename: String);
var Row, Col: integer;
    n: integer;
begin
  mFooterTiles.PixelFormat := pf32Bit;
  for Row := 0 to 15 do
    for Col := 0 to 15 do begin
      n := Row*16+Col;
      if n>= FOOTER_TILES_COUNT then
        break;
      Decode8x8Tile(Row, Col, n, FOOTER_TILE_SET, mFooterTiles);
    end;
  mFooterTiles.SaveToFile(filename);
end;

procedure TMainForm.addBlock(Address: word);
var i: integer;
begin
  for i := 0 to mBlocks.Count-1 do
    if word(mBlocks[i]) = Address then
      exit;
  mBlocks.Add(pointer(Address));
end;

procedure TMainForm.ExportBlocks(Sender: TObject);
var block: integer;
    Row, Col: integer;
    Width, Height: byte;
    Ptr: integer;
    line: String;
begin
  // Sort
//  mBlocks.Sort(@CompareInteger);

  // Show
  with NotepadForm.Memo.Lines do begin
    Clear;
    Add('int BlocksCount = 0x'+inttohex(mBlocks.Count, 2) + ';');
    Add('');

    for block := 0 to mBlocks.Count-1 do begin
      Width := mSegment[integer(mBlocks[block])];
      Height := mSegment[integer(mBlocks[block])+1];
      Ptr := integer(mBlocks[block])+2;
      Add(
        'const char Block0x'+
        inttohex(block, 2)+
        '[]={0x'+
        inttohex(Width, 2)+
        ', 0x'+
        inttohex(Height, 2)+
        ',');
      for Row := 0 to Height-1 do begin
        line := '     ';
        for Col := 0 to Width-1 do
          line := line + '0x'+inttohex(mSegment[Ptr+Row*Width+Col], 2)+', ';
        if Row >= Height-1 then
          line := copy(line, 0, length(line)-2)+'};';
        Add(line);
      end;
      Add('');
    end;
    Add('const char* BlocksIndex[]={');
    for block := 0 to mBlocks.Count-1 do begin
      line := '    Block0x'+inttohex(block, 2)+',';
      if block >= mBlocks.Count-1 then
        line := copy(line, 0, length(line)-1)+'};';
      Add(line);
    end;

  end;

  NotepadForm.ShowModal;
end;

procedure TMainForm.ExportWorldTiles(Sender: TObject);
var Tile: integer;
    Row, Col: integer;
    X, Y: integer;
    Color: integer;
    line: String;
begin
  with NotepadForm.Memo.Lines do begin
    Clear;
    Add('const unsigned char WorldTiles[]={');
    for Tile := 0 to WORLD_TILES_COUNT-1 do begin
      Add('    /******** Tile 0x'+inttohex(Tile, 2)+' ********/');
      for Row := 0 to TILE_HEIGHT-1 do begin
        line := '    ';
        for Col := 0 to TILE_WIDTH-1 do begin
          X := (Tile mod 16)*TILE_WIDTH+Col;
          Y := (Tile div 16)*TILE_HEIGHT+Row;
          Color := mWorldTiles.Canvas.Pixels[X, Y];
          Color := TranslateColor(Color);
          line := line+'0x'+inttohex(Color, 2)+', ';
        end;
        if (Tile >= WORLD_TILES_COUNT-1) and (Row >= TILE_HEIGHT-1) then
          line := copy(Line, 0, length(line)-2) + '};';
        Add(line);
      end;
    end;
  end;
  NotepadForm.ShowModal;
end;

procedure TMainForm.ExportFooterTiles(Sender: TObject);
var Tile: integer;
    Row, Col: integer;
    X, Y: integer;
    Color: integer;
    line: String;
    i, Counter: integer;
    c: byte;
begin
  with NotepadForm.Memo.Lines do begin
    Clear;
    Add('const unsigned char FooterTiles[]={');
    for Tile := 0 to FOOTER_TILES_COUNT-1 do begin
      Add('    /******** Tile 0x'+inttohex(Tile, 2)+' ********/');
      for Row := 0 to TILE_HEIGHT-1 do begin
        line := '    ';
        for Col := 0 to TILE_WIDTH-1 do begin
          X := (Tile mod 16)*TILE_WIDTH+Col;
          Y := (Tile div 16)*TILE_HEIGHT+Row;
          Color := mFooterTiles.Canvas.Pixels[X, Y];
          Color := TranslateColor(Color);
          line := line+'0x'+inttohex(Color, 2)+', ';
        end;
        if (Tile >= FOOTER_TILES_COUNT-1) and (Row >= TILE_HEIGHT-1) then
          line := copy(Line, 0, length(line)-2) + '};';
        Add(line);
      end;
    end;
    Add('');
    Add('const unsigned char Footer[] = {');
    Counter := 0;
    line := '    ';
    mFooter.Seek(0, 0);
    for i := 0 to mFooter.Size-1 do begin
      inc(Counter);
      mFooter.Read(c, 1);
      line := line + '0x'+inttohex(c, 2)+', ';
      if Counter = 8 then begin
        Add(line);
        line := '    ';
        Counter := 0;
      end;
    end;
    if line <> '    ' then
      Add(line);
  end;
  NotepadForm.ShowModal;
end;

procedure TMainForm.ExportBackgrounds(Sender: TObject);
var
  Location: integer;
  Offset: integer;
  Cnt: integer;
  Block: integer;
  Row, Col: byte;
  BlockAddr: integer;
  BlockIdx: integer;
  line: String;
begin
  with NotepadForm.Memo.Lines do begin
    Clear;
    for Location := 0 to LOCATIONS_COUNT - 1 do begin
      Offset := mBackgrounds[Location];
      Cnt := mSegment[Offset];
      Add('const Background_t Background'+inttohex(Location, 2)+'={0x'+
        inttohex(Cnt, 2)+',');
      for Block := 0 to Cnt-1 do begin
        Row := mSegment[Offset+Block*4+1];
        Col := mSegment[Offset+Block*4+2];
        if Block = 0 then
          line := '    {'
        else
          line := '    ';
        line := line + '{0x'+
          inttohex(Row, 2)+
          ', 0x'+
          inttohex(Col, 2)+
          ', ';
        BlockAddr := (mSegment[Offset+Block*4+4] shl 8) or mSegment[Offset+Block*4+3];
        BlockIdx := mBlocks.IndexOf(pointer(BLOCKS_TABLE + BlockAddr));
        if  -1 <> BlockIdx then
          line := line + 'Block0x'+inttohex(BlockIdx, 2)
        else
          line := line + 'unknown'+inttohex(BLOCKS_TABLE + BlockAddr, 4);
        line := line+'},';
        if Block >= Cnt-1 then
          line := copy(line, 0, length(line)-1)+'}};';
        Add(line);
      end;
    end;
    Add('');
    Add('const Background_t* WorldBackgrounds[]={');
    for Location := 0 to LOCATIONS_COUNT - 1 do begin
      line := '    &Background'+inttohex(Location, 2)+',';
      if Location >= LOCATIONS_COUNT-1 then
        line := copy(line, 0, length(line)-1)+'};';
      Add(line);
    end;

  end;
  NotepadForm.ShowModal;
end;

procedure TMainForm.ExportAnimations(Sender: TObject);
var
  SpriteData: TStrings;
  SpriteDefs: TStrings;
  Animations: TStrings;
  Outlines: TStrings;
  Animation: TList;
  Sprite: TBitmap;
  A, S: integer;
  X, Y: integer;
  line: String;
  AnimNo, SpriteNo: String;
  Color: integer;
  POutline: integer;
  Outline: integer;
begin
  SpriteData := TStringList.Create;
  SpriteDefs := TStringList.Create;
  Animations := TStringList.Create;
  Outlines := TStringList.Create;

  // Fucking hardcode...
  POutline := OUTLINES_LIST;
  Outlines.Add('const unsigned int Outlines[] = {');
  for A := 0 to ANIMATIONS_COUNT-4 do begin
    Outline := mSegment[POutline] or (mSegment[pOutline + 1] shl 8);
    Outlines.Add('    0x' + IntToHex(Outline, 4) + ',' + '    //0x' + inttohex(A, 2));
    inc(POutline, 2);
  end;
  Outlines.Add('};');
  Outlines.Add('');

  for A := 0 to ANIMATIONS_COUNT-1 do begin
    AnimNo := inttohex(mAnimIndex[A], 2);
    Animations.Add('const void *Animation'+AnimNo+'[] = {');
    AnimNo := inttohex(A, 2);
    AnimNo := inttohex(A, 2);
    Animation := mAnimations[A];
    SpriteData.Add('/********** Animation 0x'+inttohex(A, 2)+' **********/');
    for s := 0 to Animation.Count - 1 do begin
      SpriteNo := inttohex(S, 2);
      line := '    &Sprite'+
        AnimNo+
        '_'+
        SpriteNo+
        ',';
      if s = Animation.Count - 1 then
        line := LeftStr(line, length(line)-1)+'};';
      Animations.Add(line);
      Sprite := Animation[s];
      line := 'const Sprite_t Sprite'+
        AnimNo+
        '_'+
        SpriteNo+
        ' = {'+
        inttostr(Sprite.Width)+
        ', '+
        inttostr(Sprite.Height)+
        ', (void *)&Data'+
        AnimNo+
        '_'+
        SpriteNo+
        '};';
      SpriteDefs.Add(line);
      SpriteData.Add(
        'const unsigned char Data'+
        inttohex(A, 2)+
        '_'+
        inttohex(s, 2)+
        '[] = {');
      for Y := 0 to Sprite.Height - 1 do begin
        line := '    ';
        for X := 0 to Sprite.Width - 1 do begin
          Color := Sprite.Canvas.Pixels[X, Y];
          Color := TranslateColor(Color);
          line := line+'0x'+inttohex(Color, 2)+', ';
        end;
        if Y = Sprite.Height-1 then
          line := LeftStr(line, length(line)-2)+'};';
        SpriteData.Add(line);
      end;
    end;
  end;

  NotepadForm.Memo.Lines.Clear;
  NotepadForm.Memo.Lines.AddStrings(Outlines);
  NotepadForm.Memo.Lines.AddStrings(SpriteData);
  NotepadForm.Memo.Lines.AddStrings(SpriteDefs);
  NotepadForm.Memo.Lines.AddStrings(Animations);

  SpriteData.Free;
  SpriteDefs.Free;
  Animations.Free;

  NotepadForm.ShowModal;
end;

function TMainForm.TranslateColor(Source: integer): integer;
var
  R, G, B: integer;
begin
  R := (Source shr 0) and $FF;
  G := (Source shr 8) and $FF;
  B := (Source shr 16) and $FF;

  Result := (R and $E0) or ((G shr 3) and $1C) or (B shr 6);
end;

procedure TMainForm.ExportLocations(Sender: TObject);
var
  i, j: integer;
  offset: integer;
  LocPtr: WORD;
  Location: PLocationInfo;
  Item: PLocationItem;
  Locations: TStringList;
  Items: TStringList;
  ItemCollections: TStringList;
  Line: String;
  X, Y: Word;
begin
  Locations := TStringList.Create;
  Items := TStringList.Create;
  ItemCollections := TStringList.Create;
  for i := 0 to LOCATIONS_COUNT-1 do begin
    offset := LOCATIONS_LIST+i*2;
    LocPtr := (mSegment[offset]+mSegment[offset+1] shl 8) - $100;
    Location := @(mSegment[LocPtr]);
    Locations.Add('const LocationInfo_t Location'+
      inttohex(i, 2)+' = {0x'+
      inttohex(Location.UpperLeftExit, 2)+', 0x'+
      inttohex(Location.LowerLeftExit, 2)+', 0x'+
      inttohex(Location.UpperRightExit, 2)+', 0x'+
      inttohex(Location.LowerRightExit, 2)+', 0x'+
      inttohex(Location.ItemsCount, 2)+', &Items'+
      inttohex(i, 2)+'};');
    ItemCollections.Add('const void *Items'+
      inttohex(i, 2)+'[] = {');
    for j := 0 to Location.ItemsCount - 1 do begin
      Item := @(mSegment[LocPtr+sizeof(TLocationInfo)+sizeof(TLocationItem)*j]);
      X := Item.Col shl 8 or Item.X;
      Y:= Item.Row shl 8 or Item.Y;
      Items.Add('const LocationItem_t LocationItem'+
        inttohex(i,2)+'_'+inttohex(j, 2)+' = {0x'+
        inttohex(Item.CharFlags, 2)+', 0x'+
        inttohex(Item.Animation, 2)+', 0x'+
        inttohex(Item.Frame, 2)+', 0x'+
        inttohex(Y, 4)+', 0x'+
        inttohex(X, 4)+'};');
      ItemCollections.Add('    &LocationItem'+
        inttohex(i,2)+'_'+inttohex(j, 2)+',');
    end;
    ItemCollections.Add('0x00};');
  end;
  NotepadForm.Memo.Lines.Clear;
  NotepadForm.Memo.Lines.AddStrings(Items);
  NotepadForm.Memo.Lines.Add('/****************************************/');
  NotepadForm.Memo.Lines.AddStrings(ItemCollections);
  NotepadForm.Memo.Lines.Add('/****************************************/');
  NotepadForm.Memo.Lines.AddStrings(Locations);
  NotepadForm.Memo.Lines.Add('/****************************************/');
  NotepadFOrm.Memo.Lines.Add('const void *Locations[] = {');
  for i := 0 to LOCATIONS_COUNT-1 do
    NotepadForm.Memo.Lines.Add('    &Location'+inttohex(i, 2)+',');
  NotepadFOrm.Memo.Lines.Add('0x00};');
  Locations.Free;
  Items.Free;
  ItemCollections.Free;
  NotepadFOrm.ShowModal;
end;

end.
