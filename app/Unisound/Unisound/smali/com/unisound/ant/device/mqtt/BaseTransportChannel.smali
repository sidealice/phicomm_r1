.class public abstract Lcom/unisound/ant/device/mqtt/BaseTransportChannel;
.super Ljava/lang/Object;
.source "BaseTransportChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

.field protected mChannelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/unisound/ant/device/mqtt/BaseTransportChannel;, "Lcom/unisound/ant/device/mqtt/BaseTransportChannel<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract closeChannel()V
.end method

.method public abstract createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
.end method

.method public abstract createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
.end method

.method public abstract receivedData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract sendData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setChannelListener(Lcom/unisound/ant/device/mqtt/ChannelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unisound/ant/device/mqtt/ChannelListener;

    .prologue
    .line 26
    .local p0, "this":Lcom/unisound/ant/device/mqtt/BaseTransportChannel;, "Lcom/unisound/ant/device/mqtt/BaseTransportChannel<TT;TR;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    .line 27
    return-void
.end method
