.class public Lcom/unisound/ant/device/mqtt/bean/LconResponse;
.super Ljava/lang/Object;
.source "LconResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;
    }
.end annotation


# instance fields
.field data:Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;

.field detailInfo:Ljava/lang/String;

.field statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->data:Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;)V
    .locals 0
    .param p1, "data"    # Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->data:Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;

    .line 34
    return-void
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailInfo"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->detailInfo:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse;->statusCode:Ljava/lang/String;

    .line 18
    return-void
.end method
