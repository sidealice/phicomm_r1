.class Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;
.super Ljava/lang/Object;
.source "AliveTransportChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/AliveTransportChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelFactory"
.end annotation


# static fields
.field public static channel:Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

.field public static instance:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/AliveTransportChannel;-><init>()V

    sput-object v0, Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;->instance:Lcom/unisound/ant/device/mqtt/AliveTransportChannel;

    .line 13
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;-><init>()V

    sput-object v0, Lcom/unisound/ant/device/mqtt/AliveTransportChannel$ChannelFactory;->channel:Lcom/unisound/ant/device/mqtt/BaseTransportChannel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
