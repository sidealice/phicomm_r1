.class Lorg/xutils/http/cookie/DbCookieStore$1;
.super Ljava/lang/Object;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/cookie/DbCookieStore;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2, v0, v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$002(Lorg/xutils/http/cookie/DbCookieStore;J)J

    const-wide/16 v0, -0x1

    .line 258
    :try_start_0
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v2

    const-class v3, Lorg/xutils/http/cookie/a;

    const-string v4, "expiry"

    const-string v5, "<"

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    const-string v5, "expiry"

    const-string v6, "!="

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    .line 258
    invoke-interface {v2, v3, v4}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v2

    const-class v3, Lorg/xutils/http/cookie/a;

    invoke-interface {v2, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x1392

    if-le v2, v3, :cond_1

    .line 269
    iget-object v3, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v3}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v3

    const-class v4, Lorg/xutils/http/cookie/a;

    invoke-interface {v3, v4}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v3

    const-string v4, "expiry"

    const-string v5, "!="

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "expiry"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    move-result-object v0

    add-int/lit16 v2, v2, -0x1388

    .line 271
    invoke-virtual {v0, v2}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->a:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
