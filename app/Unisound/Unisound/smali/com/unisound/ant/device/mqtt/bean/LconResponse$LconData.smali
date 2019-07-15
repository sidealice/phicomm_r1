.class public Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;
.super Ljava/lang/Object;
.source "LconResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/bean/LconResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LconData"
.end annotation


# instance fields
.field connAccessId:Ljava/lang/String;

.field queryIP:Ljava/lang/String;

.field queryPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnAccessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->connAccessId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->queryIP:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->queryPort:Ljava/lang/String;

    return-object v0
.end method

.method public setConnAccessId(Ljava/lang/String;)V
    .locals 0
    .param p1, "connAccessId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->connAccessId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setQueryIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryIP"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->queryIP:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setQueryPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryPort"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconResponse$LconData;->queryPort:Ljava/lang/String;

    .line 55
    return-void
.end method
