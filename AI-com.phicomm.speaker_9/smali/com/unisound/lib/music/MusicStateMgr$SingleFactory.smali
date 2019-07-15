.class final Lcom/unisound/lib/music/MusicStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "MusicStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/music/MusicStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/music/MusicStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/unisound/lib/music/MusicStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/music/MusicStateMgr;-><init>(Lcom/unisound/lib/music/MusicStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/music/MusicStateMgr$SingleFactory;->instant:Lcom/unisound/lib/music/MusicStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
