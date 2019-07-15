.class public Lcom/unisound/lib/self/SelfRequestProtocolFactory;
.super Ljava/lang/Object;
.source "SelfRequestProtocolFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/self/SelfRequestHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/lib/self/SelfRequestHeader<",
            "TE;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->setBusinessType(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->setCommand(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p4}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->setData(Ljava/lang/Object;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p3}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->setProtocolType(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->setUdid(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->build()Lcom/unisound/lib/self/SelfRequestHeader;

    move-result-object p0

    return-object p0
.end method
