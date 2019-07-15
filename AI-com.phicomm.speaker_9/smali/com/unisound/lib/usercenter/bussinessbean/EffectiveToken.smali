.class public Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;
.super Ljava/lang/Object;
.source "EffectiveToken.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private subSysId:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->clientId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->token:Ljava/lang/String;

    const/16 p1, 0x9

    .line 22
    iput p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->subSysId:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;->token:Ljava/lang/String;

    return-void
.end method
