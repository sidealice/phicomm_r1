.class public Lcom/unisound/lib/usercenter/RequestProtocolFactory;
.super Ljava/lang/Object;
.source "RequestProtocolFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader<",
            "TE;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->setBusinessType(Ljava/lang/String;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->setCommand(Ljava/lang/String;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->build()Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p0

    return-object p0
.end method
