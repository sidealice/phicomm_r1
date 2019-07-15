.class public Lcom/unisound/vui/data/d/f;
.super Lcom/unisound/vui/data/d/c;


# instance fields
.field private d:Lcom/unisound/vui/data/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/d/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/unisound/vui/data/b/c;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/c;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/f;->d:Lcom/unisound/vui/data/b/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/d/f;->d:Lcom/unisound/vui/data/b/c;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/f;->d:Lcom/unisound/vui/data/b/c;

    invoke-virtual {v0}, Lcom/unisound/vui/data/b/c;->a()V

    return-void
.end method

.method public a(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/f;->d:Lcom/unisound/vui/data/b/c;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/b/c;->a(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method public b(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/f;->d:Lcom/unisound/vui/data/b/c;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/b/c;->b(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method
