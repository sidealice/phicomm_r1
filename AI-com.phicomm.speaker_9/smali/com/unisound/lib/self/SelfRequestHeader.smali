.class public Lcom/unisound/lib/self/SelfRequestHeader;
.super Ljava/lang/Object;
.source "SelfRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/self/SelfRequestHeader$Builder;
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

.field private promise:Lcom/unisound/lib/self/Promise;

.field private protocolType:Ljava/lang/String;

.field private tcl:Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

.field private udid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3.0.0"

    .line 18
    iput-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader;->version:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/unisound/lib/self/SelfRequestHeader;->businessType:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/unisound/lib/self/SelfRequestHeader;->command:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/unisound/lib/self/SelfRequestHeader;->protocolType:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/unisound/lib/self/SelfRequestHeader;->data:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->udid:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/unisound/lib/self/SelfRequestHeader;->getPromise()Lcom/unisound/lib/self/Promise;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->promise:Lcom/unisound/lib/self/Promise;

    .line 44
    invoke-direct {p0}, Lcom/unisound/lib/self/SelfRequestHeader;->getEffective()Lcom/unisound/lib/self/SelfEffectiveToken;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->tcl:Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;

    return-void
.end method

.method private getEffective()Lcom/unisound/lib/self/SelfEffectiveToken;
    .locals 4

    .line 84
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/unisound/lib/self/SelfEffectiveToken;

    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0.0"

    invoke-direct {v1, v0, v2, v3}, Lcom/unisound/lib/self/SelfEffectiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPromise()Lcom/unisound/lib/self/Promise;
    .locals 2

    .line 90
    new-instance v0, Lcom/unisound/lib/self/Promise;

    iget-object v1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->udid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/unisound/lib/self/Promise;-><init>(Ljava/lang/String;)V

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

    .line 71
    iget-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->data:Ljava/lang/Object;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader;->version:Ljava/lang/String;

    return-void
.end method
