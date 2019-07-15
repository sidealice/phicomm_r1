.class Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$SongAddressRequesterFactory;
.super Ljava/lang/Object;
.source "MhdMusicApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongAddressRequesterFactory"
.end annotation


# static fields
.field private static final ourInstance:Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;-><init>(Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$1;)V

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$SongAddressRequesterFactory;->ourInstance:Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$SongAddressRequesterFactory;->ourInstance:Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;

    return-object v0
.end method
