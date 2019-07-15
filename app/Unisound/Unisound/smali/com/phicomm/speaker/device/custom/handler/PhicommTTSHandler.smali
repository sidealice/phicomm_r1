.class public Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;
.super Lcom/unisound/vui/engine/ANTDuplexHandler;
.source "PhicommTTSHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTDuplexHandler;-><init>()V

    return-void
.end method

.method private isPhicommTTSEventFormat(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 25
    instance-of v0, p1, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    if-eqz v0, :cond_0

    const-string v0, "playTTS"

    check-cast p1, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    .line 26
    .end local p1    # "msg":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;->isPhicommTTSEventFormat(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    check-cast p2, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->getTtsContent()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "phicommTTSContent":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;->playTTS(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 22
    .end local v0    # "phicommTTSContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 20
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTDuplexHandler;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    goto :goto_0
.end method
