.class public Lcom/alibaba/fastjson/util/IdentityHashMap;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x400


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final indexMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TK;TV;>;"
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    .line 37
    new-array v0, p1, [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .line 38
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 42
    .local v2, "hash":I
    iget v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int v0, v2, v3

    .line 44
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    .line 46
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 50
    :goto_1
    return-object v3

    .line 44
    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 55
    .local v2, "hash":I
    iget v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int v0, v2, v3

    .line 57
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 58
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    .line 59
    iput-object p2, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 60
    const/4 v3, 0x1

    .line 67
    :goto_1
    return v3

    .line 57
    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .end local v1    # "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v3, v3, v0

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V

    .line 65
    .restart local v1    # "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aput-object v1, v3, v0

    .line 67
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 4

    .prologue
    .line 71
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 72
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v0, v3, v1

    .local v0, "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 73
    iget-object v0, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"
    :cond_1
    return v2
.end method
