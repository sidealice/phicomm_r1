.class public Lcom/phicomm/speaker/bean/MqttMsg;
.super Ljava/lang/Object;
.source "MqttMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24e1947a6cf20158L


# instance fields
.field private mqttBody:Ljava/lang/String;

.field private qos:I

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/phicomm/speaker/bean/MqttMsg;->topic:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/phicomm/speaker/bean/MqttMsg;->mqttBody:Ljava/lang/String;

    return-void
.end method
