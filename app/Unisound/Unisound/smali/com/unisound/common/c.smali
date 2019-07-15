.class public Lcom/unisound/common/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/unisound/common/d;

.field final synthetic b:Lcom/unisound/common/b;


# direct methods
.method public constructor <init>(Lcom/unisound/common/b;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/common/c;->b:Lcom/unisound/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/d;->a()V

    :cond_0
    return-void
.end method

.method a(Lcom/unisound/common/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/d;->b()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/d;->c()V

    :cond_0
    return-void
.end method
