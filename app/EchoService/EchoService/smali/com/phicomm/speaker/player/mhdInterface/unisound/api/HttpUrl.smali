.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# static fields
.field private static BASE_URL:Ljava/lang/String;

.field public static URL_MUSIC_BY_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "http://211.102.192.39:19999/"

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/getActualMusicById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->URL_MUSIC_BY_ID:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/getActualMusicById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->URL_MUSIC_BY_ID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static setNetEnvironment(Z)V
    .locals 2
    .param p0, "isOuter"    # Z

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    const-string v0, "http://211.102.192.39:19999/"

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    .line 21
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/getActualMusicById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->URL_MUSIC_BY_ID:Ljava/lang/String;

    .line 22
    return-void

    .line 18
    :cond_0
    const-string v0, "http://aios-home.hivoice.cn:19999/"

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->BASE_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUrlMusicById(Ljava/lang/String;)V
    .locals 2
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/getActualMusicById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->URL_MUSIC_BY_ID:Ljava/lang/String;

    .line 30
    return-void
.end method
