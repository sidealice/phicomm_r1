.class public Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/service/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private header:Lcom/unisound/lib/msgcenter/service/MessageHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/lib/msgcenter/service/BaseRequest;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->header:Lcom/unisound/lib/msgcenter/service/MessageHeader;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/service/BaseRequest;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->header:Lcom/unisound/lib/msgcenter/service/MessageHeader;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->data:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/unisound/lib/msgcenter/service/BaseRequest;-><init>(Lcom/unisound/lib/msgcenter/service/MessageHeader;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setRequestHeader(Lcom/unisound/lib/msgcenter/service/MessageHeader;)Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;->header:Lcom/unisound/lib/msgcenter/service/MessageHeader;

    return-object p0
.end method
