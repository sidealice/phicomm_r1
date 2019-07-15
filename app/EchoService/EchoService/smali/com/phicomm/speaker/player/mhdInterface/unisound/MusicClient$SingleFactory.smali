.class final Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$SingleFactory;
.super Ljava/lang/Object;
.source "MusicClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;-><init>(Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;)V

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$SingleFactory;->instant:Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method
