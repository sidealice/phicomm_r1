.class public Lcom/bumptech/glide/h/e;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/bumptech/glide/h/e;->d:I

    .line 25
    iput p1, p0, Lcom/bumptech/glide/h/e;->c:I

    .line 26
    iput p1, p0, Lcom/bumptech/glide/h/e;->b:I

    return-void
.end method

.method private c()V
    .locals 1

    .line 167
    iget v0, p0, Lcom/bumptech/glide/h/e;->b:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->b(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->b(I)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public b()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/bumptech/glide/h/e;->d:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 111
    iget v1, p0, Lcom/bumptech/glide/h/e;->b:I

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 118
    iget v0, p0, Lcom/bumptech/glide/h/e;->d:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/bumptech/glide/h/e;->d:I

    :cond_1
    if-eqz p1, :cond_2

    .line 122
    iget p2, p0, Lcom/bumptech/glide/h/e;->d:I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/bumptech/glide/h/e;->d:I

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/h/e;->c()V

    return-object p1
.end method

.method protected b(I)V
    .locals 4

    .line 156
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/h/e;->d:I

    if-le v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget v2, p0, Lcom/bumptech/glide/h/e;->d:I

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/h/e;->d:I

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget v0, p0, Lcom/bumptech/glide/h/e;->d:I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/h/e;->d:I

    :cond_0
    return-object p1
.end method
