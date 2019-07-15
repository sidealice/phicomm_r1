.class public Lcom/phicomm/speaker/bean/SzResponse;
.super Lcom/phicomm/speaker/bean/BaseSzResponse;
.source "SzResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x2548af86a5875a1fL


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/phicomm/speaker/bean/BaseSzResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/phicomm/speaker/bean/SzResponse;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/phicomm/speaker/bean/SzResponse;->result:Ljava/lang/String;

    return-void
.end method
