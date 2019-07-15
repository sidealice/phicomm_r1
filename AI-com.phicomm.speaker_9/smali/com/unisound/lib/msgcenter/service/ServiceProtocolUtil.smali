.class public final Lcom/unisound/lib/msgcenter/service/ServiceProtocolUtil;
.super Ljava/lang/Object;
.source "ServiceProtocolUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReqContent(Lcom/unisound/lib/msgcenter/service/MessageHeader;Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/lib/msgcenter/service/MessageHeader;",
            "TE;)",
            "Lcom/unisound/lib/msgcenter/service/BaseRequest<",
            "TE;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/lib/msgcenter/service/MessageHeader;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->build()Lcom/unisound/lib/msgcenter/service/BaseRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getReqContent(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/unisound/lib/msgcenter/service/BaseRequest<",
            "TE;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;-><init>()V

    invoke-static {}, Lcom/unisound/lib/msgcenter/service/CommonHeaderUtils;->buildUpdateReqHeader()Lcom/unisound/lib/msgcenter/service/MessageHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/lib/msgcenter/service/MessageHeader;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->build()Lcom/unisound/lib/msgcenter/service/BaseRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getReqContent(Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/lib/msgcenter/service/BaseRequest<",
            "TE;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;-><init>()V

    .line 49
    invoke-static {p0}, Lcom/unisound/lib/msgcenter/service/CommonHeaderUtils;->buildUpdateReqHeader(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/service/MessageHeader;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setRequestHeader(Lcom/unisound/lib/msgcenter/service/MessageHeader;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0, p1}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->build()Lcom/unisound/lib/msgcenter/service/BaseRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/lib/msgcenter/service/CloudResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/unisound/lib/msgcenter/service/CloudResponse<",
            "TE;>;"
        }
    .end annotation

    .line 61
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;

    return-object p0
.end method
