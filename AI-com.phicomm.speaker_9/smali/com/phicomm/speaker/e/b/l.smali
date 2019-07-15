.class public Lcom/phicomm/speaker/e/b/l;
.super Ljava/lang/Object;
.source "PlayingInfoStickyEvent.java"


# instance fields
.field private a:Z

.field private b:Lcom/unisound/lib/audio/bean/AudioInfo;

.field private c:Lcom/unisound/lib/msgcenter/bean/MusicInfo;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/phicomm/speaker/e/b/l;->a:Z

    .line 20
    iput-object p1, p0, Lcom/phicomm/speaker/e/b/l;->b:Lcom/unisound/lib/audio/bean/AudioInfo;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/phicomm/speaker/e/b/l;->a:Z

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/e/b/l;->c:Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/phicomm/speaker/e/b/l;->a:Z

    return v0
.end method

.method public b()Lcom/unisound/lib/audio/bean/AudioInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/e/b/l;->b:Lcom/unisound/lib/audio/bean/AudioInfo;

    return-object v0
.end method

.method public c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/e/b/l;->c:Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    return-object v0
.end method
