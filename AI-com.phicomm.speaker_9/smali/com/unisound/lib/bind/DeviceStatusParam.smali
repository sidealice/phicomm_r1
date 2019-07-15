.class public Lcom/unisound/lib/bind/DeviceStatusParam;
.super Ljava/lang/Object;
.source "DeviceStatusParam.java"


# instance fields
.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unisound/lib/bind/DeviceStatusParam;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/unisound/lib/bind/DeviceStatusParam;->udid:Ljava/lang/String;

    return-void
.end method
