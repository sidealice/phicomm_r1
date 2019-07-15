.class public Lcom/unisound/lib/device/DeviceOnlineParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "DeviceOnlineParam.java"


# instance fields
.field private appkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unisound/lib/device/DeviceOnlineParam;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/device/DeviceOnlineParam;->appkey:Ljava/lang/String;

    return-void
.end method
