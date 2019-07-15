.class public Lcom/phicomm/speaker/bean/BaseSzResponse;
.super Ljava/lang/Object;
.source "BaseSzResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5ba27d0d733098deL


# instance fields
.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/bean/BaseSzResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/phicomm/speaker/bean/BaseSzResponse;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/bean/BaseSzResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/phicomm/speaker/bean/BaseSzResponse;->status:I

    return-void
.end method
