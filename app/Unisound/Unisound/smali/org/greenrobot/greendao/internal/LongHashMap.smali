.class public final Lorg/greenrobot/greendao/internal/LongHashMap;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private size:I

.field private table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/greenrobot/greendao/internal/LongHashMap$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/internal/LongHashMap;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 53
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 55
    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    .line 56
    new-array v0, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 120
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 121
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public containsKey(J)Z
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 60
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    long-to-int v3, p1

    xor-int/2addr v2, v3

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int v1, v2, v3

    .line 62
    .local v1, "index":I
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v0, v2, v1

    .local v0, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    iget-wide v2, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x1

    .line 67
    :goto_1
    return v2

    .line 62
    :cond_0
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    long-to-int v3, p1

    xor-int/2addr v2, v3

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int v1, v2, v3

    .line 72
    .local v1, "index":I
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v0, v2, v1

    .local v0, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    iget-wide v2, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 74
    iget-object v2, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 77
    :goto_1
    return-object v2

    .line 72
    :cond_0
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public logStats()V
    .locals 6

    .prologue
    .line 155
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/4 v0, 0x0

    .line 156
    .local v0, "collisions":I
    iget-object v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 157
    .local v1, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_1
    if-eqz v1, :cond_0

    iget-object v5, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    if-eqz v5, :cond_0

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    iget-object v1, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_1

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    int-to-float v3, v3

    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", capa: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", collisions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", collision ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    long-to-int v5, p1

    xor-int/2addr v4, v5

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iget v5, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int v2, v4, v5

    .line 82
    .local v2, "index":I
    iget-object v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v1, v4, v2

    .line 83
    .local v1, "entryOriginal":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    move-object v0, v1

    .local v0, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    iget-wide v4, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 85
    iget-object v3, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 86
    .local v3, "oldValue":Ljava/lang/Object;, "TT;"
    iput-object p3, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 95
    .end local v3    # "oldValue":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v3

    .line 83
    :cond_0
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    .line 90
    :cond_1
    iget-object v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    new-instance v5, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    invoke-direct {v5, p1, p2, p3, v1}, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;-><init>(JLjava/lang/Object;Lorg/greenrobot/greendao/internal/LongHashMap$Entry;)V

    aput-object v5, v4, v2

    .line 91
    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 92
    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    iget v5, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    if-le v4, v5, :cond_2

    .line 93
    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    .line 95
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    long-to-int v5, p1

    xor-int/2addr v4, v5

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iget v5, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int v1, v4, v5

    .line 100
    .local v1, "index":I
    const/4 v3, 0x0

    .line 101
    .local v3, "previous":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v0, v4, v1

    .line 102
    .local v0, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 103
    iget-object v2, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 104
    .local v2, "next":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    iget-wide v4, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 105
    if-nez v3, :cond_0

    .line 106
    iget-object v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aput-object v2, v4, v1

    .line 110
    :goto_1
    iget v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    .line 111
    iget-object v4, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 116
    .end local v2    # "next":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_2
    return-object v4

    .line 108
    .restart local v2    # "next":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :cond_0
    iput-object v2, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_1

    .line 113
    :cond_1
    move-object v3, v0

    .line 114
    move-object v0, v2

    .line 115
    goto :goto_0

    .line 116
    .end local v2    # "next":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public reserveRoom(I)V
    .locals 1
    .param p1, "entryCount"    # I

    .prologue
    .line 151
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    .line 152
    return-void
.end method

.method public setCapacity(I)V
    .locals 10
    .param p1, "newCapacity"    # I

    .prologue
    .line 130
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    new-array v6, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 131
    .local v6, "newTable":[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "[Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    iget-object v8, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    array-length v3, v8

    .line 132
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 133
    iget-object v8, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v0, v8, v1

    .line 134
    .local v0, "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 135
    iget-wide v4, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    .line 136
    .local v4, "key":J
    const/16 v8, 0x20

    ushr-long v8, v4, v8

    long-to-int v8, v8

    long-to-int v9, v4

    xor-int/2addr v8, v9

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    rem-int v2, v8, p1

    .line 138
    .local v2, "index":I
    iget-object v7, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 139
    .local v7, "originalNext":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    aget-object v8, v6, v2

    iput-object v8, v0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 140
    aput-object v0, v6, v2

    .line 141
    move-object v0, v7

    .line 142
    goto :goto_1

    .line 132
    .end local v2    # "index":I
    .end local v4    # "key":J
    .end local v7    # "originalNext":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "entry":Lorg/greenrobot/greendao/internal/LongHashMap$Entry;, "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<TT;>;"
    :cond_1
    iput-object v6, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    .line 145
    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    .line 146
    mul-int/lit8 v8, p1, 0x4

    div-int/lit8 v8, v8, 0x3

    iput v8, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    .line 147
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lorg/greenrobot/greendao/internal/LongHashMap;, "Lorg/greenrobot/greendao/internal/LongHashMap<TT;>;"
    iget v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    return v0
.end method
