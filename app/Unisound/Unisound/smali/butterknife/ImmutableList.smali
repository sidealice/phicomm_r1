.class final Lbutterknife/ImmutableList;
.super Ljava/util/AbstractList;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final views:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lbutterknife/ImmutableList;, "Lbutterknife/ImmutableList<TT;>;"
    .local p1, "views":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 14
    iput-object p1, p0, Lbutterknife/ImmutableList;->views:[Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lbutterknife/ImmutableList;, "Lbutterknife/ImmutableList<TT;>;"
    const/4 v1, 0x0

    .line 26
    iget-object v3, p0, Lbutterknife/ImmutableList;->views:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 27
    .local v0, "view":Ljava/lang/Object;, "TT;"
    if-ne v0, p1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 31
    .end local v0    # "view":Ljava/lang/Object;, "TT;"
    :cond_0
    return v1

    .line 26
    .restart local v0    # "view":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lbutterknife/ImmutableList;, "Lbutterknife/ImmutableList<TT;>;"
    iget-object v0, p0, Lbutterknife/ImmutableList;->views:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lbutterknife/ImmutableList;, "Lbutterknife/ImmutableList<TT;>;"
    iget-object v0, p0, Lbutterknife/ImmutableList;->views:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
