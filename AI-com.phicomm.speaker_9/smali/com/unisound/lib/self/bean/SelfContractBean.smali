.class public Lcom/unisound/lib/self/bean/SelfContractBean;
.super Ljava/lang/Object;
.source "SelfContractBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/self/bean/SelfContractBean$Content;
    }
.end annotation


# instance fields
.field private content:Lcom/unisound/lib/self/bean/SelfContractBean$Content;

.field private operationType:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->content:Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->status:I

    return v0
.end method

.method public setContent(Lcom/unisound/lib/self/bean/SelfContractBean$Content;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->content:Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->operationType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean;->status:I

    return-void
.end method
