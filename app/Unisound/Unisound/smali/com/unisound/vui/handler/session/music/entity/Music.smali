.class public Lcom/unisound/vui/handler/session/music/entity/Music;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unisound/vui/handler/session/music/entity/Music;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lcom/unisound/vui/handler/session/music/entity/Music;

.field private static final TAG:Ljava/lang/String; = "Music"


# instance fields
.field private album:Lcom/unisound/vui/handler/session/music/entity/Album;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "album"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album"
    .end annotation
.end field

.field private announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "announcer"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private artist:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "artist"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field private bufferPercent:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bufferPercent"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bufferPercent"
    .end annotation
.end field

.field private curPostion:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "curPostion"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "curPostion"
    .end annotation
.end field

.field private dataSource:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dataSource"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataSource"
    .end annotation
.end field

.field private errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field private hdImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hdImgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hdImgUrl"
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "imgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgUrl"
    .end annotation
.end field

.field private local:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "local"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local"
    .end annotation
.end field

.field private lyric:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lyric"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lyric"
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mediaId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaId"
    .end annotation
.end field

.field private musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicType"
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "size"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Music;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Music;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/entity/Music;->NONE:Lcom/unisound/vui/handler/session/music/entity/Music;

    .line 194
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Music$1;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Music$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/entity/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/handler/session/music/entity/Album;Lcom/unisound/vui/handler/session/music/entity/Announcer;Ljava/lang/String;JJIZJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "album"    # Lcom/unisound/vui/handler/session/music/entity/Album;
    .param p5, "announcer"    # Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "size"    # J
    .param p9, "time"    # J
    .param p11, "errorCode"    # I
    .param p12, "local"    # Z
    .param p13, "curPostion"    # J
    .param p15, "bufferPercent"    # I
    .param p16, "imgUrl"    # Ljava/lang/String;
    .param p17, "hdImgUrl"    # Ljava/lang/String;
    .param p18, "lyric"    # Ljava/lang/String;
    .param p19, "dataSource"    # Ljava/lang/String;
    .param p20, "musicType"    # Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->mediaId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    .line 43
    iput-object p5, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;

    .line 44
    iput-object p6, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    .line 45
    iput-wide p7, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    .line 46
    iput-wide p9, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    .line 47
    iput p11, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    .line 48
    iput-boolean p12, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    .line 49
    iput-wide p13, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    .line 50
    move/from16 v0, p15

    iput v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    .line 51
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/entity/Music;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/entity/Music;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Music;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->mediaId:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    .line 234
    sget-object v1, Lcom/unisound/vui/handler/session/music/entity/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/entity/Album;

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    .line 235
    sget-object v1, Lcom/unisound/vui/handler/session/music/entity/Announcer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/entity/Announcer;

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    .line 240
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 241
    .local v0, "temp":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 242
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;->values()[Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    .line 250
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/unisound/vui/handler/session/music/entity/Album;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    return-object v0
.end method

.method public getAnnouncer()Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    return v0
.end method

.method public getCurPostion()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicType()Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    return v0
.end method

.method public setAlbum(Lcom/unisound/vui/handler/session/music/entity/Album;)V
    .locals 0
    .param p1, "album"    # Lcom/unisound/vui/handler/session/music/entity/Album;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    .line 88
    return-void
.end method

.method public setAnnouncer(Lcom/unisound/vui/handler/session/music/entity/Announcer;)V
    .locals 0
    .param p1, "announcer"    # Lcom/unisound/vui/handler/session/music/entity/Announcer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;

    .line 96
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setBufferPercent(I)V
    .locals 0
    .param p1, "bufferPercent"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    .line 152
    return-void
.end method

.method public setCurPostion(J)V
    .locals 1
    .param p1, "curPostion"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    .line 144
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    .line 128
    return-void
.end method

.method public setHdImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdImgUrl"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLocal(Z)V
    .locals 0
    .param p1, "local"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    .line 136
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyric"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->mediaId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMusicType(Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;)V
    .locals 0
    .param p1, "musicType"    # Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    .line 192
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    .line 112
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Music [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", artist="

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", album="

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", albumId="

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    .line 261
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/entity/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    .line 265
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    .line 267
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local="

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curPostion="

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    .line 273
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bufferPercent="

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgUrl="

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hdImgUrl="

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lyric="

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSource="

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->album:Lcom/unisound/vui/handler/session/music/entity/Album;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/entity/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->announcer:Lcom/unisound/vui/handler/session/music/entity/Announcer;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/entity/Announcer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->local:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 221
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->curPostion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->bufferPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->hdImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->lyric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->dataSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Music;->musicType:Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/entity/Music$MusicType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return-void
.end method
