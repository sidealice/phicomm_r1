.class public final enum Lcom/phicomm/speaker/player/model/PlayState;
.super Ljava/lang/Enum;
.source "PlayState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/player/model/PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_ERROR:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_PLAYBACK_COMPLETED:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

.field public static final enum STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;


# instance fields
.field private _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_ERROR"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_ERROR:Lcom/phicomm/speaker/player/model/PlayState;

    .line 9
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    .line 10
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_PREPARING"

    invoke-direct {v0, v1, v6, v5}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    .line 11
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_PREPARED"

    invoke-direct {v0, v1, v7, v6}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

    .line 12
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_PLAYING"

    invoke-direct {v0, v1, v8, v7}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    .line 13
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayState;

    const-string v1, "STATE_PLAYBACK_COMPLETED"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/model/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYBACK_COMPLETED:Lcom/phicomm/speaker/player/model/PlayState;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/phicomm/speaker/player/model/PlayState;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_ERROR:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYBACK_COMPLETED:Lcom/phicomm/speaker/player/model/PlayState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayState;->$VALUES:[Lcom/phicomm/speaker/player/model/PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/phicomm/speaker/player/model/PlayState;->_id:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/phicomm/speaker/player/model/PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->$VALUES:[Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/player/model/PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method
