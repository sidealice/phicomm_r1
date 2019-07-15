.class public Lcom/lzy/okserver/download/a;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/lzy/okserver/download/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:F

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Lcom/lzy/okgo/e/b;

.field private m:Ljava/io/Serializable;

.field private n:Lcom/lzy/okserver/download/db/DownloadRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/lzy/okserver/download/a;->k:I

    .line 58
    new-instance v0, Lcom/lzy/okserver/download/db/DownloadRequest;

    invoke-direct {v0}, Lcom/lzy/okserver/download/db/DownloadRequest;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/download/a;->n:Lcom/lzy/okserver/download/db/DownloadRequest;

    return-void
.end method

.method public static a(Lcom/lzy/okserver/download/a;)Landroid/content/ContentValues;
    .locals 5

    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "taskKey"

    .line 64
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 65
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetFolder"

    .line 66
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetPath"

    .line 67
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fileName"

    .line 68
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "progress"

    .line 69
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->g()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "totalLength"

    .line 70
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "downloadLength"

    .line 71
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "networkSpeed"

    .line 72
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "state"

    .line 73
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->l()Lcom/lzy/okgo/e/b;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->m()Lcom/lzy/okserver/download/db/DownloadRequest;

    move-result-object v2

    .line 77
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    .line 78
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->g()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheTime:J

    .line 79
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->e()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 80
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->b()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 82
    invoke-virtual {v1}, Lcom/lzy/okgo/e/b;->c()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    iput-object v3, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 83
    invoke-static {v1}, Lcom/lzy/okserver/download/db/DownloadRequest;->getMethod(Lcom/lzy/okgo/e/b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "downloadRequest"

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v4, :cond_0

    .line 98
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 101
    :goto_1
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v1

    goto/16 :goto_e

    :catch_2
    move-exception v2

    move-object v4, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    goto/16 :goto_e

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_2
    move-object v1, v2

    .line 95
    :goto_3
    :try_start_4
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v4, :cond_1

    .line 98
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 106
    :cond_2
    :goto_4
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 107
    :try_start_7
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 108
    :try_start_8
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->n()Ljava/io/Serializable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 110
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v3, "data"

    .line 111
    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_3

    .line 116
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catchall_2
    move-exception p0

    goto :goto_a

    :catch_4
    move-exception p0

    move-object v3, v1

    move-object v4, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v3, v1

    goto :goto_6

    :catchall_4
    move-exception p0

    move-object v1, v3

    :goto_5
    move-object v2, v4

    goto :goto_a

    :catch_6
    move-exception p0

    .line 113
    :goto_6
    :try_start_a
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v4, :cond_4

    .line 116
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_7

    :catch_7
    move-exception p0

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    .line 119
    :goto_8
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    return-object v0

    :goto_a
    if-eqz v2, :cond_6

    .line 116
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_c

    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 119
    :goto_c
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 120
    :cond_7
    :goto_d
    throw p0

    :catchall_5
    move-exception p0

    :goto_e
    if-eqz v4, :cond_8

    .line 98
    :try_start_d
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_f

    :catch_9
    move-exception v0

    goto :goto_10

    :cond_8
    :goto_f
    if-eqz v3, :cond_9

    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    .line 101
    :goto_10
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 102
    :cond_9
    :goto_11
    throw p0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/lzy/okserver/download/a;
    .locals 8

    .line 126
    new-instance v0, Lcom/lzy/okserver/download/a;

    invoke-direct {v0}, Lcom/lzy/okserver/download/a;-><init>()V

    const-string v1, "_id"

    .line 127
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->a(I)V

    const-string v1, "taskKey"

    .line 128
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->a(Ljava/lang/String;)V

    const-string v1, "url"

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->b(Ljava/lang/String;)V

    const-string v1, "targetFolder"

    .line 130
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->d(Ljava/lang/String;)V

    const-string v1, "targetPath"

    .line 131
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->c(Ljava/lang/String;)V

    const-string v1, "fileName"

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->e(Ljava/lang/String;)V

    const-string v1, "progress"

    .line 133
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->a(F)V

    const-string v1, "totalLength"

    .line 134
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/download/a;->a(J)V

    const-string v1, "downloadLength"

    .line 135
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/download/a;->b(J)V

    const-string v1, "networkSpeed"

    .line 136
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/download/a;->c(J)V

    const-string v1, "state"

    .line 137
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->b(I)V

    const-string v1, "downloadRequest"

    .line 141
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 144
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/download/db/DownloadRequest;

    .line 147
    invoke-virtual {v0, v2}, Lcom/lzy/okserver/download/a;->a(Lcom/lzy/okserver/download/db/DownloadRequest;)V

    .line 148
    iget-object v4, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    iget-object v5, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/lzy/okserver/download/db/DownloadRequest;->createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/e/b;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 150
    iget-object v5, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v4, v5}, Lcom/lzy/okgo/e/b;->a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/e/b;

    .line 151
    iget-wide v5, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheTime:J

    invoke-virtual {v4, v5, v6}, Lcom/lzy/okgo/e/b;->a(J)Lcom/lzy/okgo/e/b;

    .line 152
    iget-object v5, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lzy/okgo/e/b;->b(Ljava/lang/String;)Lcom/lzy/okgo/e/b;

    .line 153
    iget-object v5, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v4, v5}, Lcom/lzy/okgo/e/b;->a(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/e/b;

    .line 154
    iget-object v2, v2, Lcom/lzy/okserver/download/db/DownloadRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v4, v2}, Lcom/lzy/okgo/e/b;->a(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/e/b;

    .line 155
    invoke-virtual {v0, v4}, Lcom/lzy/okserver/download/a;->a(Lcom/lzy/okgo/e/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 159
    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 162
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    .line 163
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 165
    :goto_2
    invoke-static {v2}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_2
    move-exception p0

    :goto_3
    if-eqz v1, :cond_1

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 165
    :goto_5
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 166
    :cond_2
    :goto_6
    throw p0

    :cond_3
    move-object v1, v2

    move-object v3, v1

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 162
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 163
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_8
    const-string v2, "data"

    .line 169
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-eqz p0, :cond_a

    .line 172
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 173
    :try_start_8
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 174
    :try_start_9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 175
    invoke-virtual {v0, v1}, Lcom/lzy/okserver/download/a;->a(Ljava/io/Serializable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v1, p0

    goto :goto_a

    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception p0

    move-object v3, v2

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto :goto_a

    :catch_7
    move-exception p0

    .line 178
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_7

    .line 181
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_c

    .line 182
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_11

    :goto_a
    if-eqz v1, :cond_8

    .line 181
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz v2, :cond_9

    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 184
    :goto_c
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    .line 185
    :cond_9
    :goto_d
    throw v0

    :cond_a
    move-object p0, v1

    move-object v2, v3

    :goto_e
    if-eqz p0, :cond_b

    .line 181
    :try_start_d
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_f

    :catch_9
    move-exception p0

    goto :goto_10

    :cond_b
    :goto_f
    if-eqz v2, :cond_c

    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    .line 184
    :goto_10
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V

    :cond_c
    :goto_11
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/lzy/okserver/download/a;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/lzy/okserver/download/a;->g:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/lzy/okserver/download/a;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lcom/lzy/okserver/download/a;->h:J

    return-void
.end method

.method public a(Lcom/lzy/okgo/e/b;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->l:Lcom/lzy/okgo/e/b;

    return-void
.end method

.method public a(Lcom/lzy/okserver/download/db/DownloadRequest;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->n:Lcom/lzy/okserver/download/db/DownloadRequest;

    return-void
.end method

.method public a(Ljava/io/Serializable;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->m:Ljava/io/Serializable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/lzy/okserver/download/a;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okserver/download/a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/lzy/okserver/download/a;->k:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/lzy/okserver/download/a;->i:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Lcom/lzy/okserver/download/a;->j:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/lzy/okserver/download/a;

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/download/a;->b(Lcom/lzy/okserver/download/a;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/lzy/okserver/download/a;->f:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 325
    instance-of v0, p1, Lcom/lzy/okserver/download/a;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Lcom/lzy/okserver/download/a;

    .line 327
    invoke-virtual {p0}, Lcom/lzy/okserver/download/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okserver/download/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()F
    .locals 1

    .line 239
    iget v0, p0, Lcom/lzy/okserver/download/a;->g:F

    return v0
.end method

.method public h()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/lzy/okserver/download/a;->h:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/lzy/okserver/download/a;->i:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/lzy/okserver/download/a;->j:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/lzy/okserver/download/a;->k:I

    return v0
.end method

.method public l()Lcom/lzy/okgo/e/b;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->l:Lcom/lzy/okgo/e/b;

    return-object v0
.end method

.method public m()Lcom/lzy/okserver/download/db/DownloadRequest;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->n:Lcom/lzy/okserver/download/db/DownloadRequest;

    return-object v0
.end method

.method public n()Ljava/io/Serializable;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/lzy/okserver/download/a;->m:Ljava/io/Serializable;

    return-object v0
.end method
