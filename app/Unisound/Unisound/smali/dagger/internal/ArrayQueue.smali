.class public Ldagger/internal/ArrayQueue;
.super Ljava/util/AbstractCollection;
.source "ArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/ArrayQueue$1;,
        Ldagger/internal/ArrayQueue$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 142
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 151
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 152
    invoke-direct {p0, p1}, Ldagger/internal/ArrayQueue;->allocateElements(I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ldagger/internal/ArrayQueue;->allocateElements(I)V

    .line 167
    invoke-virtual {p0, p1}, Ldagger/internal/ArrayQueue;->addAll(Ljava/util/Collection;)Z

    .line 168
    return-void
.end method

.method static synthetic access$100(Ldagger/internal/ArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .prologue
    .line 58
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    return v0
.end method

.method static synthetic access$200(Ldagger/internal/ArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .prologue
    .line 58
    iget v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    return v0
.end method

.method static synthetic access$300(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .prologue
    .line 58
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Ldagger/internal/ArrayQueue;I)Z
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ldagger/internal/ArrayQueue;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 99
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/16 v0, 0x8

    .line 102
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 103
    move v0, p1

    .line 104
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 105
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 106
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 107
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 108
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 111
    if-gez v0, :cond_0

    .line 112
    ushr-int/lit8 v0, v0, 0x1

    .line 114
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 115
    return-void
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 281
    .local v1, "elements":[Ljava/lang/Object;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 282
    .local v4, "mask":I
    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 283
    .local v3, "h":I
    iget v5, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 284
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 285
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 288
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 289
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 292
    :cond_0
    if-ge v2, v0, :cond_2

    .line 293
    if-gt v3, p1, :cond_1

    .line 294
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 301
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 313
    :goto_1
    return v6

    .line 296
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 298
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 304
    :cond_2
    if-ge p1, v5, :cond_3

    .line 305
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ldagger/internal/ArrayQueue;->tail:I

    :goto_2
    move v6, v7

    .line 313
    goto :goto_1

    .line 308
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 310
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ldagger/internal/ArrayQueue;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v6, 0x0

    .line 123
    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 124
    .local v3, "p":I
    iget-object v5, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 125
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 126
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 127
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    .line 128
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, queue too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 130
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v5, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iput-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 133
    iput v6, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 134
    iput v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 135
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 598
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 599
    .local v1, "size":I
    invoke-direct {p0, v1}, Ldagger/internal/ArrayQueue;->allocateElements(I)V

    .line 600
    const/4 v2, 0x0

    iput v2, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 601
    iput v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 605
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 582
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 585
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 586
    .local v1, "mask":I
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ldagger/internal/ArrayQueue;->tail:I

    if-eq v0, v2, :cond_0

    .line 587
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 586
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 588
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    aput-object p1, v0, v1

    .line 184
    iget v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    if-ne v0, v1, :cond_1

    .line 185
    invoke-direct {p0}, Ldagger/internal/ArrayQueue;->doubleCapacity()V

    .line 186
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 459
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 460
    .local v0, "h":I
    iget v3, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 461
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 462
    const/4 v4, 0x0

    iput v4, p0, Ldagger/internal/ArrayQueue;->tail:I

    iput v4, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 463
    move v1, v0

    .line 464
    .local v1, "i":I
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 466
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 467
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 468
    if-ne v1, v3, :cond_0

    .line 470
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Ldagger/internal/ArrayQueue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/ArrayQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldagger/internal/ArrayQueue;

    .line 555
    .local v3, "result":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 557
    .local v2, "newElements":[Ljava/lang/Object;, "[TE;"
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iput-object v2, v3, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    return-object v3

    .line 560
    .end local v2    # "newElements":[Ljava/lang/Object;, "[TE;"
    .end local v3    # "result":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->clone()Ldagger/internal/ArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v3, 0x0

    .line 412
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v3

    .line 414
    :cond_1
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 415
    .local v1, "mask":I
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 417
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    const/4 v3, 0x1

    goto :goto_0

    .line 420
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public element()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ldagger/internal/ArrayQueue;->head:I

    aget-object v0, v1, v2

    .line 249
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 250
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 251
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 336
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    new-instance v0, Ldagger/internal/ArrayQueue$QueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/ArrayQueue$QueueIterator;-><init>(Ldagger/internal/ArrayQueue;Ldagger/internal/ArrayQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ldagger/internal/ArrayQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ldagger/internal/ArrayQueue;->head:I

    aget-object v0, v1, v2

    .line 265
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v2, 0x0

    .line 228
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 229
    .local v0, "h":I
    iget-object v3, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 231
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v2

    .line 235
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 233
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 234
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Ldagger/internal/ArrayQueue;->head:I

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 215
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v3, 0x0

    .line 438
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v3

    .line 440
    :cond_1
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 441
    .local v1, "mask":I
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 443
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    invoke-direct {p0, v0}, Ldagger/internal/ArrayQueue;->delete(I)Z

    .line 446
    const/4 v3, 0x1

    goto :goto_0

    .line 448
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 326
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ldagger/internal/ArrayQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 528
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v1

    .line 529
    .local v1, "size":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 532
    :cond_0
    iget v2, p0, Ldagger/internal/ArrayQueue;->head:I

    iget v3, p0, Ldagger/internal/ArrayQueue;->tail:I

    if-ge v2, v3, :cond_3

    .line 533
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v4

    invoke-static {v2, v3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    :cond_1
    :goto_0
    array-length v2, p1

    if-le v2, v1, :cond_2

    .line 540
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 541
    :cond_2
    return-object p1

    .line 534
    :cond_3
    iget v2, p0, Ldagger/internal/ArrayQueue;->head:I

    iget v3, p0, Ldagger/internal/ArrayQueue;->tail:I

    if-le v2, v3, :cond_1

    .line 535
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    sub-int v0, v2, v3

    .line 536
    .local v0, "headPortionLen":I
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    invoke-static {v2, v3, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v3, p0, Ldagger/internal/ArrayQueue;->tail:I

    invoke-static {v2, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
