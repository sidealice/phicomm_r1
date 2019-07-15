.class public Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;
.super Ljava/lang/Object;
.source "MusicHttpUtils.java"


# static fields
.field public static final BUSINESS_TYPE_MUSIC:Ljava/lang/String; = "music"

.field public static final CMD_UPLOAD_MUSIC_LIST:Ljava/lang/String; = "uploadMusicList"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final RESPONSE_STATUS_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static uploadMusicList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "udid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    new-instance v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->executeInSingle(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
