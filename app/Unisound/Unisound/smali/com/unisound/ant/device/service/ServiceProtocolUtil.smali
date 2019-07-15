.class public final Lcom/unisound/ant/device/service/ServiceProtocolUtil;
.super Ljava/lang/Object;
.source "ServiceProtocolUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getReqContent(Lcom/unisound/ant/device/service/MessageHeader;Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest;
    .locals 1
    .param p0, "requestHeader"    # Lcom/unisound/ant/device/service/MessageHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/ant/device/service/MessageHeader;",
            "TE;)",
            "Lcom/unisound/ant/device/service/BaseRequest",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/unisound/ant/device/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/ant/device/service/MessageHeader;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->build()Lcom/unisound/ant/device/service/BaseRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getReqContent(Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/unisound/ant/device/service/BaseRequest",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/unisound/ant/device/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;-><init>()V

    invoke-static {}, Lcom/unisound/ant/device/service/CommonHeaderUtils;->buildUpdateReqHeader()Lcom/unisound/ant/device/service/MessageHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/ant/device/service/MessageHeader;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->build()Lcom/unisound/ant/device/service/BaseRequest;

    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReqContent(Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest;
    .locals 2
    .param p0, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/ant/device/service/BaseRequest",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/unisound/ant/device/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/unisound/ant/device/service/CommonHeaderUtils;->buildUpdateReqHeader(Ljava/lang/String;)Lcom/unisound/ant/device/service/MessageHeader;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/ant/device/service/MessageHeader;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/ant/device/service/BaseRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/service/BaseRequest$Builder;->build()Lcom/unisound/ant/device/service/BaseRequest;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/ant/device/service/CloudResponse;
    .locals 1
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/unisound/ant/device/service/CloudResponse",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/service/CloudResponse;

    return-object v0
.end method
