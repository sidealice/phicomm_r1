.class public Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
.super Ljava/lang/Object;
.source "SelfDefinationResponseInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private operationType:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->operationType:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->status:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    .local p3, "content":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->operationType:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->status:I

    .line 24
    iput-object p3, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->content:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    iget v0, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->status:I

    return v0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    .local p1, "content":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->content:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->operationType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;, "Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo<TT;>;"
    iput p1, p0, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;->status:I

    .line 41
    return-void
.end method
