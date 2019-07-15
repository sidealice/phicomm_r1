.class public Lcom/easydlna/dlna/dlnaclient/PlayingState;
.super Ljava/lang/Object;
.source "PlayingState.java"


# static fields
.field private static ONE_HOUR:I = 0x0

.field private static ONE_MINUTE:I = 0x0

.field private static ONE_SECOND:I = 0x0

.field public static final STATE_NO_MEDIA:Ljava/lang/String; = "NO_MEDIA_PRESENT"

.field public static final STATE_PAUSED:Ljava/lang/String; = "PAUSED_PLAYBACK"

.field public static final STATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final STATE_STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STATUS_ERROR:Ljava/lang/String; = "ERROR_OCCURRED"

.field public static final STATUS_OK:Ljava/lang/String; = "OK"


# instance fields
.field public avtUri:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3e8

    sput v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_SECOND:I

    .line 14
    const/16 v0, 0xe10

    sput v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_HOUR:I

    .line 15
    const/16 v0, 0x3c

    sput v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_MINUTE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->avtUri:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->status:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->duration:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static formatTime(I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # I

    .prologue
    .line 18
    sget v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_SECOND:I

    div-int/2addr p0, v3

    .line 19
    sget v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_HOUR:I

    div-int v0, p0, v3

    .line 20
    .local v0, "hour":I
    sget v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_HOUR:I

    mul-int/2addr v3, v0

    sub-int v3, p0, v3

    sget v4, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_MINUTE:I

    div-int v1, v3, v4

    .line 21
    .local v1, "minute":I
    if-gez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 24
    :cond_0
    sget v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_MINUTE:I

    mul-int/2addr v3, v1

    sub-int v3, p0, v3

    sget v4, Lcom/easydlna/dlna/dlnaclient/PlayingState;->ONE_HOUR:I

    mul-int/2addr v4, v0

    sub-int v2, v3, v4

    .line 25
    .local v2, "seconds":I
    if-gez v2, :cond_1

    .line 26
    const/4 v2, 0x0

    .line 28
    :cond_1
    const-string v3, "%2d:%2d:%2d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->avtUri:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->status:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->duration:Ljava/lang/String;

    .line 44
    return-void
.end method
