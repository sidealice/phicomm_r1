.class public final Lorg/xutils/cache/DiskCacheEntity;
.super Ljava/lang/Object;
.source "DiskCacheEntity.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "disk_cache"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "etag"
    .end annotation
.end field

.field private expires:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "expires"
    .end annotation
.end field

.field private hits:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "hits"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "key"
        property = "UNIQUE"
    .end annotation
.end field

.field private lastAccess:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastAccess"
    .end annotation
.end field

.field private lastModify:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastModify"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private textContent:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "textContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    .line 45
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    return-wide v0
.end method

.method public getHits()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccess()J
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    goto :goto_0
.end method

.method public getLastModify()Ljava/util/Date;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setExpires(J)V
    .locals 1
    .param p1, "expires"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    .line 85
    return-void
.end method

.method public setHits(J)V
    .locals 1
    .param p1, "hits"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    .line 101
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    .line 53
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLastAccess(J)V
    .locals 1
    .param p1, "lastAccess"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    .line 117
    return-void
.end method

.method public setLastModify(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModify"    # Ljava/util/Date;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    .line 109
    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    .line 77
    return-void
.end method
