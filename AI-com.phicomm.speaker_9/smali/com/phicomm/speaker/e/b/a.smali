.class public Lcom/phicomm/speaker/e/b/a;
.super Ljava/lang/Object;
.source "AudioCollectEvent.java"


# instance fields
.field private a:Lcom/unisound/lib/audio/bean/AudioInfo;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/phicomm/speaker/e/b/a;->a:Lcom/unisound/lib/audio/bean/AudioInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/lib/audio/bean/AudioInfo;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/phicomm/speaker/e/b/a;->a:Lcom/unisound/lib/audio/bean/AudioInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCollectEvent{mAudioInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/e/b/a;->a:Lcom/unisound/lib/audio/bean/AudioInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
