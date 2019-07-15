.class public Lcom/unisound/ant/device/mqtt/bean/MessageParam;
.super Ljava/lang/Object;
.source "MessageParam.java"


# instance fields
.field private pageNo:I

.field private pageSize:I

.field private signature:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unisound/ant/device/mqtt/MsgUtil;->getCurrentUnixTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formateParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "urlParams":Ljava/lang/StringBuffer;
    const-string v1, "&udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->udid:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&pageNo="

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageNo:I

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&pageSize="

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageSize:I

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&timestamp="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->timestamp:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&timestamp="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->timestamp:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&signature="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageNo()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageSize:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getPageNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getPageSize()I

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MsgUtil;->buildSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->signature:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->signature:Ljava/lang/String;

    return-object v1
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setPageNo(I)V
    .locals 0
    .param p1, "pageNo"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageNo:I

    .line 33
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->pageSize:I

    .line 41
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/MessageParam;->udid:Ljava/lang/String;

    .line 25
    return-void
.end method
