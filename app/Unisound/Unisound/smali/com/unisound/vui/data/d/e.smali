.class public Lcom/unisound/vui/data/d/e;
.super Lcom/unisound/vui/data/d/c;


# instance fields
.field private d:Lcom/unisound/vui/data/b/a/a;

.field private e:Lcom/unisound/vui/data/b/a/b;

.field private f:Lcom/unisound/vui/data/b/a/c;

.field private g:Lcom/unisound/vui/data/b/a/e;

.field private h:Lcom/unisound/vui/data/b/a/f;

.field private i:Lcom/unisound/vui/data/b/a/g;

.field private j:Lcom/unisound/vui/data/b/a/h;

.field private k:Lcom/unisound/vui/data/b/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/d/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/unisound/vui/data/d/e;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/unisound/vui/data/b/a/a;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/a;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->d:Lcom/unisound/vui/data/b/a/a;

    new-instance v0, Lcom/unisound/vui/data/b/a/b;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/b;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->e:Lcom/unisound/vui/data/b/a/b;

    new-instance v0, Lcom/unisound/vui/data/b/a/c;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/c;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->f:Lcom/unisound/vui/data/b/a/c;

    new-instance v0, Lcom/unisound/vui/data/b/a/e;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/e;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->g:Lcom/unisound/vui/data/b/a/e;

    new-instance v0, Lcom/unisound/vui/data/b/a/f;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/f;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->h:Lcom/unisound/vui/data/b/a/f;

    new-instance v0, Lcom/unisound/vui/data/b/a/g;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/g;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->i:Lcom/unisound/vui/data/b/a/g;

    new-instance v0, Lcom/unisound/vui/data/b/a/h;

    iget-object v1, p0, Lcom/unisound/vui/data/d/c;->a:Lcom/unisound/vui/data/c/c$a;

    iget-object v2, p0, Lcom/unisound/vui/data/d/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/data/b/a/h;-><init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->j:Lcom/unisound/vui/data/b/a/h;

    invoke-direct {p0}, Lcom/unisound/vui/data/d/e;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/unisound/vui/data/b/a/d;

    invoke-direct {v0}, Lcom/unisound/vui/data/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->h:Lcom/unisound/vui/data/b/a/f;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/f;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->i:Lcom/unisound/vui/data/b/a/g;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/g;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->d:Lcom/unisound/vui/data/b/a/a;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/a;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->g:Lcom/unisound/vui/data/b/a/e;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/e;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->f:Lcom/unisound/vui/data/b/a/c;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/c;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->e:Lcom/unisound/vui/data/b/a/b;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/b;)V

    iget-object v0, p0, Lcom/unisound/vui/data/d/e;->k:Lcom/unisound/vui/data/b/a/d;

    iget-object v1, p0, Lcom/unisound/vui/data/d/e;->j:Lcom/unisound/vui/data/b/a/h;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/b/a/d;->a(Lcom/unisound/vui/data/b/a/h;)V

    return-void
.end method
