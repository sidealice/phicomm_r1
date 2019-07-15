.class public final Lcom/tencent/bugly/crashreport/biz/a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/biz/a$c;,
        Lcom/tencent/bugly/crashreport/biz/a$b;,
        Lcom/tencent/bugly/crashreport/biz/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->d:Z

    .line 46
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    .line 47
    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/biz/a;->d:Z

    .line 48
    return-void
.end method

.method private static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 487
    if-nez p0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-object v0

    .line 492
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 493
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 494
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    :cond_2
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string v2, "_ut"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "_dt"

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 501
    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 503
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 514
    if-nez p0, :cond_1

    move-object v0, v1

    .line 533
    :cond_0
    :goto_0
    return-object v0

    .line 518
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 519
    if-nez v0, :cond_2

    move-object v0, v1

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 523
    sget-object v4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 524
    if-eqz v0, :cond_0

    .line 525
    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 530
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 533
    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/biz/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/biz/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget v0, p1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    const-string v1, "[UserInfo] There are too many user info in local: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/biz/a;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v1

    const-string v2, "t_ui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-string v2, "[Database] insert %s success with ID: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "t_ui"

    aput-object v4, v3, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 458
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    .line 462
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/16 v0, 0x32

    if-ge v1, v0, :cond_2

    .line 463
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 464
    const-string v2, " or _id"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 467
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 469
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 473
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 475
    const-string v1, "[Database] deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/biz/a;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    return-wide v0
.end method

.method private declared-synchronized c()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_0

    .line 180
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/proguard/u;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_c

    .line 201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x14

    .line 203
    if-lez v8, :cond_6

    move v3, v6

    .line 205
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_5

    .line 206
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 207
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v12, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    cmp-long v0, v10, v12

    if-lez v0, :cond_3

    .line 209
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 210
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 205
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v6

    .line 217
    :goto_3
    if-ge v0, v8, :cond_6

    .line 218
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 224
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    .line 225
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 227
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 229
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 232
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 233
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_7
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x927c0

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_17

    .line 239
    iget v8, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-eq v8, v7, :cond_8

    iget v8, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    iget v0, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_17

    .line 242
    :cond_8
    add-int/lit8 v0, v1, 0x1

    :goto_5
    move v1, v0

    .line 245
    goto :goto_4

    .line 247
    :cond_9
    const/16 v0, 0xf

    if-le v1, v0, :cond_16

    .line 249
    const-string v0, "[UserInfo] Upload user info too many times in 10 min: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_6
    move-object v1, v2

    .line 256
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 257
    invoke-static {v5}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/util/List;)V

    .line 260
    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 261
    :cond_b
    const-string v0, "[UserInfo] There is no user info in local database."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :cond_c
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    move v0, v7

    goto :goto_7

    .line 266
    :cond_d
    const-string v0, "[UserInfo] Upload user info(size: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    if-ne v0, v7, :cond_e

    move v0, v7

    .line 271
    :goto_8
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/List;I)Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    .line 272
    if-nez v0, :cond_f

    .line 273
    const-string v0, "[UserInfo] Failed to create UserInfoPackage."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 269
    :cond_e
    const/4 v0, 0x2

    goto :goto_8

    .line 277
    :cond_f
    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/k;)[B

    move-result-object v2

    .line 278
    if-nez v2, :cond_10

    .line 279
    const-string v0, "[UserInfo] Failed to encode data."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 283
    :cond_10
    iget-boolean v0, v4, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x348

    .line 286
    :goto_9
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/am;

    move-result-object v2

    .line 288
    if-nez v2, :cond_12

    .line 289
    const-string v0, "[UserInfo] Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 283
    :cond_11
    const/16 v0, 0x280

    goto :goto_9

    .line 296
    :cond_12
    new-instance v5, Lcom/tencent/bugly/crashreport/biz/a$1;

    invoke-direct {v5, p0, v1}, Lcom/tencent/bugly/crashreport/biz/a$1;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Ljava/util/List;)V

    .line 316
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 317
    iget-boolean v1, v4, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v1, :cond_14

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 318
    :goto_a
    iget-boolean v0, v4, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v0, :cond_15

    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 321
    :goto_b
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v0

    const/16 v1, 0x3e9

    iget v8, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    if-ne v8, v7, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;Z)V

    goto/16 :goto_0

    .line 317
    :cond_14
    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    goto :goto_a

    .line 318
    :cond_15
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :cond_16
    move v0, v7

    goto/16 :goto_6

    :cond_17
    move v0, v1

    goto/16 :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 406
    .line 408
    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, v7

    .line 410
    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 412
    if-nez v8, :cond_2

    .line 413
    if-eqz v8, :cond_0

    .line 448
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 451
    :goto_1
    return-object v0

    .line 408
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_pc = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    goto :goto_0

    .line 415
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 418
    invoke-static {v8}, Lcom/tencent/bugly/crashreport/biz/a;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_5

    .line 420
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 442
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 443
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 447
    :cond_3
    if-eqz v1, :cond_4

    .line 448
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    .line 451
    goto :goto_1

    .line 424
    :cond_5
    :try_start_4
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 425
    const-string v1, " or _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 427
    :catch_1
    move-exception v1

    :try_start_5
    const-string v1, "[Database] unknown id."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 447
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_6

    .line 448
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 433
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 435
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 438
    const-string v1, "[Database] deleted %s error data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 447
    :cond_8
    if-eqz v8, :cond_9

    .line 448
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v6

    goto/16 :goto_1

    .line 447
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 442
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    .line 118
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/biz/a$b;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public final a(IZJ)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    if-nez v2, :cond_0

    .line 90
    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 91
    const-string v0, "UserInfo is disable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    .line 96
    :cond_1
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;-><init>()V

    iput p1, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    iget-object v4, v2, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    iget-object v4, v2, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    if-ne p1, v0, :cond_3

    :goto_1
    iput v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result v0

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    iget-object v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iget-wide v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    iput-wide v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    iget-wide v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    iput-wide v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    iget-wide v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    iput-wide v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    iget-wide v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    iput-wide v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->I()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    .line 100
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$a;

    invoke-direct {v1, p0, v3, p2}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    return-void
.end method
