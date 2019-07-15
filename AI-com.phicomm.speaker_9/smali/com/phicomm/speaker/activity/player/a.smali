.class public Lcom/phicomm/speaker/activity/player/a;
.super Ljava/lang/Object;
.source "LyricsScrollThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:[J

.field private j:Ljava/lang/Thread;


# direct methods
.method public constructor <init>([J)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->a:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->b:I

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->c:I

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->d:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/phicomm/speaker/activity/player/a;->e:I

    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    if-eqz p1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 60
    :cond_0
    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    .line 61
    iput v1, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    return-void
.end method

.method private a([JIIJ)I
    .locals 10

    if-gt p2, p3, :cond_3

    add-int v0, p2, p3

    .line 75
    div-int/lit8 v0, v0, 0x2

    .line 76
    aget-wide v1, p1, v0

    cmp-long v3, p4, v1

    if-ltz v3, :cond_2

    if-ge v0, p3, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 79
    aget-wide v1, p1, v6

    cmp-long p2, p4, v1

    if-gez p2, :cond_0

    return v0

    :cond_0
    move-object v4, p0

    move-object v5, p1

    move v7, p3

    move-wide v8, p4

    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/phicomm/speaker/activity/player/a;->a([JIIJ)I

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/activity/player/a;->a([JIIJ)I

    move-result p1

    return p1

    .line 91
    :cond_3
    aget-wide v0, p1, p2

    cmp-long p1, p4, v0

    if-ltz p1, :cond_4

    return p2

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private a(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    return-void
.end method

.method private c()Z
    .locals 2

    .line 104
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private d()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 2

    .line 122
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 2

    .line 131
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 3

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/u;

    iget v2, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/u;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 202
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/a;->a(I)V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 11

    .line 223
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v2, :cond_1

    .line 228
    iput v4, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    .line 229
    iput-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    goto :goto_0

    .line 231
    :cond_1
    iget-object v6, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    move-object v5, p0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/phicomm/speaker/activity/player/a;->a([JIIJ)I

    move-result p1

    if-eq v4, p1, :cond_2

    .line 233
    iput p1, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    .line 236
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/activity/player/a;->a(I)V

    .line 237
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void
.end method

.method public b(J)V
    .locals 10

    .line 249
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 254
    iput v3, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    .line 255
    iput-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    goto :goto_0

    .line 257
    :cond_1
    iget-object v5, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v2, v2

    add-int/lit8 v7, v2, -0x1

    move-object v4, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/phicomm/speaker/activity/player/a;->a([JIIJ)I

    move-result v2

    if-eq v3, v2, :cond_3

    .line 259
    iput v2, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    .line 260
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    add-int/lit8 v2, v2, 0x1

    aget-wide v1, v0, v2

    sub-long v3, v1, p1

    iput-wide v3, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    goto :goto_0

    .line 263
    :cond_2
    iput-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 267
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/a;->a(I)V

    .line 268
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    if-eqz p1, :cond_4

    .line 269
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->j:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    if-eqz v0, :cond_b

    .line 147
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v0, v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 148
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->g()V

    .line 151
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->g()V

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    :cond_3
    :try_start_1
    iget-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 162
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    iput-wide v4, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    goto :goto_0

    .line 164
    :cond_4
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    iget v1, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, v0, v1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    iget v1, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    aget-wide v6, v0, v1

    sub-long v0, v4, v6

    iput-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    .line 168
    :cond_5
    :goto_0
    iget-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    .line 169
    iget-wide v0, p0, Lcom/phicomm/speaker/activity/player/a;->h:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    const/4 v0, 0x3

    .line 171
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/a;->a(I)V

    .line 172
    iput-wide v2, p0, Lcom/phicomm/speaker/activity/player/a;->h:J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :cond_7
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    iget v0, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/activity/player/a;->g:I

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/a;->i:[J

    array-length v1, v1

    if-ne v0, v1, :cond_8

    goto :goto_1

    .line 181
    :cond_8
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->g()V

    .line 183
    :cond_9
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    :goto_1
    const/4 v0, 0x4

    .line 187
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/a;->a(I)V

    :cond_b
    return-void
.end method
