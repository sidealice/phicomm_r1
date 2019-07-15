.class public final Lcom/tencent/bugly/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/s;

.field private final i:Lcom/tencent/bugly/proguard/u;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/t;

.field private final l:Lcom/tencent/bugly/proguard/t;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/t;",
            "ZIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->a:I

    .line 44
    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->b:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    .line 106
    iput-object p1, p0, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 108
    iput-object p4, p0, Lcom/tencent/bugly/proguard/v;->e:[B

    .line 109
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 110
    invoke-static {p1}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    .line 111
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    .line 112
    iput p2, p0, Lcom/tencent/bugly/proguard/v;->j:I

    .line 113
    iput-object p5, p0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    .line 116
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    .line 118
    iput-boolean p8, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    .line 119
    iput p3, p0, Lcom/tencent/bugly/proguard/v;->d:I

    .line 120
    if-lez p9, :cond_0

    .line 121
    iput p9, p0, Lcom/tencent/bugly/proguard/v;->a:I

    .line 123
    :cond_0
    if-lez p10, :cond_1

    .line 124
    iput p10, p0, Lcom/tencent/bugly/proguard/v;->b:I

    .line 127
    :cond_1
    iput-boolean p11, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    .line 128
    iput-object p12, p0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZZ)V
    .locals 13

    .prologue
    .line 85
    const/4 v9, 0x2

    const/16 v10, 0x7530

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V

    .line 87
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 504
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-object p0

    .line 508
    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 170
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    if-eqz p2, :cond_4

    .line 173
    const-string v1, "[Upload] Success: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    :cond_0
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    .line 184
    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->d:I

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->d:I

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    .line 193
    :cond_3
    return-void

    .line 163
    :sswitch_0
    const-string v0, "crash"

    goto :goto_0

    .line 167
    :sswitch_1
    const-string v0, "userinfo"

    goto :goto_0

    .line 175
    :cond_4
    const-string v1, "[Upload] Failed to upload(%d) %s: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const/4 v0, 0x2

    aput-object p4, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/an;)V

    goto :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x276 -> :sswitch_0
        0x280 -> :sswitch_1
        0x33e -> :sswitch_0
        0x348 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/proguard/an;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    if-nez p0, :cond_0

    .line 201
    const-string v0, "resp == null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 245
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/an;->a:B

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "resp result error %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/tencent/bugly/proguard/an;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 207
    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v2, "key_ip"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    .line 215
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v2, "key_imei"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    .line 221
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/an;->e:J

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->i:J

    .line 229
    iget v0, p0, Lcom/tencent/bugly/proguard/an;->b:I

    const/16 v1, 0x1fe

    if-ne v0, v1, :cond_6

    .line 230
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:[B

    if-nez v0, :cond_4

    .line 231
    const-string v0, "[Upload] Strategy data is null. Response cmd: %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 232
    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ap;

    .line 237
    if-nez v0, :cond_5

    .line 238
    const-string v0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 240
    goto/16 :goto_0

    .line 242
    :cond_5
    invoke-virtual {p2, v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/ap;)V

    :cond_6
    move v0, v7

    .line 245
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 495
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    .line 496
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    .line 497
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 500
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    .line 501
    return-void
.end method

.method public final run()V
    .locals 11

    .prologue
    .line 251
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    .line 254
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->e:[B

    .line 257
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 258
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "network is not available"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 262
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "request package is empty!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 265
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide v2

    .line 266
    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v4, v2

    const-wide/32 v6, 0x200000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 268
    const-string v0, "[Upload] Upload too much data, try next time: %d/%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "over net consume: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x800

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "K"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto :goto_0

    .line 275
    :cond_4
    const-string v1, "[Upload] Run upload task with cmd: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    if-nez v1, :cond_6

    .line 279
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "illegal access error"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 283
    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 284
    if-nez v1, :cond_7

    .line 285
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "illegal local strategy"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 289
    :cond_7
    const/4 v3, 0x0

    .line 291
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 292
    const-string v2, "prodId"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "bundleId"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "appVer"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    if-eqz v2, :cond_8

    .line 298
    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 302
    :cond_8
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v2, :cond_b

    .line 304
    const-string v2, "cmd"

    iget v4, p0, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "platformId"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "sdkVer"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "2.6.6"

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "strategylastUpdateTime"

    iget-wide v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v1, v7}, Lcom/tencent/bugly/proguard/u;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "failed to add security info to HTTP headers"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 317
    :cond_9
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->a([BI)[B

    move-result-object v0

    .line 318
    if-nez v0, :cond_a

    .line 319
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "failed to zip request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 323
    :cond_a
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/u;->a([B)[B

    move-result-object v0

    .line 324
    if-nez v0, :cond_b

    .line 325
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "failed to encrypt request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move-object v6, v0

    .line 331
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/bugly/proguard/u;->a(IJ)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v0, p0, Lcom/tencent/bugly/proguard/v;->d:I

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    iget v0, p0, Lcom/tencent/bugly/proguard/v;->d:I

    .line 333
    :cond_d
    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 334
    const/4 v5, -0x1

    .line 335
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v2

    .line 336
    :goto_1
    add-int/lit8 v4, v1, 0x1

    iget v2, p0, Lcom/tencent/bugly/proguard/v;->a:I

    if-ge v1, v2, :cond_23

    .line 337
    const/4 v1, 0x1

    if-le v4, v1, :cond_e

    .line 338
    const-string v1, "[Upload] Failed to upload last time, wait and try(%d) again."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    iget v1, p0, Lcom/tencent/bugly/proguard/v;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/z;->b(J)V

    .line 341
    iget v1, p0, Lcom/tencent/bugly/proguard/v;->a:I

    if-ne v4, v1, :cond_e

    .line 342
    const-string v0, "[Upload] Use the back-up url at the last time: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    .line 349
    :cond_e
    const-string v1, "[Upload] Send %d bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 350
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v1, :cond_24

    .line 351
    invoke-static {v0}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 353
    :goto_2
    const-string v0, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    iget v8, p0, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v0, v2, v6, p0, v7}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B

    move-result-object v1

    .line 356
    if-nez v1, :cond_f

    .line 357
    const-string v0, "Failed to upload for no response!"

    const-string v1, "[Upload] Failed to upload(%d): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    const/4 v3, 0x1

    move v1, v4

    move-object v0, v2

    .line 360
    goto/16 :goto_1

    .line 363
    :cond_f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 364
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_19

    .line 365
    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const-string v0, "[Upload] Headers is empty."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_16

    .line 366
    const-string v0, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    const-string v0, "[Upload] Failed to upload for no status header."

    const-string v1, "[Upload] Failed to upload(%d): %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v1, v8}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 371
    if-eqz v3, :cond_15

    .line 372
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 373
    const-string v3, "[key]: %s, [value]: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 365
    :cond_11
    const-string v0, "status"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "[Upload] Headers does not contain %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "status"

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_3

    :cond_12
    const-string v0, "Bugly-Version"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "[Upload] Headers does not contain %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Bugly-Version"

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_13
    const-string v0, "Bugly-Version"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "bugly"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "[Upload] Bugly version is not valid: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_14
    const-string v8, "[Upload] Bugly version from headers is: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto/16 :goto_3

    .line 377
    :cond_15
    const-string v0, "[Upload] Failed to upload for no status header."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    const/4 v3, 0x1

    move v1, v4

    move-object v0, v2

    .line 379
    goto/16 :goto_1

    .line 383
    :cond_16
    :try_start_2
    const-string v0, "status"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 385
    const-string v0, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 397
    if-eqz v5, :cond_19

    .line 399
    const/4 v0, 0x2

    if-ne v5, v0, :cond_18

    .line 401
    :try_start_3
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 402
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    .line 404
    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    .line 407
    :cond_17
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/an;)V

    .line 409
    const-string v0, "[Upload] Session ID is invalid, will try again immediately (pid=%d | tid=%d)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->j:I

    iget v2, p0, Lcom/tencent/bugly/proguard/v;->d:I

    iget-object v3, p0, Lcom/tencent/bugly/proguard/v;->e:[B

    iget-object v4, p0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v7, p0, Lcom/tencent/bugly/proguard/v;->a:I

    iget v8, p0, Lcom/tencent/bugly/proguard/v;->b:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/u;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;IIZLjava/util/Map;)V

    goto/16 :goto_0

    .line 390
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Upload] Failed to upload(%d): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 393
    const/4 v3, 0x1

    move v1, v4

    move-object v0, v2

    .line 394
    goto/16 :goto_1

    .line 416
    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "status of server is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 425
    :cond_19
    const-string v0, "[Upload] Received %d bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 427
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_1d

    .line 428
    array-length v0, v1

    if-nez v0, :cond_1b

    .line 430
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    const-string v2, "[Upload] HTTP headers from server: key = %s, value = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    .line 434
    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "response data from server is empty"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 440
    :cond_1b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->b([B)[B

    move-result-object v0

    .line 441
    if-nez v0, :cond_1c

    .line 442
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "failed to decrypt response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 448
    :cond_1c
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b([BI)[B

    move-result-object v0

    .line 449
    if-nez v0, :cond_1e

    .line 450
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "failed unzip(Gzip) response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1d
    move-object v0, v1

    .line 457
    :cond_1e
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BZ)Lcom/tencent/bugly/proguard/an;

    move-result-object v1

    .line 460
    if-nez v1, :cond_1f

    .line 461
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "failed to decode response package"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 467
    :cond_1f
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_20

    .line 469
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/an;)V

    .line 472
    :cond_20
    const-string v2, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, v1, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, v1, Lcom/tencent/bugly/proguard/an;->c:[B

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 476
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "failed to process response package"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 472
    :cond_21
    iget-object v0, v1, Lcom/tencent/bugly/proguard/an;->c:[B

    array-length v0, v0

    goto :goto_6

    .line 482
    :cond_22
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "successfully uploaded"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 486
    :cond_23
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "failed after many attempts"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_24
    move-object v2, v0

    goto/16 :goto_2
.end method
