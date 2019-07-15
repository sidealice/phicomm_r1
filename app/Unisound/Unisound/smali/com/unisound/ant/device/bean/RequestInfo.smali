.class public Lcom/unisound/ant/device/bean/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;,
        Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    }
.end annotation


# instance fields
.field private businessType:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private data:Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

.field private tcl:Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    .param p4, "tcl"    # Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->businessType:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/unisound/ant/device/bean/RequestInfo;->command:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/unisound/ant/device/bean/RequestInfo;->data:Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    .line 36
    iput-object p4, p0, Lcom/unisound/ant/device/bean/RequestInfo;->tcl:Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    .line 37
    iput-object p5, p0, Lcom/unisound/ant/device/bean/RequestInfo;->version:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo;->data:Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    return-object v0
.end method

.method public getTcl()Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo;->tcl:Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->businessType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->command:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setData(Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;)V
    .locals 0
    .param p1, "data"    # Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->data:Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    .line 62
    return-void
.end method

.method public setTcl(Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;)V
    .locals 0
    .param p1, "tcl"    # Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->tcl:Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    .line 70
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo;->version:Ljava/lang/String;

    .line 78
    return-void
.end method
