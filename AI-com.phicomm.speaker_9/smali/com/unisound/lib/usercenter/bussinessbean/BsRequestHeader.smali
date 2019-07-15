.class public Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;
.super Ljava/lang/Object;
.source "BsRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;
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

.field private tcl:Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0.0"

    .line 12
    iput-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->version:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->businessType:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->command:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->data:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->getEffective()Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->tcl:Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getEffective()Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;
    .locals 3

    .line 62
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->data:Ljava/lang/Object;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;->version:Ljava/lang/String;

    return-void
.end method
