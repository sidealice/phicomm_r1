.class final Lcom/tencent/bugly/crashreport/biz/b$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "unknown"

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 429
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 430
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, ">>> %s onCreated <<<"

    const/4 v0, 0x1

    .line 435
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 436
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 438
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v0, "onCreated"

    invoke-static {p2, v0}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "unknown"

    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 410
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, ">>> %s onDestroyed <<<"

    const/4 v1, 0x1

    .line 415
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 416
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "unknown"

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, ">>> %s onPaused <<<"

    const/4 v2, 0x1

    .line 379
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 380
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 384
    :cond_2
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v4, "onPaused"

    invoke-static {v0, v4}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v1, v3}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    .line 389
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    iget-wide v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    sub-long v6, v2, v4

    iput-wide v6, v1, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    .line 391
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    invoke-static {v2, v3}, Lcom/tencent/bugly/crashreport/biz/b;->c(J)J

    .line 393
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 394
    iput-wide v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "background"

    .line 397
    iput-object p1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    return-void

    :cond_4
    const-string p1, "unknown"

    .line 399
    iput-object p1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    const-string v0, "unknown"

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 317
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, ">>> %s onResumed <<<"

    const/4 v1, 0x1

    .line 322
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 323
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 327
    :cond_2
    iget-object v2, p1, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v4, "onResumed"

    invoke-static {v0, v4}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    .line 330
    iput-object v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    .line 334
    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->c()J

    move-result-wide v6

    sub-long v8, v4, v6

    iput-wide v8, p1, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    .line 336
    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->d()J

    move-result-wide v6

    sub-long v8, v4, v6

    .line 338
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->f()J

    move-result-wide v4

    :goto_0
    cmp-long v0, v8, v4

    if-lez v0, :cond_5

    .line 342
    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->d()V

    .line 343
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->g()I

    const-string p1, "[session] launch app one times (app in background %d seconds and over %d seconds)"

    const/4 v0, 0x2

    .line 344
    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->f()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 348
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->h()I

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->i()I

    move-result v0

    rem-int/2addr p1, v0

    const/4 v0, 0x4

    if-nez p1, :cond_4

    .line 349
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1, v6, v7}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    return-void

    .line 352
    :cond_4
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1, v0, v3, v6, v7}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 354
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->k()J

    move-result-wide v6

    sub-long v8, v4, v6

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->l()J

    move-result-wide v6

    cmp-long p1, v8, v6

    if-lez p1, :cond_5

    .line 355
    invoke-static {v4, v5}, Lcom/tencent/bugly/crashreport/biz/b;->b(J)J

    const-string p1, "add a timer to upload hot start user info"

    .line 356
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 357
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 359
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->l()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v4, Lcom/tencent/bugly/crashreport/biz/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v1}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
