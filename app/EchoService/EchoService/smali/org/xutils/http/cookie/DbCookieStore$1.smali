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
.field final synthetic this$0:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/http/cookie/DbCookieStore;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    .local v2, "current":J
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5, v2, v3}, Lorg/xutils/http/cookie/DbCookieStore;->access$002(Lorg/xutils/http/cookie/DbCookieStore;J)J

    .line 258
    :try_start_0
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    const-class v6, Lorg/xutils/http/cookie/CookieEntity;

    const-string v7, "expiry"

    const-string v8, "<"

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v7

    const-string v8, "expiry"

    const-string v9, "!="

    const-wide/16 v10, -0x1

    .line 260
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v7

    .line 258
    invoke-interface {v5, v6, v7}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_1
    :try_start_1
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    const-class v6, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v6

    long-to-int v0, v6

    .line 268
    .local v0, "count":I
    const/16 v5, 0x1392

    if-le v0, v5, :cond_0

    .line 269
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    const-class v6, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    const-string v6, "expiry"

    const-string v7, "!="

    const-wide/16 v8, -0x1

    .line 270
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v5

    const-string v6, "expiry"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    move-result-object v5

    add-int/lit16 v6, v0, -0x1388

    .line 271
    invoke-virtual {v5, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v4

    .line 272
    .local v4, "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    if-eqz v4, :cond_0

    .line 273
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 276
    .end local v0    # "count":I
    .end local v4    # "rmList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    :catch_0
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 261
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 262
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
