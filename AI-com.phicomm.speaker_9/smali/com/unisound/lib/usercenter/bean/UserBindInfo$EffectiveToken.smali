.class public Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;
.super Ljava/lang/Object;
.source "UserBindInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/usercenter/bean/UserBindInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectiveToken"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private subSysId:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 115
    iput v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->subSysId:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSysId()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->subSysId:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setSubSysId(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->subSysId:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->token:Ljava/lang/String;

    return-void
.end method
