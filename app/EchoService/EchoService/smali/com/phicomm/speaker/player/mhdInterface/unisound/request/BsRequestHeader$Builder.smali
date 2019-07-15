.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;
.super Ljava/lang/Object;
.source "BsRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;
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
.field private businessType:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public build()Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;
    .locals 5

    .prologue
    .line 77
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->check()V

    .line 78
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->command:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->data:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$1;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "businessType may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->command:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 54
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setCommand(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 59
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->command:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder<TE;>;"
    .local p1, "data":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->data:Ljava/lang/Object;

    .line 65
    return-object p0
.end method
