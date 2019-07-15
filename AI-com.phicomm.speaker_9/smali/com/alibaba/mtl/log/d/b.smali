.class public abstract Lcom/alibaba/mtl/log/d/b;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static A:I = 0x0

.field private static volatile E:Z = false

.field private static F:Z = false


# instance fields
.field B:I

.field C:I

.field a:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    const/high16 v0, 0x43480000    # 200.0f

    .line 45
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->a:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    return-void
.end method

.method private M()V
    .locals 21

    move-object/from16 v1, p0

    .line 64
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 67
    :cond_0
    sget-boolean v2, Lcom/alibaba/mtl/log/d/b;->F:Z

    if-eqz v2, :cond_1

    return-void

    .line 70
    :cond_1
    sget-boolean v2, Lcom/alibaba/mtl/log/d/b;->E:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    .line 71
    sput-boolean v2, Lcom/alibaba/mtl/log/d/b;->E:Z

    .line 78
    invoke-static {}, Lcom/alibaba/mtl/log/a/d;->a()Lcom/alibaba/mtl/log/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/mtl/log/a/d;->b()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    if-ge v5, v7, :cond_14

    .line 82
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/mtl/log/e/k;->c(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v3, "UploadTask"

    .line 84
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Other Process is Uploading, break"

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 87
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/mtl/log/c/c;->G()V

    const/4 v8, 0x0

    if-eqz v3, :cond_8

    .line 90
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_8

    move-object v9, v8

    .line 91
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/mtl/log/a/c;

    .line 95
    iget-object v10, v9, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, v9, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventId"

    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v4

    .line 98
    :goto_2
    iget-object v12, v9, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    if-eqz v11, :cond_3

    const-string v12, " , "

    .line 100
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    iget-object v12, v9, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    const-string v11, " ) "

    .line 104
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object v10, v8

    .line 107
    :goto_3
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/d/b;->h()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 108
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 109
    iget-object v9, v9, Lcom/alibaba/mtl/log/a/c;->Q:Ljava/lang/String;

    move-object/from16 v20, v10

    move v10, v6

    move-object v6, v9

    move-object/from16 v9, v20

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object v9, v10

    goto :goto_1

    :cond_7
    move v10, v6

    move-object v6, v8

    goto :goto_4

    :cond_8
    move v10, v6

    move-object v6, v8

    move-object v9, v6

    :goto_4
    if-eqz v9, :cond_9

    if-eqz v9, :cond_a

    .line 114
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_a

    .line 115
    :cond_9
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/d/b;->h()I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    :cond_a
    if-eqz v9, :cond_13

    .line 119
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_b

    goto/16 :goto_9

    .line 123
    :cond_b
    invoke-direct {v1, v9}, Lcom/alibaba/mtl/log/d/b;->b(Ljava/util/List;)I

    move-result v11

    .line 124
    invoke-direct {v1, v9}, Lcom/alibaba/mtl/log/d/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 125
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_8

    .line 130
    :cond_c
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 131
    sget-object v15, Lcom/alibaba/mtl/log/a/a;->M:Ljava/lang/String;

    .line 132
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/rest/sur"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 136
    :cond_d
    invoke-static {v15, v8, v12}, Lcom/alibaba/mtl/log/e/t;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-direct {v1, v6, v12}, Lcom/alibaba/mtl/log/d/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/e/a$a;

    move-result-object v6

    .line 138
    iget-boolean v7, v6, Lcom/alibaba/mtl/log/e/a$a;->G:Z

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v5

    sub-long v4, v15, v13

    .line 143
    :try_start_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v1, v8, v4, v5}, Lcom/alibaba/mtl/log/d/b;->a(Ljava/lang/Boolean;J)I

    if-eqz v7, :cond_f

    .line 145
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/util/List;)I

    move-result v6

    .line 146
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    if-ge v6, v8, :cond_e

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mtl/log/d/b;->L()V

    .line 149
    :cond_e
    invoke-static {v9, v6}, Lcom/alibaba/mtl/log/b/a;->a(Ljava/util/List;I)V

    .line 150
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->t()V

    goto :goto_6

    .line 152
    :cond_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-static {v8}, Lcom/alibaba/mtl/log/b/a;->d(I)V

    .line 153
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->u()V

    .line 154
    invoke-virtual {v6}, Lcom/alibaba/mtl/log/e/a$a;->i()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_10

    .line 173
    :goto_5
    invoke-static {}, Lcom/alibaba/mtl/log/e/k;->release()V

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 156
    :cond_10
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/mtl/log/e/a$a;->j()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 157
    sput-boolean v2, Lcom/alibaba/mtl/log/d/b;->F:Z

    goto :goto_5

    .line 162
    :cond_11
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-string v6, "UploadTask"

    const/4 v8, 0x4

    .line 163
    new-array v14, v8, [Ljava/lang/Object;

    const-string v19, "logs.size():"

    const/16 v17, 0x0

    aput-object v19, v14, v17

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v2

    const-string v9, " selfMonitorLogCount:"

    const/16 v19, 0x2

    aput-object v9, v14, v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v14, v11

    invoke-static {v6, v14}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "UploadTask"

    const/4 v9, 0x6

    .line 164
    new-array v9, v9, [Ljava/lang/Object;

    const-string v11, "upload isSendSuccess:"

    const/4 v14, 0x0

    aput-object v11, v9, v14

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v2

    const-string v7, " consume:"

    aput-object v7, v9, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v9, v5

    const-string v4, " delete consume:"

    aput-object v4, v9, v8

    const/4 v4, 0x5

    sub-long v7, v12, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v6, v9}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_4
    const-string v5, "UploadTask"

    const-string v6, "thread sleep interrupted"

    .line 168
    invoke-static {v5, v6, v4}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 173
    invoke-static {}, Lcom/alibaba/mtl/log/e/k;->release()V

    throw v2

    :catch_1
    move/from16 v18, v5

    :catch_2
    :goto_7
    invoke-static {}, Lcom/alibaba/mtl/log/e/k;->release()V

    add-int/lit8 v5, v18, 0x1

    move v6, v10

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    :goto_8
    move v2, v4

    .line 126
    sput-boolean v2, Lcom/alibaba/mtl/log/d/b;->E:Z

    goto :goto_b

    :cond_13
    :goto_9
    move v2, v4

    .line 120
    sput-boolean v2, Lcom/alibaba/mtl/log/d/b;->E:Z

    goto :goto_b

    :cond_14
    :goto_a
    move v2, v4

    .line 176
    :goto_b
    sput-boolean v2, Lcom/alibaba/mtl/log/d/b;->E:Z

    .line 177
    invoke-static {}, Lcom/alibaba/mtl/log/e/k;->release()V

    return-void

    :cond_15
    return-void
.end method

.method private a(Ljava/lang/Boolean;J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 237
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    return p1

    .line 239
    :cond_0
    iget v0, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    int-to-float v0, v0

    long-to-float v1, p2

    div-float/2addr v0, v1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const-wide/32 v3, 0xafc8

    cmp-long p1, p2, v3

    if-lez p1, :cond_1

    .line 244
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    return p1

    :cond_1
    const p1, 0x472fc800    # 45000.0f

    mul-float/2addr p1, v0

    float-to-double p1, p1

    .line 247
    iget p3, p0, Lcom/alibaba/mtl/log/d/b;->a:F

    float-to-double v3, p3

    div-double/2addr p1, v3

    sget p3, Lcom/alibaba/mtl/log/d/b;->A:I

    int-to-double v3, p3

    sub-double/2addr p1, v3

    double-to-int p1, p1

    iput p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    goto :goto_0

    .line 250
    :cond_2
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    div-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    .line 251
    sget p1, Lcom/alibaba/mtl/log/d/b;->A:I

    add-int/2addr p1, v2

    sput p1, Lcom/alibaba/mtl/log/d/b;->A:I

    .line 253
    :goto_0
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    const/4 p2, 0x0

    if-ge p1, v2, :cond_3

    .line 254
    iput v2, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    .line 255
    sput p2, Lcom/alibaba/mtl/log/d/b;->A:I

    goto :goto_1

    .line 256
    :cond_3
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    const/16 p3, 0x15e

    if-le p1, p3, :cond_4

    .line 257
    iput p3, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    :cond_4
    :goto_1
    const-string p1, "UploadTask"

    .line 259
    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "winsize:"

    aput-object v0, p3, p2

    iget p2, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget p1, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/e/a$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/mtl/log/e/a$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 215
    invoke-static {v1, p1, p2, v0}, Lcom/alibaba/mtl/log/e/e;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/e/e$a;

    move-result-object p2

    .line 216
    iget-object p2, p2, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    const-string v2, "UploadTask"

    .line 217
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "url:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 221
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 223
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_0

    const-string p2, "UploadTask"

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "result:"

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    invoke-static {p2, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-static {p1}, Lcom/alibaba/mtl/log/e/a;->a(Ljava/lang/String;)Lcom/alibaba/mtl/log/e/a$a;

    move-result-object p1

    return-object p1

    .line 231
    :cond_0
    sget-object p1, Lcom/alibaba/mtl/log/e/a$a;->a:Lcom/alibaba/mtl/log/e/a$a;

    return-object p1
.end method

.method private a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/log/model/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object p1, p1, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/mtl/log/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 267
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 268
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 269
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/log/model/a;

    invoke-direct {p0, v3}, Lcom/alibaba/mtl/log/d/b;->a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    move v4, v1

    .line 271
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 272
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v6, "\n"

    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/log/model/a;

    invoke-virtual {v6}, Lcom/alibaba/mtl/log/model/a;->h()Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 285
    iput v1, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    .line 286
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/mtl/log/d/b;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 288
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget v4, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    goto :goto_3

    .line 291
    :cond_4
    iget v0, p0, Lcom/alibaba/mtl/log/d/b;->C:I

    int-to-float v0, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->a:F

    const-string p1, "UploadTask"

    const/4 v0, 0x2

    .line 292
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "averagePackageSize:"

    aput-object v3, v0, v1

    iget v1, p0, Lcom/alibaba/mtl/log/d/b;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)[B
    .locals 3

    .line 297
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 300
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UTF-8"

    .line 301
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 302
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 308
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 304
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 308
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    :catch_2
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/n;->a([BLjava/lang/String;)[B

    move-result-object p1

    .line 315
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    return-object p1

    :goto_2
    if-eqz v2, :cond_1

    .line 308
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 310
    :catch_4
    :cond_1
    throw p1
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/log/model/a;

    iget-object v2, v2, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "6005"

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private h()I
    .locals 2

    .line 197
    iget v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 199
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    .line 201
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    goto :goto_0

    :cond_0
    const-string v1, "4G"

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    .line 203
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    goto :goto_0

    :cond_1
    const-string v1, "3G"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    .line 205
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 207
    iput v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    .line 210
    :cond_3
    :goto_0
    iget v0, p0, Lcom/alibaba/mtl/log/d/b;->B:I

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/alibaba/mtl/log/d/b;->E:Z

    return v0
.end method


# virtual methods
.method public abstract K()V
.end method

.method public abstract L()V
.end method

.method public run()V
    .locals 0

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/b;->M()V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/mtl/log/d/b;->K()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
