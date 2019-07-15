.class public Lcom/lzy/okgo/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CACHE_NEVER_EXPIRE:J = -0x1L

.field private static final serialVersionUID:J = -0x3c32a52e6586e8daL


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private id:J

.field private isExpire:Z

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    .line 93
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "localExpire"

    .line 94
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 101
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 105
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v5, "head"

    .line 106
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v4, v3

    .line 109
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    .line 112
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catchall_2
    move-exception p0

    :goto_1
    if-eqz v4, :cond_1

    .line 112
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 115
    :goto_3
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_2
    :goto_4
    throw p0

    :cond_3
    move-object v3, v2

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_4

    .line 112
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_7

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 115
    :goto_7
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 119
    :cond_5
    :goto_8
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 124
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 125
    :try_start_8
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 126
    :try_start_9
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 128
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v2, "data"

    .line 129
    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v2, v3

    goto :goto_e

    :catchall_3
    move-exception p0

    move-object v2, v3

    goto :goto_a

    :catch_5
    move-exception p0

    move-object v2, v3

    goto :goto_9

    :catch_6
    move-exception p0

    goto :goto_9

    :catchall_4
    move-exception p0

    move-object v1, v2

    goto :goto_a

    :catch_7
    move-exception p0

    move-object v1, v2

    .line 132
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v2, :cond_6

    .line 135
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_b

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_11

    :catchall_5
    move-exception p0

    :goto_a
    if-eqz v2, :cond_7

    .line 135
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_c

    :cond_7
    :goto_b
    if-eqz v1, :cond_8

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 138
    :goto_c
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 139
    :cond_8
    :goto_d
    throw p0

    :cond_9
    move-object v1, v2

    :goto_e
    if-eqz v2, :cond_a

    .line 135
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_f

    :catch_9
    move-exception p0

    goto :goto_10

    :cond_a
    :goto_f
    if-eqz v1, :cond_b

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    .line 138
    :goto_10
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_11
    return-object v0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {v0}, Lcom/lzy/okgo/cache/CacheEntity;-><init>()V

    const-string v1, "_id"

    .line 146
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheEntity;->setId(J)V

    const-string v1, "key"

    .line 147
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    const-string v1, "localExpire"

    .line 148
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheEntity;->setLocalExpire(J)V

    const-string v1, "head"

    .line 150
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 155
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 158
    check-cast v4, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, v4}, Lcom/lzy/okgo/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okgo/model/HttpHeaders;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    move-object v3, v1

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v1, v2

    move-object v3, v1

    .line 161
    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 164
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    if-eqz v3, :cond_5

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catchall_2
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    .line 164
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 167
    :goto_3
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 168
    :cond_2
    :goto_4
    throw p0

    :cond_3
    move-object v1, v2

    move-object v3, v1

    :goto_5
    if-eqz v1, :cond_4

    .line 164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_7

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 167
    :goto_7
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    const-string v1, "data"

    .line 171
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-eqz p0, :cond_9

    .line 176
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 177
    :try_start_8
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 178
    :try_start_9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, p0

    goto :goto_a

    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_9

    :catch_6
    move-exception p0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catch_7
    move-exception p0

    move-object v1, v2

    .line 182
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v2, :cond_6

    .line 185
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_6
    if-eqz v1, :cond_b

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_11

    :catchall_5
    move-exception v0

    :goto_a
    if-eqz v2, :cond_7

    .line 185
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_c

    :cond_7
    :goto_b
    if-eqz v1, :cond_8

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 188
    :goto_c
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 189
    :cond_8
    :goto_d
    throw v0

    :cond_9
    move-object p0, v2

    move-object v1, p0

    :goto_e
    if-eqz p0, :cond_a

    .line 185
    :try_start_d
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_f

    :catch_9
    move-exception p0

    goto :goto_10

    :cond_a
    :goto_f
    if-eqz v1, :cond_b

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    .line 188
    :goto_10
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_11
    return-object v0
.end method


# virtual methods
.method public checkExpire(Lcom/lzy/okgo/cache/CacheMode;JJ)Z
    .locals 7

    .line 86
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-nez p1, :cond_2

    return v2

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v3

    add-long v5, v3, p2

    cmp-long p1, v5, p4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExpire()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->isExpire:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    return-void
.end method

.method public setExpire(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->isExpire:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->id:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setLocalExpire(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    return-void
.end method

.method public setResponseHeaders(Lcom/lzy/okgo/model/HttpHeaders;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
