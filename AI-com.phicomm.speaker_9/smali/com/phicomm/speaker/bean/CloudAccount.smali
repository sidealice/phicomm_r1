.class public Lcom/phicomm/speaker/bean/CloudAccount;
.super Lcom/phicomm/speaker/bean/BaseResponse;
.source "CloudAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4fb8bd0e7a4e75c7L


# instance fields
.field private access_token:Ljava/lang/String;

.field private access_token_expire:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private refresh_token_expire:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/phicomm/speaker/bean/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CloudAccount;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAccess_token_expire()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CloudAccount;->access_token_expire:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CloudAccount;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token_expire()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CloudAccount;->refresh_token_expire:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CloudAccount;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CloudAccount;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAccess_token_expire(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CloudAccount;->access_token_expire:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CloudAccount;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_token_expire(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CloudAccount;->refresh_token_expire:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CloudAccount;->uid:Ljava/lang/String;

    return-void
.end method
