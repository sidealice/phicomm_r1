.class Lcom/bumptech/glide/load/engine/a/e;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/a/h;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 93
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->c(Lcom/bumptech/glide/load/engine/a/e$a;)V

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 101
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/e;->c(Lcom/bumptech/glide/load/engine/a/e$a;)V

    return-void
.end method

.method private static c(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    return-void
.end method

.method private static d(Lcom/bumptech/glide/load/engine/a/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 61
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e;->d(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 62
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/a/h;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    .line 66
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a/e$a;->b:Lcom/bumptech/glide/load/engine/a/e$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/e$a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>(Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    .line 44
    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/e$a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/h;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/e$a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/e$a;-><init>(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/e;->b(Lcom/bumptech/glide/load/engine/a/e$a;)V

    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/a/h;->a()V

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    const/4 v2, 0x0

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/e;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0x7b

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/a/e$a;->a(Lcom/bumptech/glide/load/engine/a/e$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/a/e$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/a/e$a;->a:Lcom/bumptech/glide/load/engine/a/e$a;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " )"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
