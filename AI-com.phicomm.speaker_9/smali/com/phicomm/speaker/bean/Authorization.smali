.class public Lcom/phicomm/speaker/bean/Authorization;
.super Lcom/phicomm/speaker/bean/BaseResponse;
.source "Authorization.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x543f25b74871c1e3L


# instance fields
.field private authorizationcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/phicomm/speaker/bean/BaseResponse;-><init>()V

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    const-wide v0, 0x543f25b74871c1e3L    # 6.653028865440844E97

    return-wide v0
.end method


# virtual methods
.method public getAuthorizationcode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/bean/Authorization;->authorizationcode:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorizationcode(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/bean/Authorization;->authorizationcode:Ljava/lang/String;

    return-void
.end method
