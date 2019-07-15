.class public final Lcom/ta/utdid2/c/a/d$a$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/c/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/c/a/d$a;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/c/a/d$a;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    const/4 p1, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 264
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 271
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 299
    monitor-enter p0

    const/4 v0, 0x1

    .line 300
    :try_start_0
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    .line 301
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 9

    .line 312
    invoke-static {}, Lcom/ta/utdid2/c/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v1}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v5, Ljava/util/HashSet;

    .line 317
    iget-object v6, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 316
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 320
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    iget-boolean v6, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    if-eqz v6, :cond_2

    .line 322
    iget-object v6, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 323
    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 340
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 320
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :try_start_2
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    iget-object v6, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-virtual {v6, v3}, Lcom/ta/utdid2/c/a/d$a;->a(Z)V

    .line 312
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_8

    .line 349
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_3
    if-gez v0, :cond_5

    goto :goto_5

    .line 350
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/utdid2/c/a/b$b;

    if-eqz v6, :cond_6

    .line 354
    iget-object v7, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    .line 353
    invoke-interface {v6, v7, v1}, Lcom/ta/utdid2/c/a/b$b;->a(Lcom/ta/utdid2/c/a/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_5
    return v2

    .line 326
    :cond_9
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 328
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_a

    .line 330
    iget-object v6, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 332
    :cond_a
    iget-object v8, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v8}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz v1, :cond_3

    .line 336
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 312
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
