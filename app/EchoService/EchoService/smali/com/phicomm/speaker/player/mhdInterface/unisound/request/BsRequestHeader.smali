.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;
.super Ljava/lang/Object;
.source "BsRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$1;,
        Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;
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
.field private businessType:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tcl:Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "businessType"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    .local p3, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "2.0.0"

    iput-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->version:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->businessType:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->command:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->data:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->getEffective()Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->tcl:Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$1;

    .prologue
    .line 10
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getEffective()Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->data:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<TT;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;->version:Ljava/lang/String;

    .line 31
    return-void
.end method
