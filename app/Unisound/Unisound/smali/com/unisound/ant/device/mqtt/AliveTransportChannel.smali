.class public Lcom/unisound/ant/device/mqtt/AliveTransportChannel;
.super Ljava/lang/Object;
.source "AliveTransportChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChannel()Lcom/unisound/ant/device/mqtt/BaseTransportChannel;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;->channel:Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    return-object v0
.end method

.method public static getChannelInstance()Lcom/unisound/ant/device/mqtt/AliveTransportChannel;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;->instance:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    return-object v0
.end method


# virtual methods
.method public closeChannel()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->getChannel()Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;->closeChannel()V

    .line 39
    return-void
.end method

.method public openChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelParams"    # Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
    .param p3, "phicommMQTTStatausChange"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->getChannel()Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;->createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    .line 27
    return-void
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->getChannel()Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;->sendData(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public setChannelListener(Lcom/unisound/ant/device/mqtt/ChannelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/ant/device/mqtt/ChannelListener;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;->getChannel()Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;->setChannelListener(Lcom/unisound/ant/device/mqtt/ChannelListener;)V

    .line 31
    return-void
.end method
