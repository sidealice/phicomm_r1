.class public Lcom/phicomm/speaker/bean/AccountBean;
.super Lcom/phicomm/speaker/bean/FxResponse;
.source "AccountBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x734cffa1822300e7L


# instance fields
.field private data:Lcom/phicomm/speaker/bean/AccountDetailsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/phicomm/speaker/bean/FxResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/phicomm/speaker/bean/AccountDetailsBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/bean/AccountBean;->data:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-object v0
.end method

.method public setData(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/bean/AccountBean;->data:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-void
.end method
