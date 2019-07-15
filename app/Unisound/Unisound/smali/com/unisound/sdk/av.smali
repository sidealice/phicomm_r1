.class public Lcom/unisound/sdk/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/ah;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/common/ah;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/common/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/ah;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/ah;->b()V

    :cond_0
    return-void
.end method
