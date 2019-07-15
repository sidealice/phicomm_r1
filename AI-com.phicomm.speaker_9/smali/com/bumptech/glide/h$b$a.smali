.class public final Lcom/bumptech/glide/h$b$a;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/h$b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 748
    iput-object p1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 749
    iput-boolean p1, p0, Lcom/bumptech/glide/h$b$a;->d:Z

    .line 750
    iput-object p2, p0, Lcom/bumptech/glide/h$b$a;->b:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/h$b$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/f<",
            "TA;TT;TZ;>;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v0, v0, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v0}, Lcom/bumptech/glide/h;->e(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h$c;

    move-result-object v0

    new-instance v11, Lcom/bumptech/glide/f;

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v1, v1, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/h;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v1, v1, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/g;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/h$b$a;->c:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    invoke-static {v1}, Lcom/bumptech/glide/h$b;->a(Lcom/bumptech/glide/h$b;)Lcom/bumptech/glide/load/model/k;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    invoke-static {v1}, Lcom/bumptech/glide/h$b;->b(Lcom/bumptech/glide/h$b;)Ljava/lang/Class;

    move-result-object v6

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v1, v1, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v1}, Lcom/bumptech/glide/h;->c(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/d/m;

    move-result-object v8

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v1, v1, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v1}, Lcom/bumptech/glide/h;->d(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/d/g;

    move-result-object v9

    iget-object v1, p0, Lcom/bumptech/glide/h$b$a;->a:Lcom/bumptech/glide/h$b;

    iget-object v1, v1, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-static {v1}, Lcom/bumptech/glide/h;->e(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h$c;

    move-result-object v10

    move-object v1, v11

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/g;Ljava/lang/Class;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/h$c;)V

    invoke-virtual {v0, v11}, Lcom/bumptech/glide/h$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/f;

    .line 771
    iget-boolean v0, p0, Lcom/bumptech/glide/h$b$a;->d:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/bumptech/glide/h$b$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    :cond_0
    return-object p1
.end method
