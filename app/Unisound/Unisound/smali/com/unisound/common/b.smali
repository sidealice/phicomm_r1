.class public abstract Lcom/unisound/common/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/common/c;

    invoke-direct {v0, p0}, Lcom/unisound/common/c;-><init>(Lcom/unisound/common/b;)V

    iput-object v0, p0, Lcom/unisound/common/b;->a:Lcom/unisound/common/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/b;->a:Lcom/unisound/common/c;

    invoke-virtual {v0}, Lcom/unisound/common/c;->a()V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Lcom/unisound/common/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/b;->a:Lcom/unisound/common/c;

    invoke-virtual {v0, p1}, Lcom/unisound/common/c;->a(Lcom/unisound/common/d;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/b;->a:Lcom/unisound/common/c;

    invoke-virtual {v0}, Lcom/unisound/common/c;->b()V

    return-void
.end method

.method public abstract b(I)V
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/b;->a:Lcom/unisound/common/c;

    invoke-virtual {v0}, Lcom/unisound/common/c;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/common/b;->b()V

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public abstract i()V
.end method
