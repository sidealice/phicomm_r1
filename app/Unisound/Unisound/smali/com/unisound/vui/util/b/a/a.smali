.class public abstract Lcom/unisound/vui/util/b/a/a;
.super Ljava/util/AbstractSet;

# interfaces
.implements Lcom/unisound/vui/util/b/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/unisound/vui/util/b/a/c",
        "<TC;>;>;",
        "Lcom/unisound/vui/util/b/a/b",
        "<TC;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/Iterator;)[Lcom/unisound/vui/util/b/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;>;)[",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/b/a/a;->a(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/unisound/vui/util/b/a/c;

    check-cast v0, [Lcom/unisound/vui/util/b/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method a()[Lcom/unisound/vui/util/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/b/a/a;->b(Ljava/util/Iterator;)[Lcom/unisound/vui/util/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/a;->a()[Lcom/unisound/vui/util/b/a/c;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
