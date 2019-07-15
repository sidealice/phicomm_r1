.class public Lcom/unisound/sdk/cs;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/ay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/common/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cs;->a:Lcom/unisound/common/ay;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cs;->a:Lcom/unisound/common/ay;

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

    iget-object v0, p0, Lcom/unisound/sdk/cs;->a:Lcom/unisound/common/ay;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/ay;->a()V

    :cond_0
    return-void
.end method
