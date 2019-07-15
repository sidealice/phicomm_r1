.class public Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;,
        Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field controlInfo:Lcom/google/gson/k;

.field detailInfo:Ljava/lang/String;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlInfo()Lcom/google/gson/k;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->controlInfo:Lcom/google/gson/k;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getControlInfo()Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/d;->a(Lcom/google/gson/i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntity(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getControlInfo()Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/d;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntityListInfo(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getControlInfo()Lcom/google/gson/k;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Lcom/google/gson/k;->b(Ljava/lang/String;)Lcom/google/gson/f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/d;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->detailInfo:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->result:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->version:Ljava/lang/String;

    return-void
.end method
