.class public Lcom/phicomm/speaker/a/p;
.super Ljava/lang/Object;
.source "GetAccountDetailsEvent.java"


# instance fields
.field private a:Lcom/phicomm/speaker/bean/AccountDetailsBean;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/phicomm/speaker/a/p;->a:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-void
.end method


# virtual methods
.method public a()Lcom/phicomm/speaker/bean/AccountDetailsBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/a/p;->a:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAccountDetailsEvent{detailsBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/a/p;->a:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
