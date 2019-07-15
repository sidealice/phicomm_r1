.class public Lcom/unisound/ant/device/bean/RemoteAudioInfo;
.super Ljava/lang/Object;
.source "RemoteAudioInfo.java"


# instance fields
.field private audioinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field private voiceTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->audioinfo:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->voiceTip:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioinfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "audioinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->audioinfo:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setVoiceTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceTip"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->voiceTip:Ljava/lang/String;

    .line 20
    return-void
.end method
