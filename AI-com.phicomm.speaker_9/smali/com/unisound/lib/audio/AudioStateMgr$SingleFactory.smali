.class final Lcom/unisound/lib/audio/AudioStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "AudioStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/audio/AudioStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/audio/AudioStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/unisound/lib/audio/AudioStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/audio/AudioStateMgr;-><init>(Lcom/unisound/lib/audio/AudioStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/audio/AudioStateMgr$SingleFactory;->instant:Lcom/unisound/lib/audio/AudioStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
