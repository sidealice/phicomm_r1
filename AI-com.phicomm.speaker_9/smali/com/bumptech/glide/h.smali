.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$d;,
        Lcom/bumptech/glide/h$c;,
        Lcom/bumptech/glide/h$b;,
        Lcom/bumptech/glide/h$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/d/g;

.field private final c:Lcom/bumptech/glide/d/l;

.field private final d:Lcom/bumptech/glide/d/m;

.field private final e:Lcom/bumptech/glide/g;

.field private final f:Lcom/bumptech/glide/h$c;

.field private g:Lcom/bumptech/glide/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;)V
    .locals 6

    .line 53
    new-instance v4, Lcom/bumptech/glide/d/m;

    invoke-direct {v4}, Lcom/bumptech/glide/d/m;-><init>()V

    new-instance v5, Lcom/bumptech/glide/d/d;

    invoke-direct {v5}, Lcom/bumptech/glide/d/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/d;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/g;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/d/l;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/g;

    .line 63
    new-instance p3, Lcom/bumptech/glide/h$c;

    invoke-direct {p3, p0}, Lcom/bumptech/glide/h$c;-><init>(Lcom/bumptech/glide/h;)V

    iput-object p3, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/h$c;

    .line 65
    new-instance p3, Lcom/bumptech/glide/h$d;

    invoke-direct {p3, p4}, Lcom/bumptech/glide/h$d;-><init>(Lcom/bumptech/glide/d/m;)V

    invoke-virtual {p5, p1, p3}, Lcom/bumptech/glide/d/d;->a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/bumptech/glide/h/h;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 72
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/bumptech/glide/h$1;

    invoke-direct {p4, p0, p2}, Lcom/bumptech/glide/h$1;-><init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/g;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    .line 81
    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/h;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/d<",
            "TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;

    move-result-object v3

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;

    move-result-object v4

    if-eqz p1, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/h$c;

    new-instance v10, Lcom/bumptech/glide/d;

    iget-object v5, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/g;

    iget-object v7, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    iget-object v8, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/g;

    iget-object v9, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/h$c;

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Landroid/content/Context;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/h$c;)V

    invoke-virtual {v0, v10}, Lcom/bumptech/glide/h$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/d;

    return-object p1
.end method

.method static synthetic b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/g;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/g;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/d/m;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic d(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/d/g;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/g;

    return-object p0
.end method

.method static synthetic e(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h$c;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/h$c;

    return-object p0
.end method

.method static synthetic f(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/h$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->h()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/d;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/d<",
            "TT;>;"
        }
    .end annotation

    .line 598
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/d;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->g()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/d;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;)Lcom/bumptech/glide/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/h$b<",
            "TA;TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/bumptech/glide/h$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/h$b;-><init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->h()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->b()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->c()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->c()V

    return-void
.end method

.method public g()Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/g/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method
