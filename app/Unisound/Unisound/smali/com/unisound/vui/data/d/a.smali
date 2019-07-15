.class public Lcom/unisound/vui/data/d/a;
.super Lcom/unisound/vui/data/d/c;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/unisound/vui/data/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/d/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unisound/vui/data/d/a;->d:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/data/b/a;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/a;->e:Lcom/unisound/vui/data/b/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/d/a;->e:Lcom/unisound/vui/data/b/a;

    invoke-virtual {v0}, Lcom/unisound/vui/data/b/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->c:Lcom/unisound/vui/data/e/b;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/data/e/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
