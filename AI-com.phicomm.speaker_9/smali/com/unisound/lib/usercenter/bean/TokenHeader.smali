.class public Lcom/unisound/lib/usercenter/bean/TokenHeader;
.super Lcom/unisound/lib/usercenter/bean/BaseHeader;
.source "TokenHeader.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private flushToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/unisound/lib/usercenter/bean/BaseHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic formateParam()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->formateParam()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public formateParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->params:Ljava/util/Map;

    return-object v0
.end method

.method public generateSignature()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->buildSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->params:Ljava/util/Map;

    const-string v1, "accessToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setFlushToken(Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->params:Ljava/util/Map;

    const-string v1, "flushToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/TokenHeader;->flushToken:Ljava/lang/String;

    return-void
.end method
