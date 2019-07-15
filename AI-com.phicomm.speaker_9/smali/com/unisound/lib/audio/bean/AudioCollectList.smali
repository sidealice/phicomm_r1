.class public Lcom/unisound/lib/audio/bean/AudioCollectList;
.super Ljava/lang/Object;
.source "AudioCollectList.java"


# instance fields
.field private collectAudio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectAudio()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCollectList;->collectAudio:Ljava/util/List;

    return-object v0
.end method

.method public setCollectAudio(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCollectList;->collectAudio:Ljava/util/List;

    return-void
.end method
